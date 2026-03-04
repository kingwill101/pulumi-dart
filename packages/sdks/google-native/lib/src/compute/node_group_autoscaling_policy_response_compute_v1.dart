// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodeGroupAutoscalingPolicyResponseComputeV1 {
  /// The maximum number of nodes that the group should have. Must be set if autoscaling is enabled. Maximum value allowed is 100.
  final pulumi.Input<int> maxNodes;

  /// The minimum number of nodes that the group should have.
  final pulumi.Input<int> minNodes;

  /// The autoscaling mode. Set to one of: ON, OFF, or ONLY_SCALE_OUT. For more information, see Autoscaler modes.
  final pulumi.Input<String> mode;

  /// Creates a new [NodeGroupAutoscalingPolicyResponseComputeV1].
  /// [maxNodes] The maximum number of nodes that the group should have. Must be set if autoscaling is enabled. Maximum value allowed is 100.
  /// [minNodes] The minimum number of nodes that the group should have.
  /// [mode] The autoscaling mode. Set to one of: ON, OFF, or ONLY_SCALE_OUT. For more information, see Autoscaler modes.
  NodeGroupAutoscalingPolicyResponseComputeV1({
    required this.maxNodes,
    required this.minNodes,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNodes': maxNodes,
      'minNodes': minNodes,
      'mode': mode,
    };
  }

  factory NodeGroupAutoscalingPolicyResponseComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return NodeGroupAutoscalingPolicyResponseComputeV1(
      maxNodes: pulumi.Input.fromValue(map['maxNodes'] as int),
      minNodes: pulumi.Input.fromValue(map['minNodes'] as int),
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
