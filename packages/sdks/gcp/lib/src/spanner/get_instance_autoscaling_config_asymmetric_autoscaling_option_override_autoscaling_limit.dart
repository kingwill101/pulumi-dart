// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrideAutoscalingLimit {
  /// The maximum number of nodes for this specific replica.
  final pulumi.Input<int> maxNodes;
  /// The minimum number of nodes for this specific replica.
  final pulumi.Input<int> minNodes;

  /// Creates a new [GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrideAutoscalingLimit].
  /// [maxNodes] The maximum number of nodes for this specific replica.
  /// [minNodes] The minimum number of nodes for this specific replica.
  GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrideAutoscalingLimit({
    required this.maxNodes,
    required this.minNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNodes': maxNodes,
      'minNodes': minNodes,
    };
  }

  factory GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrideAutoscalingLimit.fromMap(Map<String, dynamic> map) {
    return GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrideAutoscalingLimit(
      maxNodes: pulumi.Input.fromValue(map['maxNodes'] as int),
      minNodes: pulumi.Input.fromValue(map['minNodes'] as int),
    );
  }
}

