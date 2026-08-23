// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterIpAllocationPolicyNetworkTierConfig {
  /// Network tier configuration.
  final pulumi.Input<String> networkTier;

  /// Creates a new [GetClusterIpAllocationPolicyNetworkTierConfig].
  /// [networkTier] Network tier configuration.
  const GetClusterIpAllocationPolicyNetworkTierConfig({
    required this.networkTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkTier': networkTier,
    };
  }

  factory GetClusterIpAllocationPolicyNetworkTierConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterIpAllocationPolicyNetworkTierConfig(
      networkTier: pulumi.Input.fromValue(map['networkTier'] as String),
    );
  }
}
