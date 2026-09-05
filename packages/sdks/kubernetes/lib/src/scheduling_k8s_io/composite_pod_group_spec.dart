// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'composite_disruption_mode.dart';
import 'composite_pod_group_scheduling_constraints.dart';
import 'composite_pod_group_scheduling_policy.dart';
import 'workload_reference.dart';

/// CompositePodGroupSpec defines the desired state of CompositePodGroup.
class CompositePodGroupSpec {
  /// disruptionMode defines the mode in which a given CompositePodGroup can be disrupted. Controllers are expected to fill this field by copying it from a CompositePodGroupTemplate. One of Single, All. Defaults to Single if unset. This field is immutable.
  final pulumi.Input<CompositeDisruptionMode?>? disruptionMode;
  /// parentCompositePodGroupName contains the name of the parent composite pod group within the same namespace as this composite pod group. It must be a DNS name. If it's nil, then this composite pod group is a root of a workload's hierarchy. This field is immutable.
  final pulumi.Input<String?>? parentCompositePodGroupName;
  /// preemptionPolicy is the Policy for preempting pods/podgroups with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset. When Priority Admission Controller is enabled, it populates this field from PriorityClassName, and defaults to PreemptLowerPriority if value is unset in PriorityClass. This field is immutable. This field is available only when the PodGroupPreemptionPolicy feature gate is enabled.
  final pulumi.Input<String?>? preemptionPolicy;
  /// priority is the value of priority of this composite pod group. Various system components use this field to find the priority of the composite pod group. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority. This field is immutable.
  final pulumi.Input<int?>? priority;
  /// priorityClassName defines the priority that should be considered when scheduling this CompositePodGroup. Controllers are expected to fill this field by copying it from a CompositePodGroupTemplate. If left unspecified, it is validated and resolved similarly to the PriorityClassName field in Pods (i.e. if no priority class is specified, admission control can set this to the global default priority class if it exists. Otherwise, the composite pod group's priority will be zero). This field is immutable.
  final pulumi.Input<String?>? priorityClassName;
  /// schedulingConstraints defines optional scheduling constraints (e.g. topology) for this CompositePodGroup. Controllers are expected to fill this field by copying it from a CompositePodGroupTemplate. This field is immutable.
  final pulumi.Input<CompositePodGroupSchedulingConstraints?>? schedulingConstraints;
  /// schedulingPolicy defines the scheduling policy for this instance of the CompositePodGroup. Controllers are expected to fill this field by copying it from a CompositePodGroupTemplate. This field is immutable.
  final pulumi.Input<CompositePodGroupSchedulingPolicy> schedulingPolicy;
  /// workloadRef references an optional CompositePodGroup template within the Workload object that was used to create the CompositePodGroup. This field is required. This field is immutable.
  final pulumi.Input<WorkloadReference> workloadRef;

  /// Creates a new [CompositePodGroupSpec].
  /// [disruptionMode] disruptionMode defines the mode in which a given CompositePodGroup can be disrupted. Controllers are expected to fill this field by copying it from a CompositePodGroupTemplate. One of Single, All. Defaults to Single if unset. This field is immutable.
  /// [parentCompositePodGroupName] parentCompositePodGroupName contains the name of the parent composite pod group within the same namespace as this composite pod group. It must be a DNS name. If it's nil, then this composite pod group is a root of a workload's hierarchy. This field is immutable.
  /// [preemptionPolicy] preemptionPolicy is the Policy for preempting pods/podgroups with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset. When Priority Admission Controller is enabled, it populates this field from PriorityClassName, and defaults to PreemptLowerPriority if value is unset in PriorityClass. This field is immutable. This field is available only when the PodGroupPreemptionPolicy feature gate is enabled.
  /// [priority] priority is the value of priority of this composite pod group. Various system components use this field to find the priority of the composite pod group. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority. This field is immutable.
  /// [priorityClassName] priorityClassName defines the priority that should be considered when scheduling this CompositePodGroup. Controllers are expected to fill this field by copying it from a CompositePodGroupTemplate. If left unspecified, it is validated and resolved similarly to the PriorityClassName field in Pods (i.e. if no priority class is specified, admission control can set this to the global default priority class if it exists. Otherwise, the composite pod group's priority will be zero). This field is immutable.
  /// [schedulingConstraints] schedulingConstraints defines optional scheduling constraints (e.g. topology) for this CompositePodGroup. Controllers are expected to fill this field by copying it from a CompositePodGroupTemplate. This field is immutable.
  /// [schedulingPolicy] schedulingPolicy defines the scheduling policy for this instance of the CompositePodGroup. Controllers are expected to fill this field by copying it from a CompositePodGroupTemplate. This field is immutable.
  /// [workloadRef] workloadRef references an optional CompositePodGroup template within the Workload object that was used to create the CompositePodGroup. This field is required. This field is immutable.
  const CompositePodGroupSpec({
    this.disruptionMode,
    this.parentCompositePodGroupName,
    this.preemptionPolicy,
    this.priority,
    this.priorityClassName,
    this.schedulingConstraints,
    required this.schedulingPolicy,
    required this.workloadRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disruptionMode': ?pulumi.Input.mapOptionalInputValue<CompositeDisruptionMode, Map<String, dynamic>>(disruptionMode, (value) => value.toMap()),
      'parentCompositePodGroupName': ?parentCompositePodGroupName,
      'preemptionPolicy': ?preemptionPolicy,
      'priority': ?priority,
      'priorityClassName': ?priorityClassName,
      'schedulingConstraints': ?pulumi.Input.mapOptionalInputValue<CompositePodGroupSchedulingConstraints, Map<String, dynamic>>(schedulingConstraints, (value) => value.toMap()),
      'schedulingPolicy': pulumi.Input.mapInputValue<CompositePodGroupSchedulingPolicy, Map<String, dynamic>>(schedulingPolicy, (value) => value.toMap()),
      'workloadRef': pulumi.Input.mapInputValue<WorkloadReference, Map<String, dynamic>>(workloadRef, (value) => value.toMap()),
    };
  }

  factory CompositePodGroupSpec.fromMap(Map<String, dynamic> map) {
    return CompositePodGroupSpec(
      disruptionMode: (() { final guardedValue = map['disruptionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CompositeDisruptionMode.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parentCompositePodGroupName: (() { final guardedValue = map['parentCompositePodGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preemptionPolicy: (() { final guardedValue = map['preemptionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      priorityClassName: (() { final guardedValue = map['priorityClassName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedulingConstraints: (() { final guardedValue = map['schedulingConstraints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CompositePodGroupSchedulingConstraints.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schedulingPolicy: pulumi.Input.fromValue(CompositePodGroupSchedulingPolicy.fromMap((map['schedulingPolicy']! as Map).cast<String, dynamic>())),
      workloadRef: pulumi.Input.fromValue(WorkloadReference.fromMap((map['workloadRef']! as Map).cast<String, dynamic>())),
    );
  }
}
