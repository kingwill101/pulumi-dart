// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverridesAutoscalingLimits {
  /// The maximum number of nodes for this specific replica.
  final pulumi.Input<int> maxNodes;
  /// The minimum number of nodes for this specific replica.
  final pulumi.Input<int> minNodes;

  /// Creates a new [InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverridesAutoscalingLimits].
  /// [maxNodes] The maximum number of nodes for this specific replica.
  /// [minNodes] The minimum number of nodes for this specific replica.
  InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverridesAutoscalingLimits({
    required this.maxNodes,
    required this.minNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNodes': maxNodes,
      'minNodes': minNodes,
    };
  }

  factory InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverridesAutoscalingLimits.fromMap(Map<String, dynamic> map) {
    return InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverridesAutoscalingLimits(
      maxNodes: (map['maxNodes'] as int).input(),
      minNodes: (map['minNodes'] as int).input(),
    );
  }
}

