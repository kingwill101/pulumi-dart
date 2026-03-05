// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterIpAllocationPolicyNetworkTierConfig {
  /// Network tier configuration.
  /// Accepted values are:
  /// * `NETWORK_TIER_DEFAULT`: (Default) Use project-level configuration.
  /// * `NETWORK_TIER_PREMIUM`: Premium network tier.
  /// * `NETWORK_TIER_STANDARD`: Standard network tier.
  final pulumi.Input<String> networkTier;

  /// Creates a new [ClusterIpAllocationPolicyNetworkTierConfig].
  /// [networkTier] Network tier configuration.
  ClusterIpAllocationPolicyNetworkTierConfig({
    required this.networkTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkTier': networkTier,
    };
  }

  factory ClusterIpAllocationPolicyNetworkTierConfig.fromMap(Map<String, dynamic> map) {
    return ClusterIpAllocationPolicyNetworkTierConfig(
      networkTier: pulumi.Input.fromValue(map['networkTier'] as String),
    );
  }
}

