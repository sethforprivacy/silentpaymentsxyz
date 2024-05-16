---
title: Silent Payments Wallet Support
weight: 2
next: /docs/developers
prev: /docs/explained
---

One of the hardest things to keep up with in the Bitcoin space is keeping up with what wallets have deployed new features, what specific aspects have been deployed, and much more.

I'll do my best to keep this page up to date, but if you see something that needs to be updated please submit a PR (use that "Edit this page on Github" button ->) or [open an issue](https://github.com/sethforprivacy/silentpaymentsxyz/issues).

| Wallet                                 | Github                                                            | Sending                     | Receiving                   | Privacy-preserving scanning[^1] |
|----------------------------------------|-------------------------------------------------------------------|-----------------------------|-----------------------------|-----------------------------|
| [Cake Wallet](https://cakewallet.com)  | [cake-tech/cake_wallet](https://github.com/cake-tech/cake_wallet) | {{< icon "badge-check" >}} | {{< icon "badge-check" >}} | {{< icon "badge-check" >}} |
| [Silentium](https://app.silentium.dev) | [louisinger/silentium](https://github.com/louisinger/silentium)   | {{< icon "badge-check" >}} | {{< icon "badge-check" >}} | {{< icon "badge-check" >}} |

[^1]: "Privacy preserving scanning" here denotes an architecture where no output information is revealed to the back-end server. While this is the only possible back-end approach for now, it's very likely we will see future approaches that give the view key over to a back-end server to allow background sync, while sacrificing privacy of Silent Payments outputs to that third-party server. This field is a way that we can denote that in the future as-necessary.