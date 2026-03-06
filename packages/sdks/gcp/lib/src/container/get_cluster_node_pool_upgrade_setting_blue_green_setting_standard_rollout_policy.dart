// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolUpgradeSettingBlueGreenSettingStandardRolloutPolicy {
  /// Number of blue nodes to drain in a batch.
  final pulumi.Input<int> batchNodeCount;
  /// Percentage of the blue pool nodes to drain in a batch.
  final pulumi.Input<double> batchPercentage;
  /// Soak time after each batch gets drained.
  final pulumi.Input<String> batchSoakDuration;

  /// Creates a new [GetClusterNodePoolUpgradeSettingBlueGreenSettingStandardRolloutPolicy].
  /// [batchNodeCount] Number of blue nodes to drain in a batch.
  /// [batchPercentage] Percentage of the blue pool nodes to drain in a batch.
  /// [batchSoakDuration] Soak time after each batch gets drained.
  const GetClusterNodePoolUpgradeSettingBlueGreenSettingStandardRolloutPolicy({
    required this.batchNodeCount,
    required this.batchPercentage,
    required this.batchSoakDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchNodeCount': batchNodeCount,
      'batchPercentage': batchPercentage,
      'batchSoakDuration': batchSoakDuration,
    };
  }

  factory GetClusterNodePoolUpgradeSettingBlueGreenSettingStandardRolloutPolicy.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolUpgradeSettingBlueGreenSettingStandardRolloutPolicy(
      batchNodeCount: pulumi.Input.fromValue(map['batchNodeCount'] as int),
      batchPercentage: pulumi.Input.fromValue(map['batchPercentage'] as double),
      batchSoakDuration: pulumi.Input.fromValue(map['batchSoakDuration'] as String),
    );
  }
}

