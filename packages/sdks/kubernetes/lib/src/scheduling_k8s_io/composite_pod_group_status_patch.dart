// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/condition_patch.dart';

/// CompositePodGroupStatus represents information about the status of a composite pod group.
class CompositePodGroupStatusPatch {
  /// conditions represent the latest observations of the CompositePodGroup's state.
  ///
  /// Known condition types: - "CompositePodGroupInitiallyScheduled": Indicates whether the overall scheduling requirement
  /// for the subtree under this CompositePodGroup has been satisfied. Once this condition
  /// transitions to True, it serves as a terminal state and will never revert to False,
  /// even if pods are subsequently deleted and group constraints are no longer met.
  /// - "DisruptionTarget": Indicates whether the CompositePodGroup is about to be terminated
  /// due to disruption such as preemption.
  ///
  /// Known reasons for the CompositePodGroupInitiallyScheduled condition: - "Unschedulable": The CompositePodGroup's subtree could not be placed due to resource constraints,
  /// affinity/anti-affinity, or topological constraints.
  /// - "SchedulerError": The CompositePodGroup cannot be scheduled due to some internal error
  /// that occurred during scheduling.
  /// - "Invalid": Set to True when kube-scheduler detects an invalid group layout during
  /// runtime validation. The `message` field details the specific layout violation (such as
  /// a detected cycle, exceeding the maximum depth of 4, or referencing multiple distinct Workloads).
  ///
  /// Known reasons for the DisruptionTarget condition: - "PreemptionByScheduler": The CompositePodGroup was targeted by the scheduler's preemption loop
  /// to free up capacity for higher-priority preemptors.
  final pulumi.Input<List<ConditionPatch>?>? conditions;

  /// Creates a new [CompositePodGroupStatusPatch].
  /// [conditions] conditions represent the latest observations of the CompositePodGroup's state.
  const CompositePodGroupStatusPatch({
    this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<ConditionPatch>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ConditionPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CompositePodGroupStatusPatch.fromMap(Map<String, dynamic> map) {
    return CompositePodGroupStatusPatch(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConditionPatch>(guardedValue, (value) => ConditionPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
