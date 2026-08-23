// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Limits for the number of nodes a Cluster can autoscale up/down to.
class AutoscalingLimitsResponse {
  /// Maximum number of nodes to scale up to.
  final pulumi.Input<int> maxServeNodes;
  /// Minimum number of nodes to scale down to.
  final pulumi.Input<int> minServeNodes;

  /// Creates a new [AutoscalingLimitsResponse].
  /// [maxServeNodes] Maximum number of nodes to scale up to.
  /// [minServeNodes] Minimum number of nodes to scale down to.
  const AutoscalingLimitsResponse({
    required this.maxServeNodes,
    required this.minServeNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxServeNodes': maxServeNodes,
      'minServeNodes': minServeNodes,
    };
  }

  factory AutoscalingLimitsResponse.fromMap(Map<String, dynamic> map) {
    return AutoscalingLimitsResponse(
      maxServeNodes: pulumi.Input.fromValue(map['maxServeNodes'] as int),
      minServeNodes: pulumi.Input.fromValue(map['minServeNodes'] as int),
    );
  }
}
