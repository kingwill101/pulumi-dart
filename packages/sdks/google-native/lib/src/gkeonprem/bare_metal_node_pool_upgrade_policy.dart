// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_parallel_upgrade_config.dart';

/// BareMetalNodePoolUpgradePolicy defines the node pool upgrade policy.
class BareMetalNodePoolUpgradePolicy {
  /// The parallel upgrade settings for worker node pools.
  final pulumi.Input<BareMetalParallelUpgradeConfig>? parallelUpgradeConfig;

  /// Creates a new [BareMetalNodePoolUpgradePolicy].
  /// [parallelUpgradeConfig] The parallel upgrade settings for worker node pools.
  BareMetalNodePoolUpgradePolicy({this.parallelUpgradeConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parallelUpgradeConfig':
          ?pulumi.Input.mapOptionalInputValue<
            BareMetalParallelUpgradeConfig,
            Map<String, dynamic>
          >(parallelUpgradeConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalNodePoolUpgradePolicy.fromMap(Map<String, dynamic> map) {
    return BareMetalNodePoolUpgradePolicy(
      parallelUpgradeConfig: (() {
        final guardedValue = map['parallelUpgradeConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BareMetalParallelUpgradeConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
