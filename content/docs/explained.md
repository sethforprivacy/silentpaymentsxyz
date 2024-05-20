---
title: Silent Payments, Explained
summary: Silent Payments bring better UX and privacy to Bitcoin, but how do they work?
weight: 1
next: /docs/wallets
prev: /docs
---

In March of 2022 Ruben Somsen proposed “[Silent Payments](https://gist.github.com/RubenSomsen/c43b79517e7cb701ebf77eec6dbb46b8),” a new approach to reusable payment codes that removes the need for a notification transaction (the major drawback of [BIP 47 payment codes](/docs/comparing-proposals/bip47)) by entirely leveraging information that was already in the transaction to signal to the recipient when funds are intended for them. Silent Payments makes use of advances in Bitcoin scanning to remove the need for a notification transaction, thereby improving scaling and privacy associated with reusable payment codes (with a key trade-off we’ll address later).

### How they work

When Alice goes to send funds to Bob, she takes three keys and creates a unique one-time address that only Bob controls the keys to. These three keys are the (1) public key of the output(s) Alice wants to send to Bob, (2) Bob’s public key in his reusable payment code, and (3) a shared secret (generated using the Silent Payment public key and the user's UTXO private key using [ECDH](https://en.wikipedia.org/wiki/Elliptic-curve_Diffie%E2%80%93Hellman)) that only Alice and Bob can know. These three keys combine into a unique one-time Taproot address that Bob can then validate and spend from, allowing Alice to generate practically infinite addresses without any communication with Bob. The resulting unique, one-time Taproot address makes the payment appear exactly like any other Taproot payment on-chain, thereby preventing an outside observer from even knowing Silent Payments were used at all, much less link payments to a specific Silent Payment address.

When Bob wants to check for received funds, he looks on chain for a potential Silent Payments transaction, builds an aggregated key of all its inputs, and combines it with the private scanning key of his payment code. If the combination matches an output of that transaction, he can spend it. If not, he can ignore that transaction and move on to the next, until he has scanned the entire set of potential Silent Payment UTXOs.

![An example testnet Silent Payment transaction. Note that it looks like any other standard Taproot transaction](spexample.png)

What a Silent Payment address looks like off-chain:

`sp1qqweplq6ylpfrzuq6hfznzmv28djsraupudz0s0dclyt8erh70pgwxqkz2ydatksrdzf770umsntsmcjp4kcz7jqu03jeszh0gdmpjzmrf5u4zh0c`

What a Silent Payment address looks like on-chain (i.e. any Taproot address):

`bc1pftjlgdq0ufhq7qwd0atxhrjhlnpmc8v4x50tgytygzk5rz339u6qngunq4`

{{< callout type="info" >}}
  Note that the addresses above are real-world examples, with the Taproot address actually being used in a payment to the above Silent Payment address.

  Every payment to the above Silent Payment address would look like a new, entirely disconnected Taproot address to outside observers!
{{< /callout >}}

### Tradeoffs

Because Bob cannot pre-generate addresses with silent payments, he needs to keep checking to find new payments from the point he generated the payment code. Because this scanning is relatively costly, Silent Payments require more compute and bandwidth when scanning than a standard Electrum-style server. The average Bitcoin wallet today will have to connect to a new type of server that serves the necessary "tweak" data for a wallet to check each potential transaction for themselves.

The key difference with Silent Payment scanning is that instead of pre-generating a large amount of addresses up front like with a standard BIP 32 light client, Silent Payments requires the wallet to download 33 bytes of data per potential output and then perform an ECDH calculation to check if it is owned by the user. The major benefit to this approach is that it provides excellent privacy (even for light wallets) as the wallet back-end does not know what outputs belong to any light client.

Even though this may sound like a major hit to user experience, thankfully we can already drastically improve sync performance by ruling out potential outputs like:

1. Non-Taproot outputs
2. Taproot dust outputs <=1000sats (~85% of Taproot outputs right now)
3. All potential Silent Payments outputs spent since you last scanned

Additionally, there are many brilliant people working on reducing the impact of this tradeoff through things like transaction cut-through, [Silent Payments-specific indexes in Bitcoin Core](https://github.com/bitcoin/bitcoin/pull/28241#), and much more.

## Further reading

Want to do a deeper dive into Silent Payments? Read on below for more resources:

- [Silent Payments Bitcoin Improvement Proposal - 352](https://github.com/bitcoin/bips/blob/master/bip-0352.mediawiki)
- ["Silent Payments Make Bitcoin More Privacy" - Bitcoin Magazine](https://bitcoinmagazine.com/technical/silent-payments-make-bitcoin-more-private)
- [Bitcoin, Explained Ep. 58 - Silent Payments](https://www.youtube.com/watch?v=42PMLaz7Avk&t=20s)
- ["Making sense of stealth addresses" - Foundation.xyz](https://foundation.xyz/2023/02/making-sense-of-stealth-addresses/)
- [Silent Payments - Bitcoin Optech](https://bitcoinops.org/en/topics/silent-payments/)
- ["Silent Payments: What Are They & How Do They Work?" - Athena Alpha](https://www.athena-alpha.com/silent-payments/)
