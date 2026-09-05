// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pod_affinity_term_patch.dart';
import 'weighted_pod_affinity_term_patch.dart';

/// Pod affinity is a group of inter pod affinity scheduling rules.
class PodAffinityPatch {
  /// The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding "weight" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.
  final pulumi.Input<List<WeightedPodAffinityTermPatch>?>? preferredDuringSchedulingIgnoredDuringExecution;
  /// If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.
  final pulumi.Input<List<PodAffinityTermPatch>?>? requiredDuringSchedulingIgnoredDuringExecution;

  /// Creates a new [PodAffinityPatch].
  /// [preferredDuringSchedulingIgnoredDuringExecution] The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding "weight" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.
  /// [requiredDuringSchedulingIgnoredDuringExecution] If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.
  const PodAffinityPatch({
    this.preferredDuringSchedulingIgnoredDuringExecution,
    this.requiredDuringSchedulingIgnoredDuringExecution,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preferredDuringSchedulingIgnoredDuringExecution': ?pulumi.Input.mapOptionalInputValue<List<WeightedPodAffinityTermPatch>, List<Map<String, dynamic>>>(preferredDuringSchedulingIgnoredDuringExecution, (value) => pulumi.Input.encodeList<WeightedPodAffinityTermPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requiredDuringSchedulingIgnoredDuringExecution': ?pulumi.Input.mapOptionalInputValue<List<PodAffinityTermPatch>, List<Map<String, dynamic>>>(requiredDuringSchedulingIgnoredDuringExecution, (value) => pulumi.Input.encodeList<PodAffinityTermPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PodAffinityPatch.fromMap(Map<String, dynamic> map) {
    return PodAffinityPatch(
      preferredDuringSchedulingIgnoredDuringExecution: (() { final guardedValue = map['preferredDuringSchedulingIgnoredDuringExecution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WeightedPodAffinityTermPatch>(guardedValue, (value) => WeightedPodAffinityTermPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requiredDuringSchedulingIgnoredDuringExecution: (() { final guardedValue = map['requiredDuringSchedulingIgnoredDuringExecution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PodAffinityTermPatch>(guardedValue, (value) => PodAffinityTermPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
