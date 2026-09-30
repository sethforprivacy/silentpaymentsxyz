---
title: Bounties
summary: This page will track all known Silent Payment-related bounties, their amount, and basic info on completion requirements.
weight: 5
prev: /docs/developers
next: /docs/comparing-proposals
---

Bounties are a vital tool we have in the Bitcoin ecosystem to drive development forward and provide strong financial incentives, and I'm grateful that the Bitcoin community is rallying behind Silent Payments with bounties.

This page will track all known Silent Payment-related bounties, their amount, and basic info on completion requirements.

## Software wallet implementation bounties

{{% details title="Implement sending to Silent Payment addresses in Electrum - **0.01 BTC** (open)" closed="true" %}}

### Completion requirements

A merged pull request against Electrum repository, implementing sending to Silent Payment addresses.

### Status

The original [pull request](https://github.com/spesmilo/electrum/pull/9900) was closed without being merged in March 2026, with the Electrum maintainers asking for Silent Payments to be shipped as an external plugin instead. A community [Silent Payments Sender plugin](https://github.com/ZenulAbidin/electrum-silent-payments-sender) is now listed on [plugins.electrum.org](https://plugins.electrum.org), and whether that satisfies this bounty is still being discussed in the [bounty issue](https://github.com/spesmilo/electrum/issues/8847).

### Contributors

| Person | Link | Amount |
| --- | --- | --- |
| Anon | npub1ltmm708jkyca77rq3lyg50lhr6ut4zjtyzr5f3wlzu6ntzftzz0s0hjnjc | 1M sats |

### Relevant links

- [Electrum Github](https://github.com/spesmilo/electrum)
- [Closed PR](https://github.com/spesmilo/electrum/pull/9900)
- [Silent Payments Sender plugin](https://github.com/ZenulAbidin/electrum-silent-payments-sender)
- [Bounty Issue](https://github.com/spesmilo/electrum/issues/8847)
- [Existing development resources and libraries](../developers)

{{% /details %}}

## Hardware wallet implementation bounties

{{% details title="Implement sending to Silent Payment addresses in Foundation Passport - **0.01 BTC** (open)" closed="true" %}}

### Completion requirements

A merged pull request against the Foundation Passport repository, implementing sending to Silent Payment addresses.

### Contributors

| Person | Link | Amount |
| --- | --- | --- |
| Anon | npub1ltmm708jkyca77rq3lyg50lhr6ut4zjtyzr5f3wlzu6ntzftzz0s0hjnjc | 1M sats |

### Relevant links

- [Foundation Passport Github](https://github.com/Foundation-Devices/passport2)
- [Bounty Issue](https://github.com/Foundation-Devices/passport2/issues/527)
- [WIP PR](https://github.com/Foundation-Devices/passport2/pull/647)
- [Existing development resources and libraries](../developers)

{{% /details %}}

{{% details title="Implement sending to Silent Payment addresses in SeedSigner - **0.01 BTC** (open)" closed="true" %}}

### Completion requirements

A merged pull request against the SeedSigner repository, implementing sending to Silent Payment addresses.

### Contributors

| Person | Link | Amount |
| --- | --- | --- |
| Anon | npub1ltmm708jkyca77rq3lyg50lhr6ut4zjtyzr5f3wlzu6ntzftzz0s0hjnjc | 1M sats |

### Relevant links

- [SeedSigner Github](https://github.com/SeedSigner/seedsigner/)
- [Bounty Issue](https://github.com/SeedSigner/seedsigner/issues/569)
- [WIP PR](https://github.com/SeedSigner/seedsigner/pull/949)
- [Existing development resources and libraries](../developers)

{{% /details %}}

## Library implementation bounties

{{% details title="Implement sending to Silent Payment addresses in BDK - **0.011 BTC** (open)" closed="true" %}}

As described in the Github issue comments, a bounty has been started by Seth For Privacy and has received contributions from many others in the community.

### Completion requirements

A merged pull request against the BDK repository, implementing sending to Silent Payment addresses.

### Contributors

| Person | Link | Amount |
| --- | --- | --- |
| sethforprivacy | https://x.com/sethforprivacy/status/1791171312733335902 | 100k sats |
| janusz | https://x.com/januszg_/status/1791469710066024470 | 130k sats |
| Yael | https://x.com/YaelOss/status/1791177147836502340 | 100k sats |
| justRay | https://x.com/justray1111/status/1791237240389030259 | 370k sats |
| sommerfeld | https://x.com/sommerfeld___/status/1791175492101411206 | 200k sats |
| Ruben Waterman | https://x.com/watermaniak/status/1791217114855993677 | 100k sats |
| Real Hal Finney | https://x.com/RealHalFinney/status/1791480570637119905 | 100k sats |

### Total payout

As of 05/18/2024, the total payout for this bounty is **0.011 BTC**.

### Relevant links

- [GitHub issue requesting support](https://github.com/bitcoindevkit/bdk_wallet/issues/160)
- [Discussion on adding Silent Payment support to `rust-bitcoin`](https://github.com/rust-bitcoin/rust-bitcoin/discussions/5715)
- [Experimental `bdk-sp` repo](https://github.com/bitcoindevkit/bdk-sp) (an experimental crate that doesn't yet meet the "merged into BDK" requirement)
- [Existing Rust crate for Silent Payments support](https://github.com/cygnet3/rust-silentpayments)
  - This existing crate could be a useful starting point, but is not required to be used for this bounty.

{{% /details %}}

{{% details title="Implement Silent Payments in LWK (Liquid Wallet Kit) — **0.06 BTC** (open)" closed="true" %}}

Sponsored by JAN3, these three open bounties add Silent Payments support (with confidential transactions) to the LWK library on the Liquid Network. Any wallet or other consumer of LWK would then be able to send to and receive at Silent Payment addresses on Liquid.

### Bounties

| Bounty | Amount | Completion requirement |
| --- | --- | --- |
| Silent Payments Spec for LWK | 0.01 BTC | A written spec for how Silent Payments send and receive with confidential transactions can be implemented in LWK, following the Tweak Server model, approved and merged as an ELIP proposal. |
| Implement Silent Payments Send in LWK | 0.02 BTC | A wallet or other LWK consumer can use LWK APIs to send a transaction to a Silent Payment address on Liquid, following the spec above. |
| Implement Silent Payments Receive in LWK | 0.03 BTC | A wallet or other LWK consumer can generate and receive payments to Silent Payment addresses on Liquid, following the spec above. |

### Status

- **Spec:** in review as [ELIP 352](https://github.com/ElementsProject/ELIPs/pull/37), which has been approved by a JAN3 reviewer and is awaiting merge.
- **Send and Receive:** blocked for now. Implementation PRs were closed in September 2026, and the LWK maintainers have said [not to expect Silent Payments to be reviewed or merged in the foreseeable future](https://github.com/Blockstream/lwk/issues/164).

### Total payout

The total payout across all three bounties is **0.06 BTC**. All payouts remain discretionary at JAN3's sole discretion.

### Relevant links

- [JAN3 bounties page](https://jan3.com/bounties?v=1)
- [LWK (Liquid Wallet Kit) Github](https://github.com/Blockstream/lwk)
- [BIP0352 index server specification](https://github.com/silent-payments/BIP0352-index-server-specification)
- [Elements Improvement Proposals (ELIPs)](https://github.com/ElementsProject/ELIPs)
- [Existing development resources and libraries](../developers)

{{% /details %}}

## Completed & retired bounties

{{% details title="Implement sending to Silent Payment addresses in BitBox - **0.01 BTC** (completed)" closed="true" %}}

### Status

**Completed!** Sending to Silent Payment addresses shipped in [BitBox02 firmware v9.21.0](https://github.com/BitBoxSwiss/bitbox02-firmware/releases/tag/firmware/v9.21.0) and BitBoxApp v4.45.0 in the fall of 2024. The developer, benma, graciously declined the bounty and asked for it to be donated to [Brink](https://brink.dev/donate) instead.

### Completion requirements

A merged pull request against the BitBox repository, implementing sending to Silent Payment addresses.

### Contributors

| Person | Link | Amount |
| --- | --- | --- |
| Anon | npub1ltmm708jkyca77rq3lyg50lhr6ut4zjtyzr5f3wlzu6ntzftzz0s0hjnjc | 1M sats |

### Relevant links

- [BitBox Github](https://github.com/BitBoxSwiss/bitbox02-firmware)
- [Merged PR](https://github.com/BitBoxSwiss/bitbox02-firmware/pull/1220)
- [Bounty Issue](https://github.com/BitBoxSwiss/bitbox02-firmware/issues/1251)
- [Existing development resources and libraries](../developers)

{{% /details %}}

{{% details title="Implement sending to Silent Payment addresses in Samourai - **0.01 BTC** (retired)" closed="true" %}}

### Completion requirements

A merged pull request against whatever will be the active Samourai repository at the moment of merging, implementing sending to Silent Payment addresses.

### Contributors

| Person | Link | Amount |
| --- | --- | --- |
| Anon | npub1ltmm708jkyca77rq3lyg50lhr6ut4zjtyzr5f3wlzu6ntzftzz0s0hjnjc | 1M sats |

### Status

**Retired.** Samourai Wallet was shut down in April 2024 when its founders were arrested, so there's no longer an active Samourai repository to merge into. Its community successor, [Ashigaru](https://ashigaru.rs/), hasn't implemented sending to Silent Payment addresses yet.

### Some notes

Even though this bounty can no longer be completed, the spirit behind it still stands: privacy is not something to be frowned upon, it is legitimate and necessary, and we should fight to protect it in spite of personal antagonisms or regulatory threats.

### Relevant links

- [Existing development resources and libraries](../developers)

{{% /details %}}
