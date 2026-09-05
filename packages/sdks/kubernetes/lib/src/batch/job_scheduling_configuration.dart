// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../scheduling_k8s_io/workload_pod_group_disruption_mode.dart';
import '../scheduling_k8s_io/workload_pod_group_resource_claim.dart';
import '../scheduling_k8s_io/workload_pod_group_scheduling_constraints.dart';
import '../scheduling_k8s_io/workload_pod_group_scheduling_policy.dart';

/// JobSchedulingConfiguration composes the reusable workload-aware scheduling building blocks.
class JobSchedulingConfiguration {
  /// DisruptionMode defines the mode in which the Job's pods can be disrupted. One of Single, All. This field is immutable after creation: it may not be added or removed, and the selected mode may not be changed.
  final pulumi.Input<WorkloadPodGroupDisruptionMode?>? disruptionMode;
  /// ResourceClaims defines which ResourceClaims may be shared among Pods in the Job. Pods consume the devices allocated to a PodGroup's claim by defining a claim in its own Spec.ResourceClaims that matches the PodGroup's claim exactly. The claim must have the same name and refer to the same ResourceClaim or ResourceClaimTemplate. At most 4 claims may be set, matching the limit on the resulting PodGroup. This list is immutable after creation: entries may neither be added, removed, nor modified.
  final pulumi.Input<List<WorkloadPodGroupResourceClaim>?>? resourceClaims;
  /// SchedulingConstraints defines scheduling constraints (e.g. topology) for the Job's pods. This field is immutable after creation.
  final pulumi.Input<WorkloadPodGroupSchedulingConstraints?>? schedulingConstraints;
  /// SchedulingPolicy defines the scheduling policy for this Job. Exactly one of Basic or Gang must be set. This field is immutable after creation: the policy may not be added or removed. The policy variant (basic/gang) is frozen by hand-written validation; only schedulingPolicy.gang.minCount may be changed.
  final pulumi.Input<WorkloadPodGroupSchedulingPolicy?>? schedulingPolicy;

  /// Creates a new [JobSchedulingConfiguration].
  /// [disruptionMode] DisruptionMode defines the mode in which the Job's pods can be disrupted. One of Single, All. This field is immutable after creation: it may not be added or removed, and the selected mode may not be changed.
  /// [resourceClaims] ResourceClaims defines which ResourceClaims may be shared among Pods in the Job. Pods consume the devices allocated to a PodGroup's claim by defining a claim in its own Spec.ResourceClaims that matches the PodGroup's claim exactly. The claim must have the same name and refer to the same ResourceClaim or ResourceClaimTemplate. At most 4 claims may be set, matching the limit on the resulting PodGroup. This list is immutable after creation: entries may neither be added, removed, nor modified.
  /// [schedulingConstraints] SchedulingConstraints defines scheduling constraints (e.g. topology) for the Job's pods. This field is immutable after creation.
  /// [schedulingPolicy] SchedulingPolicy defines the scheduling policy for this Job. Exactly one of Basic or Gang must be set. This field is immutable after creation: the policy may not be added or removed. The policy variant (basic/gang) is frozen by hand-written validation; only schedulingPolicy.gang.minCount may be changed.
  const JobSchedulingConfiguration({
    this.disruptionMode,
    this.resourceClaims,
    this.schedulingConstraints,
    this.schedulingPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disruptionMode': ?pulumi.Input.mapOptionalInputValue<WorkloadPodGroupDisruptionMode, Map<String, dynamic>>(disruptionMode, (value) => value.toMap()),
      'resourceClaims': ?pulumi.Input.mapOptionalInputValue<List<WorkloadPodGroupResourceClaim>, List<Map<String, dynamic>>>(resourceClaims, (value) => pulumi.Input.encodeList<WorkloadPodGroupResourceClaim, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schedulingConstraints': ?pulumi.Input.mapOptionalInputValue<WorkloadPodGroupSchedulingConstraints, Map<String, dynamic>>(schedulingConstraints, (value) => value.toMap()),
      'schedulingPolicy': ?pulumi.Input.mapOptionalInputValue<WorkloadPodGroupSchedulingPolicy, Map<String, dynamic>>(schedulingPolicy, (value) => value.toMap()),
    };
  }

  factory JobSchedulingConfiguration.fromMap(Map<String, dynamic> map) {
    return JobSchedulingConfiguration(
      disruptionMode: (() { final guardedValue = map['disruptionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkloadPodGroupDisruptionMode.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceClaims: (() { final guardedValue = map['resourceClaims']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkloadPodGroupResourceClaim>(guardedValue, (value) => WorkloadPodGroupResourceClaim.fromMap((value as Map).cast<String, dynamic>()))); })(),
      schedulingConstraints: (() { final guardedValue = map['schedulingConstraints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkloadPodGroupSchedulingConstraints.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schedulingPolicy: (() { final guardedValue = map['schedulingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkloadPodGroupSchedulingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
