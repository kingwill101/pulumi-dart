// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/condition_patch.dart';
import 'pod_group_resource_claim_status_patch.dart';

/// PodGroupStatus represents information about the status of a pod group.
class PodGroupStatusPatch {
  /// Conditions represent the latest observations of the PodGroup's state.
  ///
  /// Known condition types: - "PodGroupScheduled": Indicates whether the scheduling requirement has been satisfied. - "DisruptionTarget": Indicates whether the PodGroup is about to be terminated
  /// due to disruption such as preemption.
  ///
  /// Known reasons for the PodGroupScheduled condition: - "Unschedulable": The PodGroup cannot be scheduled due to resource constraints,
  /// affinity/anti-affinity rules, or insufficient capacity for the gang.
  /// - "SchedulerError": The PodGroup cannot be scheduled due to some internal error
  /// that happened during scheduling, for example due to nodeAffinity parsing errors.
  ///
  /// Known reasons for the DisruptionTarget condition: - "PreemptionByScheduler": The PodGroup was preempted by the scheduler to make room for
  /// higher-priority PodGroups or Pods.
  final pulumi.Input<List<ConditionPatch>?>? conditions;
  /// Status of resource claims.
  final pulumi.Input<List<PodGroupResourceClaimStatusPatch>?>? resourceClaimStatuses;

  /// Creates a new [PodGroupStatusPatch].
  /// [conditions] Conditions represent the latest observations of the PodGroup's state.
  /// [resourceClaimStatuses] Status of resource claims.
  const PodGroupStatusPatch({
    this.conditions,
    this.resourceClaimStatuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<ConditionPatch>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ConditionPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceClaimStatuses': ?pulumi.Input.mapOptionalInputValue<List<PodGroupResourceClaimStatusPatch>, List<Map<String, dynamic>>>(resourceClaimStatuses, (value) => pulumi.Input.encodeList<PodGroupResourceClaimStatusPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PodGroupStatusPatch.fromMap(Map<String, dynamic> map) {
    return PodGroupStatusPatch(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConditionPatch>(guardedValue, (value) => ConditionPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceClaimStatuses: (() { final guardedValue = map['resourceClaimStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PodGroupResourceClaimStatusPatch>(guardedValue, (value) => PodGroupResourceClaimStatusPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
