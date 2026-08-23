// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/condition.dart';
import 'pod_group_resource_claim_status.dart';

/// PodGroupStatus represents information about the status of a pod group.
class PodGroupStatus {
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
  final pulumi.Input<List<Condition>>? conditions;
  /// Status of resource claims.
  final pulumi.Input<List<PodGroupResourceClaimStatus>>? resourceClaimStatuses;

  /// Creates a new [PodGroupStatus].
  /// [conditions] Conditions represent the latest observations of the PodGroup's state.
  /// [resourceClaimStatuses] Status of resource claims.
  const PodGroupStatus({
    this.conditions,
    this.resourceClaimStatuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<Condition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<Condition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceClaimStatuses': ?pulumi.Input.mapOptionalInputValue<List<PodGroupResourceClaimStatus>, List<Map<String, dynamic>>>(resourceClaimStatuses, (value) => pulumi.Input.encodeList<PodGroupResourceClaimStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PodGroupStatus.fromMap(Map<String, dynamic> map) {
    return PodGroupStatus(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Condition>(guardedValue, (value) => Condition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceClaimStatuses: (() { final guardedValue = map['resourceClaimStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PodGroupResourceClaimStatus>(guardedValue, (value) => PodGroupResourceClaimStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
