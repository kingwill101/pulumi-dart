// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_autoscaling_policy_mode_compute_v1.dart';

class NodeGroupAutoscalingPolicyComputeV1 {
  /// The maximum number of nodes that the group should have. Must be set if autoscaling is enabled. Maximum value allowed is 100.
  final pulumi.Input<int>? maxNodes;

  /// The minimum number of nodes that the group should have.
  final pulumi.Input<int>? minNodes;

  /// The autoscaling mode. Set to one of: ON, OFF, or ONLY_SCALE_OUT. For more information, see Autoscaler modes.
  final pulumi.Input<NodeGroupAutoscalingPolicyModeComputeV1>? mode;

  /// Creates a new [NodeGroupAutoscalingPolicyComputeV1].
  /// [maxNodes] The maximum number of nodes that the group should have. Must be set if autoscaling is enabled. Maximum value allowed is 100.
  /// [minNodes] The minimum number of nodes that the group should have.
  /// [mode] The autoscaling mode. Set to one of: ON, OFF, or ONLY_SCALE_OUT. For more information, see Autoscaler modes.
  NodeGroupAutoscalingPolicyComputeV1({
    this.maxNodes,
    this.minNodes,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNodes': ?maxNodes,
      'minNodes': ?minNodes,
      'mode':
          ?pulumi.Input.mapOptionalInputValue<
            NodeGroupAutoscalingPolicyModeComputeV1,
            String
          >(mode, (value) => value.wireValue),
    };
  }

  factory NodeGroupAutoscalingPolicyComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return NodeGroupAutoscalingPolicyComputeV1(
      maxNodes: (() {
        final guardedValue = map['maxNodes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minNodes: (() {
        final guardedValue = map['minNodes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NodeGroupAutoscalingPolicyModeComputeV1.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
