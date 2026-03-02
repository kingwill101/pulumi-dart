// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Limits for the number of nodes a Cluster can autoscale up/down to.
class AutoscalingLimits {
  /// Maximum number of nodes to scale up to.
  final pulumi.Input<int> maxServeNodes;
  /// Minimum number of nodes to scale down to.
  final pulumi.Input<int> minServeNodes;

  /// Creates a new [AutoscalingLimits].
  /// [maxServeNodes] Maximum number of nodes to scale up to.
  /// [minServeNodes] Minimum number of nodes to scale down to.
  AutoscalingLimits({
    required this.maxServeNodes,
    required this.minServeNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxServeNodes': maxServeNodes,
      'minServeNodes': minServeNodes,
    };
  }

  factory AutoscalingLimits.fromMap(Map<String, dynamic> map) {
    return AutoscalingLimits(
      maxServeNodes: (map['maxServeNodes'] as int).input(),
      minServeNodes: (map['minServeNodes'] as int).input(),
    );
  }
}

