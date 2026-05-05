---
title: Silent Payments For Developers
summary: For the developers among you, this page is a simple page to point you in the right direction for where to look into for integration on both the wallet and scanning side.
weight: 3
prev: /docs/wallets
next: /docs/bounties
---

For the developers among you, this page is a simple page to point you in the right direction for where to look into for integration on both the wallet and scanning side.

*Want to contribute? Checkout the Silent Payments [Development Tracker](https://github.com/orgs/silent-payments/projects/2/views/5)*

{{< callout type="info" >}}
  Please note that implementing the ability to *send* to Silent Payment addresses is the most important right now, and that Silent Payments were designed to make sending trivial!
{{< /callout >}}

{{< callout type="warning" >}}
  The mention of a library below does not in any way indicate it has been reviewed or is ready for usage with real funds. Please review any chosen library carefully before using it.
{{< /callout >}}

## Wallet libraries

| Library | Language | Sending | Receiving | BIP375 | BIP376 | Used by |
| ------- | :------: | :-----: | :-------: | :--------: | :--------: | ------- |
| [bitcoinjs/bitcoinjs-lib](https://github.com/bitcoinjs/bitcoinjs-lib/) | JavaScript | {{< icon "wip" >}} | {{< icon "wip" >}} | - | - | - |
| [BDK SP](https://github.com/bitcoindevkit/bdk-sp) | Rust | {{< icon "wip" >}} | {{< icon "wip" >}} | - | - | - |
| [BlueWallet/SilentPayments](https://github.com/BlueWallet/SilentPayments) | TypeScript | {{< icon "check-green" >}} | - | - | - | BlueWallet |
| [cake-tech/bitcoin_base](https://github.com/cake-tech/bitcoin_base/tree/cake-update-v3) | Dart | {{< icon "check-green" >}} | {{< icon "check-green" >}} | {{< icon "wip" >}} | - | Cake Wallet |
| [cake-tech/sp_scanner](https://github.com/cake-tech/sp_scanner/tree/sp_v1.0.0) | Dart | - | {{< icon "check-green" >}} | - | - | Cake Wallet |
| [go-bip352](https://github.com/setavenger/go-bip352) | Go | {{< icon "check-green" >}} | {{< icon "check-green" >}} | - | - | BlindBit Desktop |
| [silent-pay](https://github.com/Bitshala-Incubator/silent-pay) [^lib2] | TypeScript | {{< icon "check-green" >}} | {{< icon "check-green" >}} | - | - | - |
| [shakesco/silent](https://github.com/shakesco/shakesco-silent) | JavaScript | {{< icon "check-green" >}} | {{< icon "check-green" >}} | - | - | Shakepay |
| [spdk](https://github.com/cygnet3/spdk) [^lib1] | Rust | {{< icon "check-green" >}} | {{< icon "check-green" >}} | {{< icon "wip" >}} | - | Dana Wallet |


[^lib1]: This crate is still quite new. Review this library carefully before using it with mainnet funds.
[^lib2]: This library is currently in an experimental stage. It has not undergone extensive testing and may contain bugs or unexpected behavior. Mainnet use is strictly NOT recommended.

## Scanning back-ends

The following indexer implementations provide the server-side scanning infrastructure that light wallets rely on. See the [Silent Payments Indexer Server Spec](https://github.com/silent-payments/bIP0352-index-server-specification) for the common API.

| Server | Type | State | Index Size[^1] | Links |
| ------ | :--: | :---: | :------------: | ----- |
| Bindex-rs | Tweak Server | WIP | ~8.3 GB | [romanz/bindex-rs](https://github.com/romanz/bindex-rs) |
| BlindBit Oracle v2 | Tweak Server | stable | ~105 GB | [setavenger/blindbit-oracle](https://github.com/setavenger/blindbit-oracle) |
| Electrs (Cake fork) | Tweak Server | WIP | ~3 TB | [cake-tech/electrs](https://github.com/cake-tech/electrs/tree/cake-update-v1) |
| Frigate | Remote Scanner | experimental | ~18 GB | [sparrowwallet/frigate](https://github.com/sparrowwallet/frigate) |

[^1]: Index sizes are approximate and vary with hardware and pruning configuration. Tweak servers store only the elliptic curve tweak data per block; remote scanners store additional per-output data to do full scanning on the server side.

## Additional Resources

- Silent Payments Working Group
  - [Discussions](https://github.com/orgs/silent-payments/discussions)
  - [Repositories](https://github.com/orgs/silent-payments/repositories)
  - [Development Tracker](https://github.com/orgs/silent-payments/projects/2/views/5)
- BitBox Blog
  - [Understanding Silent Payments - Part 1](https://blog.bitbox.swiss/en/understanding-silent-payments-part-one)
  - [Understanding Silent Payments - Part 2](https://blog.bitbox.swiss/en/understanding-silent-payments-part-two)
- [Silent Payments Dev Hub](https://github.com/macgyver13/silent-payments-hub)