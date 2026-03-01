// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_parallel_upgrade_config_response.dart';

/// BareMetalNodePoolUpgradePolicy defines the node pool upgrade policy.
class BareMetalNodePoolUpgradePolicyResponse {
  /// The parallel upgrade settings for worker node pools.
  final BareMetalParallelUpgradeConfigResponse parallelUpgradeConfig;

  /// Creates a new [BareMetalNodePoolUpgradePolicyResponse].
  /// [parallelUpgradeConfig] The parallel upgrade settings for worker node pools.
  BareMetalNodePoolUpgradePolicyResponse({
    required this.parallelUpgradeConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parallelUpgradeConfig': parallelUpgradeConfig.toMap(),
    };
  }

  factory BareMetalNodePoolUpgradePolicyResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalNodePoolUpgradePolicyResponse(
      parallelUpgradeConfig: BareMetalParallelUpgradeConfigResponse.fromMap((map['parallelUpgradeConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

