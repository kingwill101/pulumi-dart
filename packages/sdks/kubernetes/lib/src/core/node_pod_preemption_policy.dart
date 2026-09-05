// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NodePodPreemptionPolicy defines the node-level policies governing preemption for pods on this node.
class NodePodPreemptionPolicy {
  /// DisableResizePreemption lists the owners (e.g., autoscalers, operators, administrators) that have requested to disable scheduler and Kubelet preemption for in-place pod resize on this node. If this list is non-empty, resize-induced preemption is disabled on this node. This is an alpha field and requires enabling the InPlacePodVerticalScalingSchedulerPreemption feature gate.
  final pulumi.Input<List<String>?>? disableResizePreemption;

  /// Creates a new [NodePodPreemptionPolicy].
  /// [disableResizePreemption] DisableResizePreemption lists the owners (e.g., autoscalers, operators, administrators) that have requested to disable scheduler and Kubelet preemption for in-place pod resize on this node. If this list is non-empty, resize-induced preemption is disabled on this node. This is an alpha field and requires enabling the InPlacePodVerticalScalingSchedulerPreemption feature gate.
  const NodePodPreemptionPolicy({
    this.disableResizePreemption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableResizePreemption': ?disableResizePreemption,
    };
  }

  factory NodePodPreemptionPolicy.fromMap(Map<String, dynamic> map) {
    return NodePodPreemptionPolicy(
      disableResizePreemption: (() { final guardedValue = map['disableResizePreemption']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
