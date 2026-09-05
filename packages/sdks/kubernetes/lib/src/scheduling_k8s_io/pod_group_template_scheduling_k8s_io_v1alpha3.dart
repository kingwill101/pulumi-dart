// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disruption_mode.dart';
import 'pod_group_resource_claim_scheduling_k8s_io_v1alpha3.dart';
import 'pod_group_scheduling_constraints_scheduling_k8s_io_v1alpha3.dart';
import 'pod_group_scheduling_policy_scheduling_k8s_io_v1alpha3.dart';

/// PodGroupTemplate represents a template for a set of pods with a scheduling policy.
class PodGroupTemplateSchedulingK8sIoV1alpha3 {
  /// disruptionMode defines the mode in which a given PodGroup can be disrupted. One of Single, All. This field is immutable.
  final pulumi.Input<DisruptionMode?>? disruptionMode;
  /// name is a unique identifier for the PodGroupTemplate within the Workload. It must be a DNS label. This field is immutable.
  final pulumi.Input<String> name;
  /// preemptionPolicy is the Policy for preempting pods/podgroups with lower priority. One of Never, PreemptLowerPriority. This field is immutable. This field is available only when the PodGroupPreemptionPolicy feature gate is enabled.
  final pulumi.Input<String?>? preemptionPolicy;
  /// priority is the value of priority of pod groups created from this template. Various system components use this field to find the priority of the pod group. The higher the value, the higher the priority. This field is immutable.
  final pulumi.Input<int?>? priority;
  /// priorityClassName indicates the priority that should be considered when scheduling a pod group created from this template. This field is immutable.
  final pulumi.Input<String?>? priorityClassName;
  /// resourceClaims defines which ResourceClaims may be shared among Pods in the group. Pods consume the devices allocated to a PodGroup's claim by defining a claim in its own Spec.ResourceClaims that matches the PodGroup's claim exactly. The claim must have the same name and refer to the same ResourceClaim or ResourceClaimTemplate.
  ///
  /// This is a beta-level field and requires that the DRAWorkloadResourceClaims feature gate is enabled.
  ///
  /// This field is immutable.
  final pulumi.Input<List<PodGroupResourceClaimSchedulingK8sIoV1alpha3>?>? resourceClaims;
  /// schedulingConstraints defines optional scheduling constraints (e.g. topology) for this PodGroupTemplate. This field is only available when the TopologyAwareWorkloadScheduling feature gate is enabled. This field is immutable.
  final pulumi.Input<PodGroupSchedulingConstraintsSchedulingK8sIoV1alpha3?>? schedulingConstraints;
  /// schedulingPolicy defines the scheduling policy for this PodGroupTemplate.
  final pulumi.Input<PodGroupSchedulingPolicySchedulingK8sIoV1alpha3> schedulingPolicy;

  /// Creates a new [PodGroupTemplateSchedulingK8sIoV1alpha3].
  /// [disruptionMode] disruptionMode defines the mode in which a given PodGroup can be disrupted. One of Single, All. This field is immutable.
  /// [name] name is a unique identifier for the PodGroupTemplate within the Workload. It must be a DNS label. This field is immutable.
  /// [preemptionPolicy] preemptionPolicy is the Policy for preempting pods/podgroups with lower priority. One of Never, PreemptLowerPriority. This field is immutable. This field is available only when the PodGroupPreemptionPolicy feature gate is enabled.
  /// [priority] priority is the value of priority of pod groups created from this template. Various system components use this field to find the priority of the pod group. The higher the value, the higher the priority. This field is immutable.
  /// [priorityClassName] priorityClassName indicates the priority that should be considered when scheduling a pod group created from this template. This field is immutable.
  /// [resourceClaims] resourceClaims defines which ResourceClaims may be shared among Pods in the group. Pods consume the devices allocated to a PodGroup's claim by defining a claim in its own Spec.ResourceClaims that matches the PodGroup's claim exactly. The claim must have the same name and refer to the same ResourceClaim or ResourceClaimTemplate.
  /// [schedulingConstraints] schedulingConstraints defines optional scheduling constraints (e.g. topology) for this PodGroupTemplate. This field is only available when the TopologyAwareWorkloadScheduling feature gate is enabled. This field is immutable.
  /// [schedulingPolicy] schedulingPolicy defines the scheduling policy for this PodGroupTemplate.
  const PodGroupTemplateSchedulingK8sIoV1alpha3({
    this.disruptionMode,
    required this.name,
    this.preemptionPolicy,
    this.priority,
    this.priorityClassName,
    this.resourceClaims,
    this.schedulingConstraints,
    required this.schedulingPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disruptionMode': ?pulumi.Input.mapOptionalInputValue<DisruptionMode, Map<String, dynamic>>(disruptionMode, (value) => value.toMap()),
      'name': name,
      'preemptionPolicy': ?preemptionPolicy,
      'priority': ?priority,
      'priorityClassName': ?priorityClassName,
      'resourceClaims': ?pulumi.Input.mapOptionalInputValue<List<PodGroupResourceClaimSchedulingK8sIoV1alpha3>, List<Map<String, dynamic>>>(resourceClaims, (value) => pulumi.Input.encodeList<PodGroupResourceClaimSchedulingK8sIoV1alpha3, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schedulingConstraints': ?pulumi.Input.mapOptionalInputValue<PodGroupSchedulingConstraintsSchedulingK8sIoV1alpha3, Map<String, dynamic>>(schedulingConstraints, (value) => value.toMap()),
      'schedulingPolicy': pulumi.Input.mapInputValue<PodGroupSchedulingPolicySchedulingK8sIoV1alpha3, Map<String, dynamic>>(schedulingPolicy, (value) => value.toMap()),
    };
  }

  factory PodGroupTemplateSchedulingK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return PodGroupTemplateSchedulingK8sIoV1alpha3(
      disruptionMode: (() { final guardedValue = map['disruptionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DisruptionMode.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      preemptionPolicy: (() { final guardedValue = map['preemptionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      priorityClassName: (() { final guardedValue = map['priorityClassName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceClaims: (() { final guardedValue = map['resourceClaims']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PodGroupResourceClaimSchedulingK8sIoV1alpha3>(guardedValue, (value) => PodGroupResourceClaimSchedulingK8sIoV1alpha3.fromMap((value as Map).cast<String, dynamic>()))); })(),
      schedulingConstraints: (() { final guardedValue = map['schedulingConstraints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PodGroupSchedulingConstraintsSchedulingK8sIoV1alpha3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schedulingPolicy: pulumi.Input.fromValue(PodGroupSchedulingPolicySchedulingK8sIoV1alpha3.fromMap((map['schedulingPolicy']! as Map).cast<String, dynamic>())),
    );
  }
}
