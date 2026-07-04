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

## Wallets

Bitcoin wallets with Silent Payments support, grouped by what you can do today: **send & receive**, **send-only**, and **in progress** where support is still landing.

### Send & receive

| Wallet | Source | Sending | Receiving | Privacy-preserving scanning[^1] | BIP375[^3] | BIP376[^4] |
| ------ | ------ | :-----: | :-------: | :-----------------------------: | :--------: | :--------: |
| [BlindBit Desktop](https://github.com/setavenger/blindbit-desktop/releases) | [setavenger/blindbit-desktop](https://github.com/setavenger/blindbit-desktop/) | {{< icon "check-green" >}} | {{< icon "check-green" >}} | {{< icon "check-green" >}} | - | - |
| [Cake Wallet](https://cakewallet.com) | [cake-tech/cake_wallet](https://github.com/cake-tech/cake_wallet) | {{< icon "check-green" >}} | {{< icon "check-green" >}} | {{< icon "check-green" >}} | - | - |
| [Dana Wallet](https://danawallet.app) | [cygnet3/dana](https://github.com/cygnet3/dana) | {{< icon "check-green" >}} | {{< icon "check-green" >}} | {{< icon "check-green" >}} | {{< icon "wip" >}} | {{< icon "wip" >}} |
| [Sparrow Wallet](https://sparrowwallet.com/) | [sparrowwallet/sparrow](https://github.com/sparrowwallet/sparrow) | {{< icon "check-green" >}} | {{< icon "check-green" >}} | - | {{< icon "check-green" >}} | {{< icon "check-green" >}} |

### Send-only

| Wallet | Source | Sending | Receiving | Privacy-preserving scanning | BIP375 | BIP376 |
| ------ | ------ | :-----: | :-------: | :-----------------------------: | :--------: | :--------: |
| [BitBox](https://bitbox.swiss/) | [BitBoxSwiss/bitbox-wallet-app](https://github.com/BitBoxSwiss/bitbox-wallet-app) | {{< icon "check-green" >}} | {{< icon "x-red" >}} | - | - | - |
| [BlueWallet](https://bluewallet.io/) | [bluewallet/bluewallet](https://github.com/bluewallet/bluewallet) | {{< icon "check-green" >}} | {{< icon "wip" >}} | - | - | - |
| [Nunchuk Wallet](https://nunchuk.io) | [nunchuk-io](https://github.com/nunchuk-io) | {{< icon "check-green" >}} | {{< icon "x-red" >}} | - | - | - |
| [Wasabi Wallet](https://wasabiwallet.io/) | [WalletWasabi/WalletWasabi](https://github.com/WalletWasabi/WalletWasabi) | {{< icon "check-green" >}} | {{< icon "x-red" >}} | - | - | - |

### In progress

| Wallet | Source | Sending | Receiving | Privacy-preserving scanning | BIP375 | BIP376 |
| ------ | ------ | :-----: | :-------: | :-----------------------------: | :--------: | :--------: |
| [Bitcoin Core](https://bitcoin.org/en/bitcoin-core/) | [bitcoin/bitcoin](https://github.com/bitcoin/bitcoin/pull/32966) | {{< icon "wip" >}} | {{< icon "wip" >}} | {{< icon "check-green" >}} | - | - |
| [Unchained](https://www.unchained.com/) | [caravan-bitcoin/caravan](https://github.com/caravan-bitcoin/caravan/pull/496) | {{< icon "wip" >}} | {{< icon "x-red" >}} | - | {{< icon "wip" >}} | - |

## Hardware signers

Signing devices for Silent Payment transactions (BIP375 to send, BIP376 to spend). They don't scan or hold funds themselves, so pair them with a software wallet above.

| Wallet | Source | Sending | BIP375 | BIP376 |
| ------ | ------ | :-----: | :----: | :----: |
| [BitBox02](https://bitbox.swiss/) | [BitBoxSwiss/bitbox02-firmware](https://github.com/BitBoxSwiss/bitbox02-firmware) | {{< icon "check-green" >}} | {{< icon "x-red" >}} | {{< icon "x-red" >}} |
| [Coldcard](https://coldcard.com/) | [Coldcard/firmware](https://github.com/Coldcard/firmware) | {{< icon "wip" >}} | {{< icon "wip" >}} | {{< icon "wip" >}} |
| [Krux](https://selfcustody.github.io/krux/) | [selfcustody/krux](https://github.com/selfcustody/krux) | {{< icon "wip" >}} | {{< icon "wip" >}} | {{< icon "wip" >}} |
| [SeedSigner](https://seedsigner.com/) | [SeedSigner/seedsigner](https://github.com/SeedSigner/seedsigner) | {{< icon "wip" >}} | {{< icon "wip" >}} | {{< icon "wip" >}} |

## Applications

Applications that use Silent Payments for a specific purpose, with a built-in wallet.

| Wallet | Source | Sending | Receiving | Privacy-preserving scanning | BIP375 | BIP376 |
| ------ | ------ | :-----: | :-------: | :-----------------------------: | :--------: | :--------: |
| [Agora](https://agora.spot)[^5] | [soapbox-pub/agora](https://gitlab.com/soapbox-pub/agora) | {{< icon "check-green" >}} | {{< icon "check-green" >}} | {{< icon "check-green" >}} | - | - |

## Experimental & proof-of-concept

Early proof-of-concept projects. Try with caution, not with meaningful funds.

| Wallet | Source | Sending | Receiving | Privacy-preserving scanning | BIP375 | BIP376 |
| ------ | ------ | :-----: | :-------: | :-----------------------------: | :--------: | :--------: |
| [Silentium](https://app.silentium.dev)[^2] | [louisinger/silentium](https://github.com/louisinger/silentium) | {{< icon "check-green" >}} | {{< icon "warning" >}} | - | - | - |

[^1]: "Privacy preserving scanning" here denotes an architecture where no output information is revealed to the back-end server. While this is the only possible back-end approach for now, it's very likely we will see future approaches that give the view key over to a back-end server to allow background sync, while sacrificing privacy of Silent Payments outputs to that third-party server. This field is a way that we can denote that in the future as-necessary.
[^2]: Silentium is a proof-of-concept and should be used with caution! From the developer:
    > This is an experimental project acting as a proof of concept for Silent Payments light wallets. Use at your own risk.
[^3]: [BIP375](https://github.com/bitcoin/bips/blob/master/bip-0375.mediawiki) — Sending Silent Payments with PSBT. Defines the PSBT fields required for a hardware signer to participate in constructing a transaction that sends to a Silent Payment address.
[^4]: [BIP376](https://github.com/bitcoin/bips/blob/master/bip-0376.mediawiki) — Spending Silent Payments with PSBT. Defines the PSBT fields required for a hardware signer to spend a previously received Silent Payment output.
[^5]: Agora is a Bitcoin donation/crowdfunding platform with a built-in wallet. It runs as a browser-based hot wallet tied to your Nostr key (nsec). For anything beyond small amounts, transfer the funds to another wallet with a different seed for secure storage.
