// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_parallel_upgrade_config_response.dart';

/// BareMetalNodePoolUpgradePolicy defines the node pool upgrade policy.
class BareMetalNodePoolUpgradePolicyResponse {
  /// The parallel upgrade settings for worker node pools.
  final pulumi.Input<BareMetalParallelUpgradeConfigResponse> parallelUpgradeConfig;

  /// Creates a new [BareMetalNodePoolUpgradePolicyResponse].
  /// [parallelUpgradeConfig] The parallel upgrade settings for worker node pools.
  const BareMetalNodePoolUpgradePolicyResponse({
    required this.parallelUpgradeConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parallelUpgradeConfig': pulumi.Input.mapInputValue<BareMetalParallelUpgradeConfigResponse, Map<String, dynamic>>(parallelUpgradeConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalNodePoolUpgradePolicyResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalNodePoolUpgradePolicyResponse(
      parallelUpgradeConfig: pulumi.Input.fromValue(BareMetalParallelUpgradeConfigResponse.fromMap((map['parallelUpgradeConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
