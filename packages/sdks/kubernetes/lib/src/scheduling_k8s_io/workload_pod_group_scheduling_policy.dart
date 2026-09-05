// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_pod_group_gang_scheduling_policy.dart';

/// WorkloadPodGroupSchedulingPolicy defines the scheduling policy for a group of pods managed by a workload controller. Exactly one policy must be set.
class WorkloadPodGroupSchedulingPolicy {
  /// basic specifies that standard, pod-by-pod Kubernetes scheduling behavior should be used.
  final pulumi.Input<Map<String, dynamic>?>? basic;
  /// gang specifies all-or-nothing scheduling semantics.
  final pulumi.Input<WorkloadPodGroupGangSchedulingPolicy?>? gang;

  /// Creates a new [WorkloadPodGroupSchedulingPolicy].
  /// [basic] basic specifies that standard, pod-by-pod Kubernetes scheduling behavior should be used.
  /// [gang] gang specifies all-or-nothing scheduling semantics.
  const WorkloadPodGroupSchedulingPolicy({
    this.basic,
    this.gang,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basic': ?basic,
      'gang': ?pulumi.Input.mapOptionalInputValue<WorkloadPodGroupGangSchedulingPolicy, Map<String, dynamic>>(gang, (value) => value.toMap()),
    };
  }

  factory WorkloadPodGroupSchedulingPolicy.fromMap(Map<String, dynamic> map) {
    return WorkloadPodGroupSchedulingPolicy(
      basic: (() { final guardedValue = map['basic']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      gang: (() { final guardedValue = map['gang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkloadPodGroupGangSchedulingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
