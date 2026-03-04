// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Standard rollout policy is the default policy for blue-green.
class StandardRolloutPolicyResponseContainerV1beta1 {
  /// Number of blue nodes to drain in a batch.
  final pulumi.Input<int> batchNodeCount;

  /// Percentage of the blue pool nodes to drain in a batch. The range of this field should be (0.0, 1.0].
  final pulumi.Input<double> batchPercentage;

  /// Soak time after each batch gets drained. Default to zero.
  final pulumi.Input<String> batchSoakDuration;

  /// Creates a new [StandardRolloutPolicyResponseContainerV1beta1].
  /// [batchNodeCount] Number of blue nodes to drain in a batch.
  /// [batchPercentage] Percentage of the blue pool nodes to drain in a batch. The range of this field should be (0.0, 1.0].
  /// [batchSoakDuration] Soak time after each batch gets drained. Default to zero.
  StandardRolloutPolicyResponseContainerV1beta1({
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

  factory StandardRolloutPolicyResponseContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return StandardRolloutPolicyResponseContainerV1beta1(
      batchNodeCount: pulumi.Input.fromValue(map['batchNodeCount'] as int),
      batchPercentage: pulumi.Input.fromValue(map['batchPercentage'] as double),
      batchSoakDuration: pulumi.Input.fromValue(
        map['batchSoakDuration'] as String,
      ),
    );
  }
}
