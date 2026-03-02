// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_selector_patch.dart';
import 'preferred_scheduling_term_patch.dart';

/// Node affinity is a group of node affinity scheduling rules.
class NodeAffinityPatch {
  /// The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding "weight" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred.
  final pulumi.Input<List<PreferredSchedulingTermPatch>>? preferredDuringSchedulingIgnoredDuringExecution;
  /// If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to an update), the system may or may not try to eventually evict the pod from its node.
  final pulumi.Input<NodeSelectorPatch>? requiredDuringSchedulingIgnoredDuringExecution;

  /// Creates a new [NodeAffinityPatch].
  /// [preferredDuringSchedulingIgnoredDuringExecution] The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding "weight" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred.
  /// [requiredDuringSchedulingIgnoredDuringExecution] If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to an update), the system may or may not try to eventually evict the pod from its node.
  NodeAffinityPatch({
    this.preferredDuringSchedulingIgnoredDuringExecution,
    this.requiredDuringSchedulingIgnoredDuringExecution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preferredDuringSchedulingIgnoredDuringExecution': ?pulumi.Input.mapOptionalInputValue<List<PreferredSchedulingTermPatch>, List<Map<String, dynamic>>>(preferredDuringSchedulingIgnoredDuringExecution, (value) => pulumi.Input.encodeList<PreferredSchedulingTermPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requiredDuringSchedulingIgnoredDuringExecution': ?pulumi.Input.mapOptionalInputValue<NodeSelectorPatch, Map<String, dynamic>>(requiredDuringSchedulingIgnoredDuringExecution, (value) => value.toMap()),
    };
  }

  factory NodeAffinityPatch.fromMap(Map<String, dynamic> map) {
    return NodeAffinityPatch(
      preferredDuringSchedulingIgnoredDuringExecution: map['preferredDuringSchedulingIgnoredDuringExecution'] == null ? null : (pulumi.Input.decodeList<PreferredSchedulingTermPatch>(map['preferredDuringSchedulingIgnoredDuringExecution'], (value) => PreferredSchedulingTermPatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requiredDuringSchedulingIgnoredDuringExecution: map['requiredDuringSchedulingIgnoredDuringExecution'] == null ? null : (NodeSelectorPatch.fromMap((map['requiredDuringSchedulingIgnoredDuringExecution'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

