---
title: Silent Payments For Developers
weight: 3
prev: /docs/walletsupport
---

For the developers among you, this page is a simple page to point you in the right direction for where to look into for integration on both the wallet and scanning side.

## Wallet libraries

- [cygnet3/rust-silentpayments](https://github.com/cygnet3/rust-silentpayments)
  - A Rust library for Silent Payments.
  - Warning: both this crate and BIP352 are still quite new. Review this library carefully before using it with mainnet funds.
- [Overtorment/SilentPayments](https://github.com/Overtorment/SilentPayments)
  - A TypeScript library for Silent Payments.

## Scanning back-ends

- BlindBit
  - [blindbit-oracle](https://github.com/setavenger/blindbit-oracle)
  - [blindbitd](https://github.com/setavenger/blindbitd)
  - [WIP light client specification](https://github.com/setavenger/BIP0352-light-client-specification)
- [louisinger/silentiumd](https://github.com/louisinger/silentiumd)
- [cake-tech/electrs](https://github.com/cake-tech/electrs/tree/cake-update-v1)
  - Note that this is a WIP fork of `electrs` with optimized support for Silent Payment scanning added.