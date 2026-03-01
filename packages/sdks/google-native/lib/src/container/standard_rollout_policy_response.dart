// ignore_for_file: unused_element, unnecessary_cast


/// Standard rollout policy is the default policy for blue-green.
class StandardRolloutPolicyResponse {
  /// Number of blue nodes to drain in a batch.
  final int batchNodeCount;
  /// Percentage of the blue pool nodes to drain in a batch. The range of this field should be (0.0, 1.0].
  final double batchPercentage;
  /// Soak time after each batch gets drained. Default to zero.
  final String batchSoakDuration;

  /// Creates a new [StandardRolloutPolicyResponse].
  /// [batchNodeCount] Number of blue nodes to drain in a batch.
  /// [batchPercentage] Percentage of the blue pool nodes to drain in a batch. The range of this field should be (0.0, 1.0].
  /// [batchSoakDuration] Soak time after each batch gets drained. Default to zero.
  StandardRolloutPolicyResponse({
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

  factory StandardRolloutPolicyResponse.fromMap(Map<String, dynamic> map) {
    return StandardRolloutPolicyResponse(
      batchNodeCount: map['batchNodeCount'] as int,
      batchPercentage: map['batchPercentage'] as double,
      batchSoakDuration: map['batchSoakDuration'] as String,
    );
  }
}

