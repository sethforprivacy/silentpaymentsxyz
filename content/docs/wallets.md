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

| Wallet                                 | Github                                                            | Sending                     | Receiving                   | Privacy-preserving scanning[^1] |
|----------------------------------------|-------------------------------------------------------------------|-----------------------------|-----------------------------|-----------------------------|
| [Cake Wallet](https://cakewallet.com)[^2]  | [cake-tech/cake_wallet](https://github.com/cake-tech/cake_wallet) | {{< icon "badge-check" >}} | {{< icon "badge-check" >}} | {{< icon "badge-check" >}} |
| [Silentium](https://app.silentium.dev)[^3] | [louisinger/silentium](https://github.com/louisinger/silentium)   | {{< icon "badge-check" >}} | {{< icon "badge-check" >}} | {{< icon "badge-check" >}} |

[^1]: "Privacy preserving scanning" here denotes an architecture where no output information is revealed to the back-end server. While this is the only possible back-end approach for now, it's very likely we will see future approaches that give the view key over to a back-end server to allow background sync, while sacrificing privacy of Silent Payments outputs to that third-party server. This field is a way that we can denote that in the future as-necessary.
[^2]: Cake Wallet's Silent Payment support is currently in open beta on all platforms.
[^3]: Silentium is a proof-of-concept and should be used with caution! From the developer:
    > This is an experimental project acting as a proof of concept for Silent Payments light wallets. Use at your own risk.
