// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pod_group_resource_claim.dart';
import 'pod_group_scheduling_constraints.dart';
import 'pod_group_scheduling_policy.dart';
import 'pod_group_template_reference.dart';

/// PodGroupSpec defines the desired state of a PodGroup.
class PodGroupSpec {
  /// DisruptionMode defines the mode in which a given PodGroup can be disrupted. Controllers are expected to fill this field by copying it from a PodGroupTemplate. One of Pod, PodGroup. Defaults to Pod if unset. This field is immutable. This field is available only when the WorkloadAwarePreemption feature gate is enabled.
  final pulumi.Input<String>? disruptionMode;
  /// PodGroupTemplateRef references an optional PodGroup template within other object (e.g. Workload) that was used to create the PodGroup. This field is immutable.
  final pulumi.Input<PodGroupTemplateReference>? podGroupTemplateRef;
  /// Priority is the value of priority of this pod group. Various system components use this field to find the priority of the pod group. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority. This field is immutable. This field is available only when the WorkloadAwarePreemption feature gate is enabled.
  final pulumi.Input<int>? priority;
  /// PriorityClassName defines the priority that should be considered when scheduling this pod group. Controllers are expected to fill this field by copying it from a PodGroupTemplate. Otherwise, it is validated and resolved similarly to the PriorityClassName on PodGroupTemplate (i.e. if no priority class is specified, admission control can set this to the global default priority class if it exists. Otherwise, the pod group's priority will be zero). This field is immutable. This field is available only when the WorkloadAwarePreemption feature gate is enabled.
  final pulumi.Input<String>? priorityClassName;
  /// ResourceClaims defines which ResourceClaims may be shared among Pods in the group. Pods consume the devices allocated to a PodGroup's claim by defining a claim in its own Spec.ResourceClaims that matches the PodGroup's claim exactly. The claim must have the same name and refer to the same ResourceClaim or ResourceClaimTemplate.
  ///
  /// This is an alpha-level field and requires that the DRAWorkloadResourceClaims feature gate is enabled.
  ///
  /// This field is immutable.
  final pulumi.Input<List<PodGroupResourceClaim>>? resourceClaims;
  /// SchedulingConstraints defines optional scheduling constraints (e.g. topology) for this PodGroup. Controllers are expected to fill this field by copying it from a PodGroupTemplate. This field is immutable. This field is only available when the TopologyAwareWorkloadScheduling feature gate is enabled.
  final pulumi.Input<PodGroupSchedulingConstraints>? schedulingConstraints;
  /// SchedulingPolicy defines the scheduling policy for this instance of the PodGroup. Controllers are expected to fill this field by copying it from a PodGroupTemplate. This field is immutable.
  final pulumi.Input<PodGroupSchedulingPolicy> schedulingPolicy;

  /// Creates a new [PodGroupSpec].
  /// [disruptionMode] DisruptionMode defines the mode in which a given PodGroup can be disrupted. Controllers are expected to fill this field by copying it from a PodGroupTemplate. One of Pod, PodGroup. Defaults to Pod if unset. This field is immutable. This field is available only when the WorkloadAwarePreemption feature gate is enabled.
  /// [podGroupTemplateRef] PodGroupTemplateRef references an optional PodGroup template within other object (e.g. Workload) that was used to create the PodGroup. This field is immutable.
  /// [priority] Priority is the value of priority of this pod group. Various system components use this field to find the priority of the pod group. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority. This field is immutable. This field is available only when the WorkloadAwarePreemption feature gate is enabled.
  /// [priorityClassName] PriorityClassName defines the priority that should be considered when scheduling this pod group. Controllers are expected to fill this field by copying it from a PodGroupTemplate. Otherwise, it is validated and resolved similarly to the PriorityClassName on PodGroupTemplate (i.e. if no priority class is specified, admission control can set this to the global default priority class if it exists. Otherwise, the pod group's priority will be zero). This field is immutable. This field is available only when the WorkloadAwarePreemption feature gate is enabled.
  /// [resourceClaims] ResourceClaims defines which ResourceClaims may be shared among Pods in the group. Pods consume the devices allocated to a PodGroup's claim by defining a claim in its own Spec.ResourceClaims that matches the PodGroup's claim exactly. The claim must have the same name and refer to the same ResourceClaim or ResourceClaimTemplate.
  /// [schedulingConstraints] SchedulingConstraints defines optional scheduling constraints (e.g. topology) for this PodGroup. Controllers are expected to fill this field by copying it from a PodGroupTemplate. This field is immutable. This field is only available when the TopologyAwareWorkloadScheduling feature gate is enabled.
  /// [schedulingPolicy] SchedulingPolicy defines the scheduling policy for this instance of the PodGroup. Controllers are expected to fill this field by copying it from a PodGroupTemplate. This field is immutable.
  const PodGroupSpec({
    this.disruptionMode,
    this.podGroupTemplateRef,
    this.priority,
    this.priorityClassName,
    this.resourceClaims,
    this.schedulingConstraints,
    required this.schedulingPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disruptionMode': ?disruptionMode,
      'podGroupTemplateRef': ?pulumi.Input.mapOptionalInputValue<PodGroupTemplateReference, Map<String, dynamic>>(podGroupTemplateRef, (value) => value.toMap()),
      'priority': ?priority,
      'priorityClassName': ?priorityClassName,
      'resourceClaims': ?pulumi.Input.mapOptionalInputValue<List<PodGroupResourceClaim>, List<Map<String, dynamic>>>(resourceClaims, (value) => pulumi.Input.encodeList<PodGroupResourceClaim, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schedulingConstraints': ?pulumi.Input.mapOptionalInputValue<PodGroupSchedulingConstraints, Map<String, dynamic>>(schedulingConstraints, (value) => value.toMap()),
      'schedulingPolicy': pulumi.Input.mapInputValue<PodGroupSchedulingPolicy, Map<String, dynamic>>(schedulingPolicy, (value) => value.toMap()),
    };
  }

  factory PodGroupSpec.fromMap(Map<String, dynamic> map) {
    return PodGroupSpec(
      disruptionMode: (() { final guardedValue = map['disruptionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      podGroupTemplateRef: (() { final guardedValue = map['podGroupTemplateRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PodGroupTemplateReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      priorityClassName: (() { final guardedValue = map['priorityClassName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceClaims: (() { final guardedValue = map['resourceClaims']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PodGroupResourceClaim>(guardedValue, (value) => PodGroupResourceClaim.fromMap((value as Map).cast<String, dynamic>()))); })(),
      schedulingConstraints: (() { final guardedValue = map['schedulingConstraints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PodGroupSchedulingConstraints.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schedulingPolicy: pulumi.Input.fromValue(PodGroupSchedulingPolicy.fromMap((map['schedulingPolicy']! as Map).cast<String, dynamic>())),
    );
  }
}
