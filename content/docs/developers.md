---
title: Silent Payments For Developers
summary: For the developers among you, this page is a simple page to point you in the right direction for where to look into for integration on both the wallet and scanning side.
weight: 3
prev: /docs/wallets
next: /docs/bounties
---

For the developers among you, this page is a simple page to point you in the right direction for where to look into for integration on both the wallet and scanning side.

{{< callout type="info" >}}
  Please note that implementing the ability to *send* to Silent Payment addresses is the most important right now, and that Silent Payments were designed to make sending trivial!
{{< /callout >}}

{{< callout type="warning" >}}
  The mention of a library below does not in any way indicate it has been reviewed or is ready for usage with real funds. Please review any chosen library carefully before using it.
{{< /callout >}}

## Wallet libraries

- [cygnet3/rust-silentpayments](https://github.com/cygnet3/rust-silentpayments)
  - A Rust library for Silent Payments.
  > Warning: both this crate and BIP352 are still quite new. Review this library carefully before using it with mainnet funds.
- [BlueWallet/SilentPayments](https://github.com/BlueWallet/SilentPayments)
  - A TypeScript library for Silent Payments, built for Blue Wallet.
- [cake-tech/bitcoin_base](https://github.com/cake-tech/bitcoin_base/tree/cake-update-v3)
  - Dart library for flutter applications with full support for silent payments and tests included, built for Cake Wallet.
- [cake-tech/sp_scanner](https://github.com/cake-tech/sp_scanner/tree/sp_v1.0.0)
  - Dart package which calls rust FFI for faster ECDH scanning, built for Cake Wallet.
- [setavenger/go-bip352](https://github.com/setavenger/go-bip352)
  - A go package that handles the core computations surrounding Silent Payments.
- [Bitshala-Incubator/silent-pay](https://github.com/Bitshala-Incubator/silent-pay)
  - "A bitcoin wallet library that supports silent payments out of the box."
  > This library is currently in an experimental stage and should be used with caution. It has not undergone extensive testing and may contain bugs, vulnerabilities, or unexpected behavior. Mainnet use is strictly NOT recommended.
- [shakesco/silent](https://github.com/shakesco/shakesco-silent)
  - A JavaScript SDK offering comprehensive support for silent payments, including sending, receiving, and scanning functionality. Designed for Shakespay wallet.
  > Warning: this SDK currently has a breaking bug that causes mainnet addresses to be unusable! Do not use this SDK with mainnet funds until [the issue](https://github.com/shakesco/shakesco-silent/issues/1) is resolved.

## Scanning back-ends

- BlindBit
  - [blindbit-oracle](https://github.com/setavenger/blindbit-oracle)
  - [blindbitd](https://github.com/setavenger/blindbitd)
  - [WIP light client specification](https://github.com/setavenger/BIP0352-light-client-specification)
- [louisinger/silentiumd](https://github.com/louisinger/silentiumd)
- [cake-tech/electrs](https://github.com/cake-tech/electrs/tree/cake-update-v1)
  - Note that this is a WIP fork of `electrs` with optimized support for Silent Payment scanning added.
