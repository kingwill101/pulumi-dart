// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy {
  /// Number of blue nodes to drain in a batch.
  final pulumi.Input<int>? batchNodeCount;
  /// Percentage of the blue pool nodes to drain in a batch.
  final pulumi.Input<double>? batchPercentage;
  /// Soak time after each batch gets drained.
  final pulumi.Input<String>? batchSoakDuration;

  /// Creates a new [NodePoolUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy].
  /// [batchNodeCount] Number of blue nodes to drain in a batch.
  /// [batchPercentage] Percentage of the blue pool nodes to drain in a batch.
  /// [batchSoakDuration] Soak time after each batch gets drained.
  NodePoolUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy({
    this.batchNodeCount,
    this.batchPercentage,
    this.batchSoakDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchNodeCount': ?batchNodeCount,
      'batchPercentage': ?batchPercentage,
      'batchSoakDuration': ?batchSoakDuration,
    };
  }

  factory NodePoolUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy.fromMap(Map<String, dynamic> map) {
    return NodePoolUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy(
      batchNodeCount: map['batchNodeCount'] == null ? null : (map['batchNodeCount']! as int).input(),
      batchPercentage: map['batchPercentage'] == null ? null : (map['batchPercentage']! as double).input(),
      batchSoakDuration: map['batchSoakDuration'] == null ? null : (map['batchSoakDuration']! as String).input(),
    );
  }
}

