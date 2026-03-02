// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FutureReservationCommitmentInfo {
  /// name of the commitment where capacity is being delivered to.
  final pulumi.Input<String>? commitmentName;
  /// Indicates if a Commitment needs to be created as part of FR delivery. If this field is not present, then no commitment needs to be created.
  /// Possible values are: `INVALID`, `THIRTY_SIX_MONTH`, `TWELVE_MONTH`.
  final pulumi.Input<String>? commitmentPlan;
  /// Only applicable if FR is delivering to the same reservation. If set, all parent commitments will be extended to match the end date of the plan for this commitment.
  /// Possible values are: `EXTEND`.
  final pulumi.Input<String>? previousCommitmentTerms;

  /// Creates a new [FutureReservationCommitmentInfo].
  /// [commitmentName] name of the commitment where capacity is being delivered to.
  /// [commitmentPlan] Indicates if a Commitment needs to be created as part of FR delivery. If this field is not present, then no commitment needs to be created.
  /// [previousCommitmentTerms] Only applicable if FR is delivering to the same reservation. If set, all parent commitments will be extended to match the end date of the plan for this commitment.
  FutureReservationCommitmentInfo({
    this.commitmentName,
    this.commitmentPlan,
    this.previousCommitmentTerms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitmentName': ?commitmentName,
      'commitmentPlan': ?commitmentPlan,
      'previousCommitmentTerms': ?previousCommitmentTerms,
    };
  }

  factory FutureReservationCommitmentInfo.fromMap(Map<String, dynamic> map) {
    return FutureReservationCommitmentInfo(
      commitmentName: map['commitmentName'] == null ? null : (map['commitmentName']! as String).input(),
      commitmentPlan: map['commitmentPlan'] == null ? null : (map['commitmentPlan']! as String).input(),
      previousCommitmentTerms: map['previousCommitmentTerms'] == null ? null : (map['previousCommitmentTerms']! as String).input(),
    );
  }
}

