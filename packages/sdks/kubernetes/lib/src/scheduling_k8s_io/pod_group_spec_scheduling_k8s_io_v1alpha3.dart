// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disruption_mode.dart';
import 'pod_group_resource_claim_scheduling_k8s_io_v1alpha3.dart';
import 'pod_group_scheduling_constraints_scheduling_k8s_io_v1alpha3.dart';
import 'pod_group_scheduling_policy_scheduling_k8s_io_v1alpha3.dart';
import 'workload_reference.dart';

/// PodGroupSpec defines the desired state of a PodGroup.
class PodGroupSpecSchedulingK8sIoV1alpha3 {
  /// disruptionMode defines the mode in which a given PodGroup can be disrupted. Controllers are expected to fill this field by copying it from a PodGroupTemplate. One of Single, All. Defaults to Single if unset. This field is immutable.
  final pulumi.Input<DisruptionMode?>? disruptionMode;
  /// parentCompositePodGroupName contains the name of the parent composite pod group within the same namespace as this pod group. If it's nil, then this pod group is a root of a workload's hierarchy. This field is used only when the CompositePodGroup feature gate is enabled. This field is immutable.
  final pulumi.Input<String?>? parentCompositePodGroupName;
  /// preemptionPolicy is the Policy for preempting pods/podgroups with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset. When Priority Admission Controller is enabled, it populates this field from PriorityClassName, and defaults to PreemptLowerPriority if value is unset in PriorityClass. This field is immutable. This field is available only when the PodGroupPreemptionPolicy feature gate is enabled.
  final pulumi.Input<String?>? preemptionPolicy;
  /// priority is the value of priority of this pod group. Various system components use this field to find the priority of the pod group. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority. This field is immutable.
  final pulumi.Input<int?>? priority;
  /// priorityClassName defines the priority that should be considered when scheduling this pod group. Controllers are expected to fill this field by copying it from a PodGroupTemplate. Otherwise, it is validated and resolved similarly to the PriorityClassName on PodGroupTemplate (i.e. if no priority class is specified, admission control can set this to the global default priority class if it exists. Otherwise, the pod group's priority will be zero). This field is immutable.
  final pulumi.Input<String?>? priorityClassName;
  /// resourceClaims defines which ResourceClaims may be shared among Pods in the group. Pods consume the devices allocated to a PodGroup's claim by defining a claim in its own Spec.ResourceClaims that matches the PodGroup's claim exactly. The claim must have the same name and refer to the same ResourceClaim or ResourceClaimTemplate.
  ///
  /// This is a beta-level field and requires that the DRAWorkloadResourceClaims feature gate is enabled.
  ///
  /// This field is immutable.
  final pulumi.Input<List<PodGroupResourceClaimSchedulingK8sIoV1alpha3>?>? resourceClaims;
  /// schedulingConstraints defines optional scheduling constraints (e.g. topology) for this PodGroup. Controllers are expected to fill this field by copying it from a PodGroupTemplate. This field is immutable. This field is only available when the TopologyAwareWorkloadScheduling feature gate is enabled.
  final pulumi.Input<PodGroupSchedulingConstraintsSchedulingK8sIoV1alpha3?>? schedulingConstraints;
  /// schedulingPolicy defines the scheduling policy for this instance of the PodGroup. Controllers are expected to fill this field by copying it from a PodGroupTemplate.
  final pulumi.Input<PodGroupSchedulingPolicySchedulingK8sIoV1alpha3> schedulingPolicy;
  /// workloadRef references an optional PodGroup template within the Workload object that was used to create the PodGroup. This field is immutable.
  final pulumi.Input<WorkloadReference?>? workloadRef;

