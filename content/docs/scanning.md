---
title: How Silent Payment Wallets Scan
linkTitle: How Wallets Scan
summary: Silent Payment wallets can find your payments in a few very different ways, and each one comes with its own privacy trade-offs.
weight: 3
prev: /docs/wallets
next: /docs/developers
---

The one real trade-off with Silent Payments is scanning. Because nobody hands you an address list to watch, your wallet has to go looking for payments itself by checking transactions on-chain (see [the trade-offs section](/docs/explained#trade-offs) for why).

Today there are three main ways wallets handle this, and they have *very* different privacy properties. Which one your wallet uses matters just as much as whether it supports Silent Payments at all, so it's worth understanding before you pick a wallet.

## The short version

| Approach | Example wallets | What the server learns about your payments | Sync speed |
| -------- | --------------- | ------------------------------------------ | :--------: |
| Your own node | Bitcoin Core (in progress), or any wallet pointed at a server you run yourself | Nothing, it's your server | Depends on your hardware |
| Tweak server | Cake Wallet, Dana Wallet, BlindBit Desktop | Nothing about which payments are yours | Slowest |
| Remote scanning server (scan key) | Sparrow Wallet with Frigate | Every payment you receive, much like an Electrum server does today | Fastest |

Everything on this page is about what a *server* can learn. No matter which approach your wallet uses, Silent Payments still look like any other Taproot transaction on-chain, and outside observers can't link your payments to your address or to each other.

## Scanning with your own node

The gold standard is the same as it is for all of Bitcoin: run your own node and scan locally. Your node already has every transaction, so it can do the math for each one without asking anyone for anything, and nobody else learns a thing.

Thankfully this is getting much easier. A Silent Payments module [shipped in libsecp256k1](https://github.com/bitcoin-core/secp256k1/pull/1765) in 2026 and the core BIP352 code has been merged into Bitcoin Core, with [sending and receiving still being worked on](https://github.com/bitcoin/bitcoin/issues/28536).

## Tweak servers

Most privacy-focused light wallets today use a **tweak server** (like [BlindBit Oracle](https://github.com/setavenger/blindbit-oracle) or Cake's fork of electrs). The server does the expensive part of the work that doesn't require your keys, boiling each eligible transaction down to a single 33-byte "tweak," and hands that exact same data to anyone who asks for it. Your wallet downloads those tweaks, combines them with your scan key *on your device*, and checks for matches.

The server never sees your keys and serves identical data to everyone, so it has no idea which payments are yours. That's the magic of this approach: you get private receiving even on a light wallet, which is something traditional Bitcoin light wallets have never been able to offer.

The downside is bandwidth and time, since your phone has to crunch through every eligible transaction since your wallet was created. Thankfully cut-through and dust filtering do a lot of the heavy lifting here: with both enabled (and the common 1,000 sat dust limit), a full restore all the way back to Taproot activation needs [under 0.5 GB of data](https://delvingbitcoin.org/t/silent-payments-light-client-protocol/891/17) instead of ~15 GB. Still, that's a lot more than a normal Electrum wallet downloads, and it can take a while on a phone. Tweak servers also can't tell you that a payment is sitting in the mempool, so you'll only see payments once they're confirmed.

A tweak server still sees your IP address and when you sync, just like any other server, so using Tor is a nice extra layer if your wallet supports it.

## Remote scanning servers

The newest approach flips this around: instead of downloading data and scanning yourself, your wallet sends your **scan private key** (plus your spend *public* key) to a server that does all of the scanning for you. [Frigate](https://github.com/sparrowwallet/frigate), built by Craig Raw of Sparrow Wallet, is the main implementation today, and it's what Sparrow uses to receive Silent Payments.

This makes a huge difference to user experience. Frigate scans on the server with optional GPU acceleration, getting through a full year of transactions in a few minutes on a regular CPU and in [a few seconds on a modern GPU](https://github.com/sparrowwallet/frigate#performance). Your wallet only downloads the transactions that are actually yours, restores feel like a normal Electrum wallet, and you can see incoming payments while they're still in the mempool.

That speed does come with a trade-off, so it's worth being clear about exactly who learns what:

- **Outside observers still learn nothing.** Your Silent Payment address can be posted publicly without anyone on-chain being able to link payments to it or to each other. That's the biggest privacy win of Silent Payments, and remote scanning keeps it fully intact.
- **The server can't steal your funds.** Spending requires your spend *private* key, which never leaves your wallet.
- **The server operator can see every payment you receive.** It knows which transactions are yours, how much you received, and when. Because it knows which outputs are yours, it can also see when you spend them.
- **Your scan key works forever.** A public Electrum server learns the addresses you ask about, but a copy of your scan key can find *every* past and future payment to your Silent Payment address, including payments to labeled addresses. Frigate only holds keys in memory for your session and doesn't store them, but that's a promise you can't verify from the outside when using someone else's server.
- **Leaving doesn't undo it.** If you stop using a public server and want your future payments to stay private from it, the only fix is moving to a new Silent Payment address.

Even with those caveats, using a remote scanning server is still a big net positive. If you use a light wallet today, you're almost certainly already trusting an Electrum server with every address and transaction in your wallet, and a Frigate server learns [about the same](https://github.com/silent-payments/BIP0352-index-server-specification#hosted-services) about your Silent Payments. The difference is everyone else: with a reused static address, the whole world can watch every payment you receive, while with Silent Payments and Frigate, only the one server you chose to trust can. That's a massive privacy upgrade for a trade-off most people are already making.

Where it matters most is when *who* pays you is truly sensitive. If you're posting a donation address as a dissident or activist, you probably don't want even one server operator to be able to see your donors, so keep your scan key to yourself by running your own server or using a wallet that scans with a tweak server.

{{< callout type="warning" >}}
  Treat your scan private key like an xpub: it can't spend your funds, but anyone who has it can see every payment you ever receive to your Silent Payment address. Only share it with a server you trust, ideally one you run yourself.
{{< /callout >}}

## Running your own

The good news is that the privacy trade-off with remote scanning mostly disappears when you run the server yourself, since the only party learning about your payments is you. You keep the fast syncing and mempool notifications, without the third party.

To run Frigate you'll need:

- Bitcoin Core 28 or newer with `txindex=1`
- An Electrum server (Fulcrum, electrs, or ElectrumX) on the same machine, as Frigate passes all non-Silent Payments requests through to it
- ~18 GB of disk for Frigate's index, on top of your node
- 16 GB of RAM is comfortable (8 GB works with some tuning), and a GPU is optional for a personal server

Once it's done syncing, point Sparrow at your own server instead of a public one and you're off to the races. If you prefer Docker, I maintain [a simple Docker image for Frigate](https://github.com/sethforprivacy/frigate-docker), and the [Frigate README](https://github.com/sparrowwallet/frigate#deployment) covers everything else. Tweak servers like BlindBit Oracle are open source and can be self-hosted as well, if your wallet lets you pick its server.

## Which should you use?

My take is pretty simple:

1. If you can, run your own node or your own Frigate server. You get the best of every world.
2. If you can't, a wallet that uses a tweak server keeps your receiving private, at the cost of slower syncing.
3. A public Frigate server is a great option for everyday use, and still a huge privacy upgrade over reusing an address. It's the same kind of trust you'd give any public Electrum server. For anything where who's paying you really matters, stick to options 1 or 2.

For the developers out there, you can find the current list of scanning back-ends on the [developers page](/docs/developers#scanning-back-ends).
