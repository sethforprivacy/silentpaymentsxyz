---
title: Silent Payments For Developers
summary: For the developers among you, this page is a simple page to point you in the right direction for where to look into for integration on both the wallet and scanning side.
weight: 4
prev: /docs/scanning
next: /docs/bounties
---

For the developers among you, this page is a simple page to point you in the right direction for where to look into for integration on both the wallet and scanning side.

*Want to contribute? Check out the Silent Payments [Development Tracker](https://github.com/orgs/silent-payments/projects/2/views/5)*

{{< callout type="info" >}}
  Please note that implementing the ability to *send* to Silent Payment addresses is the most important right now, and that Silent Payments were designed to make sending trivial!
{{< /callout >}}

{{< callout type="warning" >}}
  The mention of a library below does not in any way indicate it has been reviewed or is ready for usage with real funds. Please review any chosen library carefully before using it.
{{< /callout >}}

## Wallet libraries

| Library | Language | Sending | Receiving | BIP375 | BIP376 | Used by |
| ------- | :------: | :-----: | :-------: | :--------: | :--------: | ------- |
| [bitcoin-core/secp256k1](https://github.com/bitcoin-core/secp256k1) [^secp] | C | {{< icon "check-green" >}} | {{< icon "check-green" >}} | - | - | Bitcoin Core |
| [bitcoinjs/bitcoinjs-lib](https://github.com/bitcoinjs/bitcoinjs-lib/pull/2269) [^bitcoinjs] | JavaScript | {{< icon "wip" >}} | {{< icon "wip" >}} | - | - | - |
| [BDK SP](https://github.com/bitcoindevkit/bdk-sp) [^bdksp] | Rust | {{< icon "wip" >}} | {{< icon "wip" >}} | {{< icon "wip" >}} | {{< icon "wip" >}} | - |
| [BlueWallet/SilentPayments](https://github.com/BlueWallet/SilentPayments) [^bluewallet] | TypeScript | {{< icon "check-green" >}} | {{< icon "check-green" >}} | - | - | BlueWallet |
| [cake-tech/bitcoin_base](https://github.com/cake-tech/bitcoin_base/tree/cake-update-v11) | Dart | {{< icon "check-green" >}} | {{< icon "check-green" >}} | - | - | Cake Wallet |
| [cake-tech/sp_scanner](https://github.com/cake-tech/sp_scanner/tree/sp_v4.0.1) | Dart | - | {{< icon "check-green" >}} | - | - | Cake Wallet |
| [sparrowwallet/drongo](https://github.com/sparrowwallet/drongo) | Java | {{< icon "check-green" >}} | {{< icon "check-green" >}} | {{< icon "check-green" >}} | {{< icon "check-green" >}} | Sparrow Wallet, Frigate |
| [go-bip352](https://github.com/setavenger/go-bip352) | Go | {{< icon "check-green" >}} | {{< icon "check-green" >}} | - | - | BlindBit Desktop, BlindBit Oracle |
| [silent-pay](https://github.com/Bitshala-Incubator/silent-pay) [^lib2] | TypeScript | {{< icon "check-green" >}} | {{< icon "check-green" >}} | - | - | - |
| [shakesco/silent](https://github.com/shakesco/shakesco-silent) | JavaScript | {{< icon "check-green" >}} | {{< icon "check-green" >}} | - | - | Shakesco |
| [spdk](https://github.com/cygnet3/spdk) [^lib1] | Rust | {{< icon "check-green" >}} | {{< icon "check-green" >}} | - | - | Dana Wallet |

[^secp]: The `silentpayments` module was merged in July 2026 and shipped in libsecp256k1 v0.8.0. It currently only supports full-node scanning, not light-client scanning.
[^bitcoinjs]: Silent Payments support for bitcoinjs-lib is still in open, unmerged PRs.
[^bdksp]: BDK SP is an experimental project from the BDK team and is not yet recommended for use on mainnet. Its PSBT support currently uses proprietary PSBT fields rather than the standardized BIP376 ones.
[^bluewallet]: Receiving support was added to the library in September 2026 and only scans unlabeled addresses so far. The BlueWallet app itself still only supports sending.
[^lib1]: SPDK now includes the `silentpayments` crate (formerly [rust-silentpayments](https://github.com/cygnet3/rust-silentpayments)). It is still quite new, so review it carefully before using it with mainnet funds.
[^lib2]: This library is currently in an experimental stage and hasn't seen development since late 2025. It has not undergone extensive testing and may contain bugs or unexpected behavior. Mainnet use is strictly NOT recommended.

## Scanning back-ends

The following indexer implementations provide the server-side scanning infrastructure that light wallets rely on. See the [Silent Payments Indexer Server Spec](https://github.com/silent-payments/BIP0352-index-server-specification) for the common API, and [How Silent Payment Wallets Scan](/docs/scanning) for the privacy trade-offs between tweak servers and remote scanners.

| Server | Type | State | Index Size[^1] | Links |
| ------ | :--: | :---: | :------------: | ----- |
| Bindex-rs | Tweak Server | WIP | ~8.3 GB | [romanz/bindex-rs](https://github.com/romanz/bindex-rs/pull/105) |
| BlindBit Oracle v2 | Tweak Server | stable | ~109 GB[^blindbit] | [setavenger/blindbit-oracle](https://github.com/setavenger/blindbit-oracle) |
| Electrs (Cake fork) | Tweak Server | stable | ~1.6 TB[^electrs] | [cake-tech/blockstream-electrs](https://github.com/cake-tech/blockstream-electrs/tree/cake-update-v1) |
| Frigate | Remote Scanner | stable | ~18 GB | [sparrowwallet/frigate](https://github.com/sparrowwallet/frigate) |

[^1]: Index sizes are approximate and vary with hardware and pruning configuration. Tweak servers store the tweak data for every eligible transaction and serve it to anyone; remote scanners like Frigate store additional per-output data so they can do the full scan on the server side using the client's scan key.
[^blindbit]: [Measured](https://github.com/bitsagarob/silentpayments-measurements) on a production BlindBit Oracle v2 instance in September 2026. The v2 API is a rewrite that isn't compatible with the original v1 API that some wallets still use.
[^electrs]: Measured on Cake's production server in September 2026. Cake's tweak index runs as part of a full Blockstream Esplora/electrs index, so most of this is the standard Esplora index; the Silent Payments tweak data itself is only ~33 GB of the total.

## Additional Resources

- Silent Payments Working Group
  - [Discussions](https://github.com/orgs/silent-payments/discussions)
  - [Repositories](https://github.com/orgs/silent-payments/repositories)
  - [Development Tracker](https://github.com/orgs/silent-payments/projects/2/views/5)
- BitBox Blog
  - [Understanding Silent Payments - Part 1](https://blog.bitbox.swiss/en/understanding-silent-payments-part-one)
  - [Understanding Silent Payments - Part 2](https://blog.bitbox.swiss/en/understanding-silent-payments-part-two)
- [BIP352 reference implementation and test vectors](https://github.com/bitcoin/bips/tree/master/bip-0352)
- [BIP392: Silent Payment Output Script Descriptors](https://github.com/bitcoin/bips/blob/master/bip-0392.mediawiki)
- [Bitcoin Core Silent Payments tracking issue](https://github.com/bitcoin/bitcoin/issues/28536)
- [Silent Payments Dev Hub](https://github.com/macgyver13/silent-payments-hub)