  /// Creates a new [PodGroupSpecSchedulingK8sIoV1alpha3].
  /// [disruptionMode] disruptionMode defines the mode in which a given PodGroup can be disrupted. Controllers are expected to fill this field by copying it from a PodGroupTemplate. One of Single, All. Defaults to Single if unset. This field is immutable.
  /// [parentCompositePodGroupName] parentCompositePodGroupName contains the name of the parent composite pod group within the same namespace as this pod group. If it's nil, then this pod group is a root of a workload's hierarchy. This field is used only when the CompositePodGroup feature gate is enabled. This field is immutable.
  /// [preemptionPolicy] preemptionPolicy is the Policy for preempting pods/podgroups with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset. When Priority Admission Controller is enabled, it populates this field from PriorityClassName, and defaults to PreemptLowerPriority if value is unset in PriorityClass. This field is immutable. This field is available only when the PodGroupPreemptionPolicy feature gate is enabled.
  /// [priority] priority is the value of priority of this pod group. Various system components use this field to find the priority of the pod group. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority. This field is immutable.
  /// [priorityClassName] priorityClassName defines the priority that should be considered when scheduling this pod group. Controllers are expected to fill this field by copying it from a PodGroupTemplate. Otherwise, it is validated and resolved similarly to the PriorityClassName on PodGroupTemplate (i.e. if no priority class is specified, admission control can set this to the global default priority class if it exists. Otherwise, the pod group's priority will be zero). This field is immutable.
  /// [resourceClaims] resourceClaims defines which ResourceClaims may be shared among Pods in the group. Pods consume the devices allocated to a PodGroup's claim by defining a claim in its own Spec.ResourceClaims that matches the PodGroup's claim exactly. The claim must have the same name and refer to the same ResourceClaim or ResourceClaimTemplate.
  /// [schedulingConstraints] schedulingConstraints defines optional scheduling constraints (e.g. topology) for this PodGroup. Controllers are expected to fill this field by copying it from a PodGroupTemplate. This field is immutable. This field is only available when the TopologyAwareWorkloadScheduling feature gate is enabled.
  /// [schedulingPolicy] schedulingPolicy defines the scheduling policy for this instance of the PodGroup. Controllers are expected to fill this field by copying it from a PodGroupTemplate.
  /// [workloadRef] workloadRef references an optional PodGroup template within the Workload object that was used to create the PodGroup. This field is immutable.
  const PodGroupSpecSchedulingK8sIoV1alpha3({
    this.disruptionMode,
    this.parentCompositePodGroupName,
    this.preemptionPolicy,
    this.priority,
    this.priorityClassName,
    this.resourceClaims,
    this.schedulingConstraints,
    required this.schedulingPolicy,
    this.workloadRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disruptionMode': ?pulumi.Input.mapOptionalInputValue<DisruptionMode, Map<String, dynamic>>(disruptionMode, (value) => value.toMap()),
      'parentCompositePodGroupName': ?parentCompositePodGroupName,
      'preemptionPolicy': ?preemptionPolicy,
      'priority': ?priority,
      'priorityClassName': ?priorityClassName,
      'resourceClaims': ?pulumi.Input.mapOptionalInputValue<List<PodGroupResourceClaimSchedulingK8sIoV1alpha3>, List<Map<String, dynamic>>>(resourceClaims, (value) => pulumi.Input.encodeList<PodGroupResourceClaimSchedulingK8sIoV1alpha3, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schedulingConstraints': ?pulumi.Input.mapOptionalInputValue<PodGroupSchedulingConstraintsSchedulingK8sIoV1alpha3, Map<String, dynamic>>(schedulingConstraints, (value) => value.toMap()),
      'schedulingPolicy': pulumi.Input.mapInputValue<PodGroupSchedulingPolicySchedulingK8sIoV1alpha3, Map<String, dynamic>>(schedulingPolicy, (value) => value.toMap()),
      'workloadRef': ?pulumi.Input.mapOptionalInputValue<WorkloadReference, Map<String, dynamic>>(workloadRef, (value) => value.toMap()),
    };
  }

  factory PodGroupSpecSchedulingK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return PodGroupSpecSchedulingK8sIoV1alpha3(
      disruptionMode: (() { final guardedValue = map['disruptionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DisruptionMode.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parentCompositePodGroupName: (() { final guardedValue = map['parentCompositePodGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preemptionPolicy: (() { final guardedValue = map['preemptionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      priorityClassName: (() { final guardedValue = map['priorityClassName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceClaims: (() { final guardedValue = map['resourceClaims']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PodGroupResourceClaimSchedulingK8sIoV1alpha3>(guardedValue, (value) => PodGroupResourceClaimSchedulingK8sIoV1alpha3.fromMap((value as Map).cast<String, dynamic>()))); })(),
      schedulingConstraints: (() { final guardedValue = map['schedulingConstraints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PodGroupSchedulingConstraintsSchedulingK8sIoV1alpha3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schedulingPolicy: pulumi.Input.fromValue(PodGroupSchedulingPolicySchedulingK8sIoV1alpha3.fromMap((map['schedulingPolicy']! as Map).cast<String, dynamic>())),
      workloadRef: (() { final guardedValue = map['workloadRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkloadReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
