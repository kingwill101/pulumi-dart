// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_autoscaling_policy_mode_compute_beta.dart';

class NodeGroupAutoscalingPolicyComputeBeta {
  /// The maximum number of nodes that the group should have. Must be set if autoscaling is enabled. Maximum value allowed is 100.
  final pulumi.Input<int>? maxNodes;
  /// The minimum number of nodes that the group should have.
  final pulumi.Input<int>? minNodes;
  /// The autoscaling mode. Set to one of: ON, OFF, or ONLY_SCALE_OUT. For more information, see Autoscaler modes.
  final pulumi.Input<NodeGroupAutoscalingPolicyModeComputeBeta>? mode;

  /// Creates a new [NodeGroupAutoscalingPolicyComputeBeta].
  /// [maxNodes] The maximum number of nodes that the group should have. Must be set if autoscaling is enabled. Maximum value allowed is 100.
  /// [minNodes] The minimum number of nodes that the group should have.
  /// [mode] The autoscaling mode. Set to one of: ON, OFF, or ONLY_SCALE_OUT. For more information, see Autoscaler modes.
  const NodeGroupAutoscalingPolicyComputeBeta({
    this.maxNodes,
    this.minNodes,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNodes': ?maxNodes,
      'minNodes': ?minNodes,
      'mode': ?pulumi.Input.mapOptionalInputValue<NodeGroupAutoscalingPolicyModeComputeBeta, String>(mode, (value) => value.wireValue),
    };
  }

  factory NodeGroupAutoscalingPolicyComputeBeta.fromMap(Map<String, dynamic> map) {
    return NodeGroupAutoscalingPolicyComputeBeta(
      maxNodes: (() { final guardedValue = map['maxNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minNodes: (() { final guardedValue = map['minNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeGroupAutoscalingPolicyModeComputeBeta.fromValue(guardedValue as String)); })(),
    );
  }
}
