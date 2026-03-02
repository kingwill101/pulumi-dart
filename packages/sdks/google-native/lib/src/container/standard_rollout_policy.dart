// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Standard rollout policy is the default policy for blue-green.
class StandardRolloutPolicy {
  /// Number of blue nodes to drain in a batch.
  final pulumi.Input<int>? batchNodeCount;
  /// Percentage of the blue pool nodes to drain in a batch. The range of this field should be (0.0, 1.0].
  final pulumi.Input<double>? batchPercentage;
  /// Soak time after each batch gets drained. Default to zero.
  final pulumi.Input<String>? batchSoakDuration;

  /// Creates a new [StandardRolloutPolicy].
  /// [batchNodeCount] Number of blue nodes to drain in a batch.
  /// [batchPercentage] Percentage of the blue pool nodes to drain in a batch. The range of this field should be (0.0, 1.0].
  /// [batchSoakDuration] Soak time after each batch gets drained. Default to zero.
  StandardRolloutPolicy({
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

  factory StandardRolloutPolicy.fromMap(Map<String, dynamic> map) {
    return StandardRolloutPolicy(
      batchNodeCount: map['batchNodeCount'] == null ? null : (map['batchNodeCount']! as int).input(),
      batchPercentage: map['batchPercentage'] == null ? null : (map['batchPercentage']! as double).input(),
      batchSoakDuration: map['batchSoakDuration'] == null ? null : (map['batchSoakDuration']! as String).input(),
    );
  }
}

