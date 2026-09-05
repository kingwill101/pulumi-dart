// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pod_group_resource_claim.dart';
import 'pod_group_scheduling_constraints.dart';
import 'pod_group_scheduling_policy.dart';

/// PodGroupTemplate represents a template for a set of pods with a scheduling policy.
class PodGroupTemplate {
  /// DisruptionMode defines the mode in which a given PodGroup can be disrupted. One of Pod, PodGroup. This field is available only when the WorkloadAwarePreemption feature gate is enabled.
  final pulumi.Input<String?>? disruptionMode;
  /// Name is a unique identifier for the PodGroupTemplate within the Workload. It must be a DNS label. This field is immutable.
  final pulumi.Input<String> name;
  /// Priority is the value of priority of pod groups created from this template. Various system components use this field to find the priority of the pod group. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority. This field is available only when the WorkloadAwarePreemption feature gate is enabled.
  final pulumi.Input<int?>? priority;
  /// PriorityClassName indicates the priority that should be considered when scheduling a pod group created from this template. If no priority class is specified, admission control can set this to the global default priority class if it exists. Otherwise, pod groups created from this template will have the priority set to zero. This field is available only when the WorkloadAwarePreemption feature gate is enabled.
  final pulumi.Input<String?>? priorityClassName;
  /// ResourceClaims defines which ResourceClaims may be shared among Pods in the group. Pods consume the devices allocated to a PodGroup's claim by defining a claim in its own Spec.ResourceClaims that matches the PodGroup's claim exactly. The claim must have the same name and refer to the same ResourceClaim or ResourceClaimTemplate.
  ///
  /// This is an alpha-level field and requires that the DRAWorkloadResourceClaims feature gate is enabled.
  ///
  /// This field is immutable.
  final pulumi.Input<List<PodGroupResourceClaim>?>? resourceClaims;
  /// SchedulingConstraints defines optional scheduling constraints (e.g. topology) for this PodGroupTemplate. This field is only available when the TopologyAwareWorkloadScheduling feature gate is enabled.
  final pulumi.Input<PodGroupSchedulingConstraints?>? schedulingConstraints;
  /// SchedulingPolicy defines the scheduling policy for this PodGroupTemplate.
  final pulumi.Input<PodGroupSchedulingPolicy> schedulingPolicy;

  /// Creates a new [PodGroupTemplate].
  /// [disruptionMode] DisruptionMode defines the mode in which a given PodGroup can be disrupted. One of Pod, PodGroup. This field is available only when the WorkloadAwarePreemption feature gate is enabled.
  /// [name] Name is a unique identifier for the PodGroupTemplate within the Workload. It must be a DNS label. This field is immutable.
  /// [priority] Priority is the value of priority of pod groups created from this template. Various system components use this field to find the priority of the pod group. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority. This field is available only when the WorkloadAwarePreemption feature gate is enabled.
  /// [priorityClassName] PriorityClassName indicates the priority that should be considered when scheduling a pod group created from this template. If no priority class is specified, admission control can set this to the global default priority class if it exists. Otherwise, pod groups created from this template will have the priority set to zero. This field is available only when the WorkloadAwarePreemption feature gate is enabled.
  /// [resourceClaims] ResourceClaims defines which ResourceClaims may be shared among Pods in the group. Pods consume the devices allocated to a PodGroup's claim by defining a claim in its own Spec.ResourceClaims that matches the PodGroup's claim exactly. The claim must have the same name and refer to the same ResourceClaim or ResourceClaimTemplate.
  /// [schedulingConstraints] SchedulingConstraints defines optional scheduling constraints (e.g. topology) for this PodGroupTemplate. This field is only available when the TopologyAwareWorkloadScheduling feature gate is enabled.
  /// [schedulingPolicy] SchedulingPolicy defines the scheduling policy for this PodGroupTemplate.
  const PodGroupTemplate({
    this.disruptionMode,
    required this.name,
    this.priority,
    this.priorityClassName,
    this.resourceClaims,
    this.schedulingConstraints,
    required this.schedulingPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disruptionMode': ?disruptionMode,
      'name': name,
      'priority': ?priority,
      'priorityClassName': ?priorityClassName,
      'resourceClaims': ?pulumi.Input.mapOptionalInputValue<List<PodGroupResourceClaim>, List<Map<String, dynamic>>>(resourceClaims, (value) => pulumi.Input.encodeList<PodGroupResourceClaim, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schedulingConstraints': ?pulumi.Input.mapOptionalInputValue<PodGroupSchedulingConstraints, Map<String, dynamic>>(schedulingConstraints, (value) => value.toMap()),
      'schedulingPolicy': pulumi.Input.mapInputValue<PodGroupSchedulingPolicy, Map<String, dynamic>>(schedulingPolicy, (value) => value.toMap()),
    };
  }

  factory PodGroupTemplate.fromMap(Map<String, dynamic> map) {
    return PodGroupTemplate(
      disruptionMode: (() { final guardedValue = map['disruptionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      priorityClassName: (() { final guardedValue = map['priorityClassName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceClaims: (() { final guardedValue = map['resourceClaims']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PodGroupResourceClaim>(guardedValue, (value) => PodGroupResourceClaim.fromMap((value as Map).cast<String, dynamic>()))); })(),
      schedulingConstraints: (() { final guardedValue = map['schedulingConstraints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PodGroupSchedulingConstraints.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schedulingPolicy: pulumi.Input.fromValue(PodGroupSchedulingPolicy.fromMap((map['schedulingPolicy']! as Map).cast<String, dynamic>())),
    );
  }
}
