---
title: Silent Payments Wallet Support
summary: Keep up to date with wallet support for Silent Payments across the Bitcoin ecosystem
weight: 2
next: /docs/scanning
prev: /docs/explained
---

One of the hardest things to keep up with in the Bitcoin space is keeping up with what wallets have deployed new features, what specific aspects have been deployed, and much more.

I'll do my best to keep this page up to date (it was last fully reviewed in September 2026), but if you see something that needs to be updated please submit a PR (use that "Edit this page on GitHub" button ->) or [open an issue](https://github.com/sethforprivacy/silentpaymentsxyz/issues).

{{< callout type="warning" >}}
  As Silent Payments are so new, please be cautious when testing new wallets with real funds!
{{< /callout >}}

## Wallets

Bitcoin wallets with Silent Payments support, grouped by what you can do today: **send & receive**, **send-only**, and **in progress** where support is still landing.

### Send & receive

| Wallet | Source | Sending | Receiving | Privacy-preserving scanning[^scan] | BIP375[^bip375] | BIP376[^bip376] |
| ------ | ------ | :-----: | :-------: | :-----------------------------: | :--------: | :--------: |
| [BlindBit Desktop](https://github.com/setavenger/blindbit-desktop/releases)[^alpha] | [setavenger/blindbit-desktop](https://github.com/setavenger/blindbit-desktop/) | {{< icon "check-green" >}} | {{< icon "check-green" >}} | {{< icon "check-green" >}} | - | - |
| [Cake Wallet](https://cakewallet.com) | [cake-tech/cake_wallet](https://github.com/cake-tech/cake_wallet) | {{< icon "check-green" >}} | {{< icon "check-green" >}} | {{< icon "check-green" >}} | - | - |
| [Dana Wallet](https://danawallet.app)[^alpha] | [cygnet3/dana](https://github.com/cygnet3/dana) | {{< icon "check-green" >}} | {{< icon "check-green" >}} | {{< icon "check-green" >}} | - | - |
| [Sparrow Wallet](https://sparrowwallet.com/) | [sparrowwallet/sparrow](https://github.com/sparrowwallet/sparrow) | {{< icon "check-green" >}} | {{< icon "check-green" >}} | {{< icon "x-red" >}}[^sparrow] | {{< icon "check-green" >}} | {{< icon "check-green" >}} |

### Send-only

| Wallet | Source | Sending | Receiving | Privacy-preserving scanning | BIP375 | BIP376 |
| ------ | ------ | :-----: | :-------: | :-----------------------------: | :--------: | :--------: |
| [BitBox](https://bitbox.swiss/) | [BitBoxSwiss/bitbox-wallet-app](https://github.com/BitBoxSwiss/bitbox-wallet-app) | {{< icon "check-green" >}} | {{< icon "x-red" >}} | - | - | - |
| [BlueWallet](https://bluewallet.io/) | [bluewallet/bluewallet](https://github.com/bluewallet/bluewallet) | {{< icon "check-green" >}} | {{< icon "x-red" >}} | - | - | - |
| [Nunchuk Wallet](https://nunchuk.io) | [nunchuk-io](https://github.com/nunchuk-io) | {{< icon "check-green" >}} | {{< icon "x-red" >}} | - | - | - |
| [Wasabi Wallet](https://wasabiwallet.io/)[^wasabi] | [WalletWasabi/WalletWasabi](https://github.com/WalletWasabi/WalletWasabi) | {{< icon "check-green" >}} | {{< icon "x-red" >}} | - | - | - |

### In progress

| Wallet | Source | Sending | Receiving | Privacy-preserving scanning | BIP375 | BIP376 |
| ------ | ------ | :-----: | :-------: | :-----------------------------: | :--------: | :--------: |
| [Bitcoin Core](https://bitcoincore.org/)[^core] | [bitcoin/bitcoin](https://github.com/bitcoin/bitcoin/issues/28536) | {{< icon "wip" >}} | {{< icon "wip" >}} | {{< icon "check-green" >}} | - | - |
| [Bull Bitcoin](https://www.bullbitcoin.com/) | [SatoshiPortal/bullbitcoin-mobile](https://github.com/SatoshiPortal/bullbitcoin-mobile/pull/2408) | - | {{< icon "wip" >}} | {{< icon "check-green" >}} | - | - |
| [Caravan](https://caravanmultisig.com/) | [caravan-bitcoin/caravan](https://github.com/caravan-bitcoin/caravan/pull/496) | {{< icon "wip" >}} | {{< icon "x-red" >}} | - | {{< icon "wip" >}} | - |

## Hardware signers

Signing devices for Silent Payment transactions (BIP375 to send, BIP376 to spend). They don't scan or hold funds themselves, so pair them with a software wallet above.

| Wallet | Source | Sending | BIP375 | BIP376 |
| ------ | ------ | :-----: | :----: | :----: |
| [BitBox02](https://bitbox.swiss/)[^bitbox02] | [BitBoxSwiss/bitbox02-firmware](https://github.com/BitBoxSwiss/bitbox02-firmware) | {{< icon "check-green" >}} | {{< icon "x-red" >}} | {{< icon "x-red" >}} |
| [Coldcard](https://coldcard.com/)[^coldcard] | [Coldcard/firmware](https://github.com/Coldcard/firmware/pull/587) | {{< icon "wip" >}} | {{< icon "wip" >}} | {{< icon "wip" >}} |
| [Foundation Passport](https://foundation.xyz/passport) | [Foundation-Devices/passport2](https://github.com/Foundation-Devices/passport2/pull/647) | {{< icon "wip" >}} | {{< icon "wip" >}} | - |
| [Krux](https://selfcustody.github.io/krux/)[^krux] | [selfcustody/krux](https://github.com/selfcustody/krux/pull/925) | {{< icon "wip" >}} | {{< icon "wip" >}} | {{< icon "wip" >}} |
| [SeedSigner](https://seedsigner.com/) | [SeedSigner/seedsigner](https://github.com/SeedSigner/seedsigner/pull/949) | {{< icon "wip" >}} | {{< icon "wip" >}} | {{< icon "wip" >}} |

## Applications

Applications that use Silent Payments for a specific purpose, with a built-in wallet.

| Wallet | Source | Sending | Receiving | Privacy-preserving scanning | BIP375 | BIP376 |
| ------ | ------ | :-----: | :-------: | :-----------------------------: | :--------: | :--------: |
| [Agora](https://agora.spot)[^agora] | [soapbox-pub/agora](https://gitlab.com/soapbox-pub/agora) | {{< icon "check-green" >}} | {{< icon "check-green" >}} | {{< icon "check-green" >}} | - | - |
| [Tacit](https://tacit.finance)[^tacit] | [z0r0z/tacit](https://github.com/z0r0z/tacit) | {{< icon "check-green" >}} | {{< icon "warning" >}} | {{< icon "check-green" >}} | - | - |

## Experimental & proof-of-concept

Early proof-of-concept projects. Try with caution, not with meaningful funds.

| Wallet | Source | Sending | Receiving | Privacy-preserving scanning | BIP375 | BIP376 |
| ------ | ------ | :-----: | :-------: | :-----------------------------: | :--------: | :--------: |
| [Electrum Silent Payments Sender plugin](https://plugins.electrum.org)[^electrum] | [ZenulAbidin/electrum-silent-payments-sender](https://github.com/ZenulAbidin/electrum-silent-payments-sender) | {{< icon "check-green" >}} | {{< icon "x-red" >}} | - | - | - |

[^scan]: "Privacy-preserving scanning" here means the wallet finds your payments itself, either with your own node or by downloading the same "tweak" data from a server that everyone else gets, so no back-end server ever learns which outputs are yours. Some wallets instead hand your scan key to a server that does the scanning for you, which is faster but lets that server see every payment you receive. See [How Silent Payment Wallets Scan](/docs/scanning) for the full breakdown.
[^bip375]: [BIP375](https://github.com/bitcoin/bips/blob/master/bip-0375.mediawiki) — Sending Silent Payments with PSBTs. Defines the PSBT fields required for a signer (like a hardware wallet) to participate in constructing a transaction that sends to a Silent Payment address.
[^bip376]: [BIP376](https://github.com/bitcoin/bips/blob/master/bip-0376.mediawiki) — Spending Silent Payment outputs with PSBTs. Defines the PSBT fields required for a signer (like a hardware wallet) to spend a previously received Silent Payment output.
[^alpha]: Both BlindBit Desktop and Dana describe themselves as experimental software (BlindBit Desktop is still in alpha), so keep amounts small.
[^sparrow]: Sparrow receives Silent Payments by sending your scan private key to a [Frigate](https://github.com/sparrowwallet/frigate) server, which does the scanning for you. The key is only held in memory for your session, and outside observers still can't link your payments, but the server operator can see every payment you receive while you're connected (much like an Electrum server sees your normal transactions). By default Sparrow uses a public Frigate server, so [run your own](/docs/scanning#running-your-own) if you want this to be private.
[^wasabi]: Wasabi supports sending to Silent Payment addresses from software wallets only, as it's disabled for hardware wallet accounts.
[^core]: The base BIP352 code was merged into Bitcoin Core's master branch in September 2026, but sending and receiving are still in open PRs and haven't shipped in a release yet. Follow along in the [tracking issue](https://github.com/bitcoin/bitcoin/issues/28536).
[^bitbox02]: The BitBox02 computes and verifies the Silent Payment output itself (firmware 9.21.0+), but does so over BitBox's own protocol with the BitBoxApp rather than with BIP375 PSBTs.
[^coldcard]: Coldcard support is a community pull request that hasn't been adopted by Coinkite yet.
[^krux]: The Krux maintainer has announced that the project will be put into sunset mode and archived unless a new maintainer steps up, so this work may never ship.
[^agora]: Agora is a Bitcoin donation/crowdfunding platform with a built-in wallet. It runs as a browser-based hot wallet tied to your Nostr key (nsec), and Silent Payments are now a secondary option behind regular addresses. For anything beyond small amounts, transfer the funds to another wallet with a different seed for secure storage.
[^tacit]: Tacit is a browser-based confidential DeFi dApp with an integrated Bitcoin wallet that can send to and receive at Silent Payment addresses (`sp1q...`). Automatic scanning for received payments only works on signet for now, so on mainnet you have to find each payment by pasting in its transaction ID. Its signing key lives only in your browser — export and back it up before holding any value, since clearing browser storage loses it.
[^electrum]: The Electrum maintainers decided not to merge Silent Payments into Electrum itself, so this is a third-party plugin. It requires Electrum 4.6.0+, only works with single-sig software wallets, and is unaudited.
