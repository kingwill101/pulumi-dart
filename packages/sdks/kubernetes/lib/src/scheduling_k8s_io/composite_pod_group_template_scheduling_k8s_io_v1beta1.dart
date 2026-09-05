// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'composite_disruption_mode_scheduling_k8s_io_v1beta1.dart';
import 'composite_pod_group_scheduling_constraints_scheduling_k8s_io_v1beta1.dart';
import 'composite_pod_group_scheduling_policy_scheduling_k8s_io_v1beta1.dart';
import 'pod_group_template_scheduling_k8s_io_v1beta1.dart';

/// CompositePodGroupTemplate represents a template for a CompositePodGroup with a scheduling policy.
class CompositePodGroupTemplateSchedulingK8sIoV1beta1 {
  /// compositePodGroupTemplates is the list of templates for children CompositePodGroups. The maximum number of templates is 8. At least one entry in CompositePodGroupTemplates or PodGroupTemplates must be set.
  final pulumi.Input<List<CompositePodGroupTemplateSchedulingK8sIoV1beta1>?>? compositePodGroupTemplates;
  /// disruptionMode defines the mode in which a given CompositePodGroup can be disrupted. One of Single, All. This field is immutable.
  final pulumi.Input<CompositeDisruptionModeSchedulingK8sIoV1beta1?>? disruptionMode;
  /// name is a unique identifier for the CompositePodGroupTemplate within the Workload. It must be a DNS label. This field is required.
  final pulumi.Input<String> name;
  /// podGroupTemplates is the list of templates for children PodGroups. The maximum number of templates is 8. At least one entry in CompositePodGroupTemplates or PodGroupTemplates must be set.
  final pulumi.Input<List<PodGroupTemplateSchedulingK8sIoV1beta1>?>? podGroupTemplates;
  /// preemptionPolicy is the Policy for preempting pods/podgroups with lower priority. One of Never, PreemptLowerPriority. This field is immutable. This field is available only when the PodGroupPreemptionPolicy feature gate is enabled.
  final pulumi.Input<String?>? preemptionPolicy;
  /// priority is the value of priority of composite pod groups created from this template. Various system components use this field to find the priority of the composite pod group. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority. This field is immutable.
  final pulumi.Input<int?>? priority;
  /// priorityClassName indicates the priority that should be considered when scheduling a composite pod group created from this template. If no priority class is specified, admission control can set this to the global default priority class if it exists. Otherwise, composite pod groups created from this template will have the priority set to zero. This field is immutable.
  final pulumi.Input<String?>? priorityClassName;
  /// schedulingConstraints defines optional scheduling constraints (e.g. topology) for this CompositePodGroupTemplate. This field is immutable.
  final pulumi.Input<CompositePodGroupSchedulingConstraintsSchedulingK8sIoV1beta1?>? schedulingConstraints;
  /// schedulingPolicy defines the scheduling policy for this template.
  final pulumi.Input<CompositePodGroupSchedulingPolicySchedulingK8sIoV1beta1> schedulingPolicy;

  /// Creates a new [CompositePodGroupTemplateSchedulingK8sIoV1beta1].
  /// [compositePodGroupTemplates] compositePodGroupTemplates is the list of templates for children CompositePodGroups. The maximum number of templates is 8. At least one entry in CompositePodGroupTemplates or PodGroupTemplates must be set.
  /// [disruptionMode] disruptionMode defines the mode in which a given CompositePodGroup can be disrupted. One of Single, All. This field is immutable.
  /// [name] name is a unique identifier for the CompositePodGroupTemplate within the Workload. It must be a DNS label. This field is required.
  /// [podGroupTemplates] podGroupTemplates is the list of templates for children PodGroups. The maximum number of templates is 8. At least one entry in CompositePodGroupTemplates or PodGroupTemplates must be set.
  /// [preemptionPolicy] preemptionPolicy is the Policy for preempting pods/podgroups with lower priority. One of Never, PreemptLowerPriority. This field is immutable. This field is available only when the PodGroupPreemptionPolicy feature gate is enabled.
  /// [priority] priority is the value of priority of composite pod groups created from this template. Various system components use this field to find the priority of the composite pod group. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority. This field is immutable.
  /// [priorityClassName] priorityClassName indicates the priority that should be considered when scheduling a composite pod group created from this template. If no priority class is specified, admission control can set this to the global default priority class if it exists. Otherwise, composite pod groups created from this template will have the priority set to zero. This field is immutable.
  /// [schedulingConstraints] schedulingConstraints defines optional scheduling constraints (e.g. topology) for this CompositePodGroupTemplate. This field is immutable.
  /// [schedulingPolicy] schedulingPolicy defines the scheduling policy for this template.
  const CompositePodGroupTemplateSchedulingK8sIoV1beta1({
    this.compositePodGroupTemplates,
    this.disruptionMode,
    required this.name,
    this.podGroupTemplates,
    this.preemptionPolicy,
    this.priority,
    this.priorityClassName,
    this.schedulingConstraints,
    required this.schedulingPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compositePodGroupTemplates': ?pulumi.Input.mapOptionalInputValue<List<CompositePodGroupTemplateSchedulingK8sIoV1beta1>, List<Map<String, dynamic>>>(compositePodGroupTemplates, (value) => pulumi.Input.encodeList<CompositePodGroupTemplateSchedulingK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disruptionMode': ?pulumi.Input.mapOptionalInputValue<CompositeDisruptionModeSchedulingK8sIoV1beta1, Map<String, dynamic>>(disruptionMode, (value) => value.toMap()),
      'name': name,
      'podGroupTemplates': ?pulumi.Input.mapOptionalInputValue<List<PodGroupTemplateSchedulingK8sIoV1beta1>, List<Map<String, dynamic>>>(podGroupTemplates, (value) => pulumi.Input.encodeList<PodGroupTemplateSchedulingK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'preemptionPolicy': ?preemptionPolicy,
      'priority': ?priority,
      'priorityClassName': ?priorityClassName,
      'schedulingConstraints': ?pulumi.Input.mapOptionalInputValue<CompositePodGroupSchedulingConstraintsSchedulingK8sIoV1beta1, Map<String, dynamic>>(schedulingConstraints, (value) => value.toMap()),
      'schedulingPolicy': pulumi.Input.mapInputValue<CompositePodGroupSchedulingPolicySchedulingK8sIoV1beta1, Map<String, dynamic>>(schedulingPolicy, (value) => value.toMap()),
    };
  }

  factory CompositePodGroupTemplateSchedulingK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return CompositePodGroupTemplateSchedulingK8sIoV1beta1(
      compositePodGroupTemplates: (() { final guardedValue = map['compositePodGroupTemplates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CompositePodGroupTemplateSchedulingK8sIoV1beta1>(guardedValue, (value) => CompositePodGroupTemplateSchedulingK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      disruptionMode: (() { final guardedValue = map['disruptionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CompositeDisruptionModeSchedulingK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      podGroupTemplates: (() { final guardedValue = map['podGroupTemplates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PodGroupTemplateSchedulingK8sIoV1beta1>(guardedValue, (value) => PodGroupTemplateSchedulingK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      preemptionPolicy: (() { final guardedValue = map['preemptionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      priorityClassName: (() { final guardedValue = map['priorityClassName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedulingConstraints: (() { final guardedValue = map['schedulingConstraints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CompositePodGroupSchedulingConstraintsSchedulingK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schedulingPolicy: pulumi.Input.fromValue(CompositePodGroupSchedulingPolicySchedulingK8sIoV1beta1.fromMap((map['schedulingPolicy']! as Map).cast<String, dynamic>())),
    );
  }
}
