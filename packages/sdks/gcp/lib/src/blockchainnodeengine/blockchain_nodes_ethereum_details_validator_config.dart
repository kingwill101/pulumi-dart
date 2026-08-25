// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BlockchainNodesEthereumDetailsValidatorConfig {
  /// An Ethereum address which the beacon client will send fee rewards to if no recipient is configured in the validator client. See https://lighthouse-book.sigmaprime.io/suggested-fee-recipient.html or https://docs.prylabs.network/docs/execution-node/fee-recipient for examples of how this is used. Note that while this is often described as "suggested", as we run the execution node we can trust the execution node, and therefore this is considered enforced.
  final pulumi.Input<String?>? beaconFeeRecipient;
  /// URLs for MEV-relay services to use for block building. When set, a managed MEV-boost service is configured on the beacon client.
  final pulumi.Input<List<String>?>? mevRelayUrls;

  /// Creates a new [BlockchainNodesEthereumDetailsValidatorConfig].
  /// [beaconFeeRecipient] An Ethereum address which the beacon client will send fee rewards to if no recipient is configured in the validator client. See https://lighthouse-book.sigmaprime.io/suggested-fee-recipient.html or https://docs.prylabs.network/docs/execution-node/fee-recipient for examples of how this is used. Note that while this is often described as "suggested", as we run the execution node we can trust the execution node, and therefore this is considered enforced.
  /// [mevRelayUrls] URLs for MEV-relay services to use for block building. When set, a managed MEV-boost service is configured on the beacon client.
  const BlockchainNodesEthereumDetailsValidatorConfig({
    this.beaconFeeRecipient,
    this.mevRelayUrls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'beaconFeeRecipient': ?beaconFeeRecipient,
      'mevRelayUrls': ?mevRelayUrls,
    };
  }

  factory BlockchainNodesEthereumDetailsValidatorConfig.fromMap(Map<String, dynamic> map) {
    return BlockchainNodesEthereumDetailsValidatorConfig(
      beaconFeeRecipient: (() { final guardedValue = map['beaconFeeRecipient']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mevRelayUrls: (() { final guardedValue = map['mevRelayUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
