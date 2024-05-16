---
title: Silent Payments, Explained
weight: 1
next: /docs/walletsupport
prev: /docs
---

## Why do we need reusable payment codes?

If you’ve ever had to receive Bitcoin multiple times from the same person before, you’ll know that there is a seemingly simple choice to make – do you generate a new address for them each time (and communicate it somehow), or do you tell them to re-use the same address? If you choose to generate a new address each time, you have to actively communicate somehow, send them the address, and hope they copy and paste it correctly each time. If you instead choose for them to reuse a single address, you harm the privacy of both participants in order to simplify repeat payments.

For a real-world example, consider the case of wanting to accept donations as a political dissident. If you choose to post a single static Bitcoin address, you put every donor (and yourself) at risk of trivial surveillance in order to simplify the process for you and your donors. If you choose to generate a new address for each donor, you have to run extra infrastructure like BTCPay Server or SatSale, increasing the difficulty exponentially and requiring some technical know-how. We’ve even seen a recent example of this in donations raised by Russian opposition leader Alexey Navalny, easily visible to anyone with a blockchain explorer and actively surveilled by the Russian pro-Putin government.

The dilemma in both of these simple cases is exactly what reusable payment codes seek to solve, allowing you to provide a single static string of characters (a “code”) that can be reused as many times as necessary – even by multiple senders – without sacrificing privacy or requiring online communication with the recipient. Silent Payments were created to solve this dilemma in a modern, efficient way.

## Enter Silent Payments

In March of 2022 Ruben Somsen proposed “[Silent Payments](https://gist.github.com/RubenSomsen/c43b79517e7cb701ebf77eec6dbb46b8),” a new approach to reusable payment codes that removes the need for a notification transaction (the major drawback of BIP 47 payment codes) entirely by leveraging the outputs in a transaction to signal to the recipient when funds are intended for them. Silent Payments makes use of advances in Bitcoin scanning to remove the need for a notification transaction, thereby improving scaling and privacy associated with reusable payment codes (with a key trade-off we’ll address later).

What a Silent Payment address looks like:

`sp1qqweplq6ylpfrzuq6hfznzmv28djsraupudz0s0dclyt8erh70pgwxqkz2ydatksrdzf770umsntsmcjp4kcz7jqu03jeszh0gdmpjzmrf5u4zh0c`

### How they work

When Alice goes to send funds to Bob, she takes three keys and creates a unique one-time address that only Bob controls the keys to. These three keys are the (1) public key of the output(s) Alice wants to send to Bob, (2) Bob’s public key in his reusable payment code, and (3) a shared secret (generated using the same cryptography as stealth addresses and BIP 47, [“ECDH“](https://en.wikipedia.org/wiki/Elliptic-curve_Diffie%E2%80%93Hellman)) that only Alice and Bob know. These three keys combine into a unique one-time address that Bob can then validate and spend from, allowing Alice to generate practically infinite addresses without any communication with Bob. This payment appears exactly like any other payment using the same script type (i.e. Taproot), thereby preventing an outside observer from even knowing Silent Payments were used at all, much less link payments to a Silent Payment address together.

When Bob wants to check for received funds, he takes (1) the private key from his payment code and (2) the aggregated key across the inputs of every transaction on-chain and checks to see if the combination matches an output in a transaction. If it matches, that output is owned by his private key and he can spend it at will, and if it doesn’t match he simply ignores that transaction and continues scanning. This process of checking every input in transactions is relatively costly and requires a full node, but does preserve privacy and remove the need for problematic notification transactions entirely.

![An example testnet Silent Payment transaction. Note that it looks like any other standard Taproot transaction](spexample.png)

### Tradeoffs

Because with Silent Payments Bob must scan all transactions on the blockchain from the point that he generated the payment code, it brings us to the significant tradeoff of Silent Payments: because this scanning is relatively costly and can only be performed with a full Bitcoin node, Silent Payments necessarily do not work on light wallets, complicating their usage in practice. The average Bitcoin wallet today will have to connect to a new type of server that serves the necessary data for a wallet to check each and every potential transaction for themselves.

Thankfully, there are many brilliant people working on reducing the impact of this tradeoff through things like transaction cut through, Silent Payments-specific indexes in Bitcoin Core, and much more.

## Further reading

Want to do a deeper dive into Silent Payments? Read on below for more resources:

- [Silent Payments Bitcoin Improvement Proposal - 352](https://github.com/bitcoin/bips/blob/master/bip-0352.mediawiki)
- ["Silent Payments Make Bitcoin More Privacy" - Bitcoin Magazine](https://bitcoinmagazine.com/technical/silent-payments-make-bitcoin-more-private)
- [Bitcoin, Explained Ep. 58 - Silent Payments](https://www.youtube.com/watch?v=42PMLaz7Avk&t=20s)
- ["Making sense of stealth addresses" - Foundation.xyz](https://foundation.xyz/2023/02/making-sense-of-stealth-addresses/)
