// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// WorkloadPodGroupGangSchedulingPolicy defines the parameters for gang (all-or-nothing) scheduling.
class WorkloadPodGroupGangSchedulingPolicy {
  /// minCount is the minimum number of pods that must be scheduled at the same time for the scheduler to admit the entire group. This field is optional. If it is not specified, the controller should inject a context-specific sane default (e.g., parallelism for a Job). If set, it must be a positive integer.
  final pulumi.Input<int?>? minCount;

  /// Creates a new [WorkloadPodGroupGangSchedulingPolicy].
  /// [minCount] minCount is the minimum number of pods that must be scheduled at the same time for the scheduler to admit the entire group. This field is optional. If it is not specified, the controller should inject a context-specific sane default (e.g., parallelism for a Job). If set, it must be a positive integer.
  const WorkloadPodGroupGangSchedulingPolicy({
    this.minCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minCount': ?minCount,
    };
  }

  factory WorkloadPodGroupGangSchedulingPolicy.fromMap(Map<String, dynamic> map) {
    return WorkloadPodGroupGangSchedulingPolicy(
      minCount: (() { final guardedValue = map['minCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
