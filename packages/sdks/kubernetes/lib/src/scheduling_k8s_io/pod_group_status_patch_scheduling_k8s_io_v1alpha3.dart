// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/condition_patch.dart';
import 'pod_group_resource_claim_status_patch_scheduling_k8s_io_v1alpha3.dart';

/// PodGroupStatus represents information about the status of a pod group.
class PodGroupStatusPatchSchedulingK8sIoV1alpha3 {
  /// conditions represent the latest observations of the PodGroup's state.
  ///
  /// Known condition types: - "PodGroupInitiallyScheduled": Indicates whether the scheduling requirement has been satisfied. Once this condition transitions to True, it serves as a terminal state and will never revert to False, even if pods are subsequently evicted and group constraints are no longer met. - "DisruptionTarget": Indicates whether the PodGroup is about to be terminated
  /// due to disruption such as preemption.
  ///
  /// Known reasons for the PodGroupInitiallyScheduled condition: - "Unschedulable": The PodGroup cannot be scheduled due to resource constraints,
  /// affinity/anti-affinity rules, or insufficient capacity for the gang.
  /// - "SchedulerError": The PodGroup cannot be scheduled due to some internal error
  /// that happened during scheduling, for example due to nodeAffinity parsing errors.
  ///
  /// Known reasons for the DisruptionTarget condition: - "PreemptionByScheduler": The PodGroup was preempted by the scheduler to make room for
  /// higher-priority PodGroups or Pods.
  final pulumi.Input<List<ConditionPatch>?>? conditions;
  /// resourceClaimStatuses is status of resource claims.
  final pulumi.Input<List<PodGroupResourceClaimStatusPatchSchedulingK8sIoV1alpha3>?>? resourceClaimStatuses;

  /// Creates a new [PodGroupStatusPatchSchedulingK8sIoV1alpha3].
  /// [conditions] conditions represent the latest observations of the PodGroup's state.
  /// [resourceClaimStatuses] resourceClaimStatuses is status of resource claims.
  const PodGroupStatusPatchSchedulingK8sIoV1alpha3({
    this.conditions,
    this.resourceClaimStatuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<ConditionPatch>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ConditionPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceClaimStatuses': ?pulumi.Input.mapOptionalInputValue<List<PodGroupResourceClaimStatusPatchSchedulingK8sIoV1alpha3>, List<Map<String, dynamic>>>(resourceClaimStatuses, (value) => pulumi.Input.encodeList<PodGroupResourceClaimStatusPatchSchedulingK8sIoV1alpha3, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PodGroupStatusPatchSchedulingK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return PodGroupStatusPatchSchedulingK8sIoV1alpha3(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConditionPatch>(guardedValue, (value) => ConditionPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceClaimStatuses: (() { final guardedValue = map['resourceClaimStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PodGroupResourceClaimStatusPatchSchedulingK8sIoV1alpha3>(guardedValue, (value) => PodGroupResourceClaimStatusPatchSchedulingK8sIoV1alpha3.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
