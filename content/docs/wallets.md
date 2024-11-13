---
title: Silent Payments Wallet Support
summary: Keep up to date with wallet support for Silent Payments across the Bitcoin ecosystem
weight: 2
next: /docs/developers
prev: /docs/explained
---

One of the hardest things to keep up with in the Bitcoin space is keeping up with what wallets have deployed new features, what specific aspects have been deployed, and much more.

I'll do my best to keep this page up to date, but if you see something that needs to be updated please submit a PR (use that "Edit this page on Github" button ->) or [open an issue](https://github.com/sethforprivacy/silentpaymentsxyz/issues).

{{< callout type="warning" >}}
  As Silent Payments are so new, please be cautious when testing new wallets with real funds!
{{< /callout >}}

| Wallet                                     | Github                                                            | Sending                    | Receiving                  | Privacy-preserving scanning[^1] |
| ------------------------------------------ | ----------------------------------------------------------------- | -------------------------- | -------------------------- | ------------------------------- |
| [Cake Wallet](https://cakewallet.com)[^2]  | [cake-tech/cake_wallet](https://github.com/cake-tech/cake_wallet) | {{< icon "check-green" >}} | {{< icon "check-green" >}} | {{< icon "check-green" >}}      |
| [BlueWallet](https://bluewallet.io/)       | [bluewallet/bluewallet](https://github.com/bluewallet/bluewallet) | {{< icon "check-green" >}} | {{< icon "x-red" >}}       | {{< icon "x-red" >}}            |
| [Silentium](https://app.silentium.dev)[^2] | [louisinger/silentium](https://github.com/louisinger/silentium)   | {{< icon "check-green" >}} | {{< icon "check-green" >}} | {{< icon "check-green" >}}      |
| [Dana Wallet](https://silentpayments.dev)  | [cygnet3/danawallet](https://github.com/cygnet3/danawallet)       | {{< icon "check-green" >}} | {{< icon "check-green" >}} | {{< icon "check-green" >}}      |
| [BitBox](https://bitbox.swiss/) | [BitBoxSwiss/bitbox-wallet-app](https://github.com/BitBoxSwiss/bitbox-wallet-app) | {{< icon "check-green" >}} | {{< icon "x-red" >}} | {{< icon "x-red" >}} |
| [Shakesco Wallet](https://shakesco.com)  | [shakesco/silent](https://github.com/shakesco/shakesco-silent)       | {{< icon "check-green" >}} | {{< icon "check-green" >}} | {{< icon "check-green" >}}      |

[^1]: "Privacy preserving scanning" here denotes an architecture where no output information is revealed to the back-end server. While this is the only possible back-end approach for now, it's very likely we will see future approaches that give the view key over to a back-end server to allow background sync, while sacrificing privacy of Silent Payments outputs to that third-party server. This field is a way that we can denote that in the future as-necessary.
[^2]: Silentium is a proof-of-concept and should be used with caution! From the developer:
    > This is an experimental project acting as a proof of concept for Silent Payments light wallets. Use at your own risk.
