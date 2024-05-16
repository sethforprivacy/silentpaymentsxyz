---
linkTitle: "Documentation"
title: Silent Payments tl;dr
---

Silent Payments allow you to create a single, static address to share with friends, use for donations, or post for tips *without sacrificing privacy*. When someone wants to send you a payment, they use the unique public key that is a part of your Silent Payment address, combine it with the public keys of the outputs they want to send and generate a unique, one-time address that looks on-chain just like any other Taproot address. The main advantages of Silent Payments are:

- {{< icon "check" >}} Simpler user experience: users just need to worry about a single, static address instead of the hurdles of generating new addresses for every receive.
- {{< icon "check" >}} Better receiver privacy: address re-use with Silent Payments is impossible, as no two senders can generate the same on-chain address.
- {{< icon "check" >}} Better sender privacy: receivers have no way of connecting sends from the same receiver together, providing better privacy for even the sender.
- {{< icon "check" >}} No server required: anyone with a wallet supporting Silent Payments can receive funds without address reuse, without communication, and without running complex infrastructure.

## Why do we need reusable payment codes?

If you’ve ever had to receive Bitcoin multiple times from the same person before, you’ll know that there is a seemingly simple choice to make – do you generate a new address for them each time (and communicate it somehow), or do you tell them to re-use the same address? If you choose to generate a new address each time, you have to actively communicate somehow, send them the address, and hope they copy and paste it correctly each time. If you instead choose for them to reuse a single address, you harm the privacy of both participants in order to simplify repeat payments.

For a real-world example, consider the case of wanting to accept donations as a political dissident. If you choose to post a single static Bitcoin address, you put every donor (and yourself) at risk of trivial surveillance in order to simplify the process for you and your donors. If you choose to generate a new address for each donor, you have to run extra infrastructure like BTCPay Server or SatSale, increasing the difficulty exponentially and requiring some technical know-how. We’ve even seen a recent example of this in donations raised by Russian opposition leader Alexey Navalny, easily visible to anyone with a blockchain explorer and actively surveilled by the Russian pro-Putin government.

The dilemma in both of these simple cases is exactly what reusable payment codes seek to solve, allowing you to provide a single static string of characters (a “code”) that can be reused as many times as necessary – even by multiple senders – without sacrificing privacy or requiring online communication with the recipient. Silent Payments were created to solve this dilemma in a modern, efficient way bringing a better, more familiar user experience *and* better privacy in one solution -- a rare combination.

<!--more-->

## Questions or Feedback?

{{< callout emoji="❓" >}}
  This website is a labor of love, done in my spare time.
  Have a question or feedback? Feel free to [open an issue](https://github.com/sethforprivacy/silentpaymentsxyz/issues)!
{{< /callout >}}

## Next

Dive right into the following section to get started:

{{< cards >}}
  {{< card link="explained" title="Silent Payments, Explained" icon="document-text" subtitle="Learn more about why we need Silent Payments and how they work." >}}
{{< /cards >}}

[hugo]: https://gohugo.io/
[flex-search]: https://github.com/nextapps-de/flexsearch
[tailwind-css]: https://tailwindcss.com/