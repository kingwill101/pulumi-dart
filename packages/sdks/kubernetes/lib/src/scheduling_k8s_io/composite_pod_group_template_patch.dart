// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'composite_disruption_mode_patch.dart';
import 'composite_pod_group_scheduling_constraints_patch.dart';
import 'composite_pod_group_scheduling_policy_patch.dart';
import 'pod_group_template_patch_scheduling_k8s_io_v1alpha3.dart';

/// CompositePodGroupTemplate represents a template for a CompositePodGroup with a scheduling policy.
class CompositePodGroupTemplatePatch {
  /// compositePodGroupTemplates is the list of templates for children CompositePodGroups. The maximum number of templates is 8. At least one entry in CompositePodGroupTemplates or PodGroupTemplates must be set.
  final pulumi.Input<List<CompositePodGroupTemplatePatch>?>? compositePodGroupTemplates;
  /// disruptionMode defines the mode in which a given CompositePodGroup can be disrupted. One of Single, All. This field is immutable.
  final pulumi.Input<CompositeDisruptionModePatch?>? disruptionMode;
  /// name is a unique identifier for the CompositePodGroupTemplate within the Workload. It must be a DNS label. This field is required.
  final pulumi.Input<String?>? name;
  /// podGroupTemplates is the list of templates for children PodGroups. The maximum number of templates is 8. At least one entry in CompositePodGroupTemplates or PodGroupTemplates must be set.
  final pulumi.Input<List<PodGroupTemplatePatchSchedulingK8sIoV1alpha3>?>? podGroupTemplates;
  /// preemptionPolicy is the Policy for preempting pods/podgroups with lower priority. One of Never, PreemptLowerPriority. This field is immutable. This field is available only when the PodGroupPreemptionPolicy feature gate is enabled.
  final pulumi.Input<String?>? preemptionPolicy;
  /// priority is the value of priority of composite pod groups created from this template. Various system components use this field to find the priority of the composite pod group. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority. This field is immutable.
  final pulumi.Input<int?>? priority;
  /// priorityClassName indicates the priority that should be considered when scheduling a composite pod group created from this template. If no priority class is specified, admission control can set this to the global default priority class if it exists. Otherwise, composite pod groups created from this template will have the priority set to zero. This field is immutable.
  final pulumi.Input<String?>? priorityClassName;
  /// schedulingConstraints defines optional scheduling constraints (e.g. topology) for this CompositePodGroupTemplate. This field is immutable.
  final pulumi.Input<CompositePodGroupSchedulingConstraintsPatch?>? schedulingConstraints;
  /// schedulingPolicy defines the scheduling policy for this template.
  final pulumi.Input<CompositePodGroupSchedulingPolicyPatch?>? schedulingPolicy;

  /// Creates a new [CompositePodGroupTemplatePatch].
  /// [compositePodGroupTemplates] compositePodGroupTemplates is the list of templates for children CompositePodGroups. The maximum number of templates is 8. At least one entry in CompositePodGroupTemplates or PodGroupTemplates must be set.
  /// [disruptionMode] disruptionMode defines the mode in which a given CompositePodGroup can be disrupted. One of Single, All. This field is immutable.
  /// [name] name is a unique identifier for the CompositePodGroupTemplate within the Workload. It must be a DNS label. This field is required.
  /// [podGroupTemplates] podGroupTemplates is the list of templates for children PodGroups. The maximum number of templates is 8. At least one entry in CompositePodGroupTemplates or PodGroupTemplates must be set.
  /// [preemptionPolicy] preemptionPolicy is the Policy for preempting pods/podgroups with lower priority. One of Never, PreemptLowerPriority. This field is immutable. This field is available only when the PodGroupPreemptionPolicy feature gate is enabled.
  /// [priority] priority is the value of priority of composite pod groups created from this template. Various system components use this field to find the priority of the composite pod group. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority. This field is immutable.
  /// [priorityClassName] priorityClassName indicates the priority that should be considered when scheduling a composite pod group created from this template. If no priority class is specified, admission control can set this to the global default priority class if it exists. Otherwise, composite pod groups created from this template will have the priority set to zero. This field is immutable.
  /// [schedulingConstraints] schedulingConstraints defines optional scheduling constraints (e.g. topology) for this CompositePodGroupTemplate. This field is immutable.
  /// [schedulingPolicy] schedulingPolicy defines the scheduling policy for this template.
  const CompositePodGroupTemplatePatch({
    this.compositePodGroupTemplates,
    this.disruptionMode,
    this.name,
    this.podGroupTemplates,
    this.preemptionPolicy,
    this.priority,
    this.priorityClassName,
    this.schedulingConstraints,
    this.schedulingPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compositePodGroupTemplates': ?pulumi.Input.mapOptionalInputValue<List<CompositePodGroupTemplatePatch>, List<Map<String, dynamic>>>(compositePodGroupTemplates, (value) => pulumi.Input.encodeList<CompositePodGroupTemplatePatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disruptionMode': ?pulumi.Input.mapOptionalInputValue<CompositeDisruptionModePatch, Map<String, dynamic>>(disruptionMode, (value) => value.toMap()),
      'name': ?name,
      'podGroupTemplates': ?pulumi.Input.mapOptionalInputValue<List<PodGroupTemplatePatchSchedulingK8sIoV1alpha3>, List<Map<String, dynamic>>>(podGroupTemplates, (value) => pulumi.Input.encodeList<PodGroupTemplatePatchSchedulingK8sIoV1alpha3, Map<String, dynamic>>(value, (value) => value.toMap())),
      'preemptionPolicy': ?preemptionPolicy,
      'priority': ?priority,
      'priorityClassName': ?priorityClassName,
      'schedulingConstraints': ?pulumi.Input.mapOptionalInputValue<CompositePodGroupSchedulingConstraintsPatch, Map<String, dynamic>>(schedulingConstraints, (value) => value.toMap()),
      'schedulingPolicy': ?pulumi.Input.mapOptionalInputValue<CompositePodGroupSchedulingPolicyPatch, Map<String, dynamic>>(schedulingPolicy, (value) => value.toMap()),
    };
  }

  factory CompositePodGroupTemplatePatch.fromMap(Map<String, dynamic> map) {
    return CompositePodGroupTemplatePatch(
      compositePodGroupTemplates: (() { final guardedValue = map['compositePodGroupTemplates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CompositePodGroupTemplatePatch>(guardedValue, (value) => CompositePodGroupTemplatePatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      disruptionMode: (() { final guardedValue = map['disruptionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CompositeDisruptionModePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      podGroupTemplates: (() { final guardedValue = map['podGroupTemplates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PodGroupTemplatePatchSchedulingK8sIoV1alpha3>(guardedValue, (value) => PodGroupTemplatePatchSchedulingK8sIoV1alpha3.fromMap((value as Map).cast<String, dynamic>()))); })(),
      preemptionPolicy: (() { final guardedValue = map['preemptionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      priorityClassName: (() { final guardedValue = map['priorityClassName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedulingConstraints: (() { final guardedValue = map['schedulingConstraints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CompositePodGroupSchedulingConstraintsPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schedulingPolicy: (() { final guardedValue = map['schedulingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CompositePodGroupSchedulingPolicyPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
