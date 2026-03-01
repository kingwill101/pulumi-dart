// ignore_for_file: unused_element, unnecessary_cast

import 'status_response_bigqueryreservation_v1beta1.dart';

/// Result data returned by getCapacityCommitment.
class GetCapacityCommitmentBigqueryreservationV1beta1Result {
  /// The end of the current commitment period. It is applicable only for ACTIVE capacity commitments.
  final String commitmentEndTime;
  /// The start of the current commitment period. It is applicable only for ACTIVE capacity commitments.
  final String commitmentStartTime;
  /// For FAILED commitment plan, provides the reason of failure.
  final StatusResponseBigqueryreservationV1beta1 failureStatus;
  /// Applicable only for commitments located within one of the BigQuery multi-regions (US or EU). If set to true, this commitment is placed in the organization's secondary region which is designated for disaster recovery purposes. If false, this commitment is placed in the organization's default region.
  final bool multiRegionAuxiliary;
  /// The resource name of the capacity commitment, e.g., `projects/myproject/locations/US/capacityCommitments/123` The commitment_id must only contain lower case alphanumeric characters or dashes. It must start with a letter and must not end with a dash. Its maximum length is 64 characters.
  final String name;
  /// Capacity commitment commitment plan.
  final String plan;
  /// The plan this capacity commitment is converted to after commitment_end_time passes. Once the plan is changed, committed period is extended according to commitment plan. Only applicable for ANNUAL commitments.
  final String renewalPlan;
  /// Number of slots in this commitment.
  final String slotCount;
  /// State of the commitment.
  final String state;

  /// Creates a new [GetCapacityCommitmentBigqueryreservationV1beta1Result].
  /// [commitmentEndTime] The end of the current commitment period. It is applicable only for ACTIVE capacity commitments.
  /// [commitmentStartTime] The start of the current commitment period. It is applicable only for ACTIVE capacity commitments.
  /// [failureStatus] For FAILED commitment plan, provides the reason of failure.
  /// [multiRegionAuxiliary] Applicable only for commitments located within one of the BigQuery multi-regions (US or EU). If set to true, this commitment is placed in the organization's secondary region which is designated for disaster recovery purposes. If false, this commitment is placed in the organization's default region.
  /// [name] The resource name of the capacity commitment, e.g., `projects/myproject/locations/US/capacityCommitments/123` The commitment_id must only contain lower case alphanumeric characters or dashes. It must start with a letter and must not end with a dash. Its maximum length is 64 characters.
  /// [plan] Capacity commitment commitment plan.
  /// [renewalPlan] The plan this capacity commitment is converted to after commitment_end_time passes. Once the plan is changed, committed period is extended according to commitment plan. Only applicable for ANNUAL commitments.
  /// [slotCount] Number of slots in this commitment.
  /// [state] State of the commitment.
  GetCapacityCommitmentBigqueryreservationV1beta1Result({
    required this.commitmentEndTime,
    required this.commitmentStartTime,
    required this.failureStatus,
    required this.multiRegionAuxiliary,
    required this.name,
    required this.plan,
    required this.renewalPlan,
    required this.slotCount,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitmentEndTime': commitmentEndTime,
      'commitmentStartTime': commitmentStartTime,
      'failureStatus': failureStatus.toMap(),
      'multiRegionAuxiliary': multiRegionAuxiliary,
      'name': name,
      'plan': plan,
      'renewalPlan': renewalPlan,
      'slotCount': slotCount,
      'state': state,
    };
  }

  factory GetCapacityCommitmentBigqueryreservationV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetCapacityCommitmentBigqueryreservationV1beta1Result(
      commitmentEndTime: map['commitmentEndTime'] as String,
      commitmentStartTime: map['commitmentStartTime'] as String,
      failureStatus: StatusResponseBigqueryreservationV1beta1.fromMap((map['failureStatus'] as Map).cast<String, dynamic>()),
      multiRegionAuxiliary: map['multiRegionAuxiliary'] as bool,
      name: map['name'] as String,
      plan: map['plan'] as String,
      renewalPlan: map['renewalPlan'] as String,
      slotCount: map['slotCount'] as String,
      state: map['state'] as String,
    );
  }
}

