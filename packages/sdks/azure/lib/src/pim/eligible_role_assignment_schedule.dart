// ignore_for_file: unused_element, unnecessary_cast

import 'eligible_role_assignment_schedule_expiration.dart';

class EligibleRoleAssignmentSchedule {
  /// An `expiration` block as defined above.
  final EligibleRoleAssignmentScheduleExpiration? expiration;
  /// The start date/time of the role assignment. Changing this forces a new resource to be created.
  final String? startDateTime;

  /// Creates a new [EligibleRoleAssignmentSchedule].
  /// [expiration] An `expiration` block as defined above.
  /// [startDateTime] The start date/time of the role assignment. Changing this forces a new resource to be created.
  EligibleRoleAssignmentSchedule({
    this.expiration,
    this.startDateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiration': ?expiration == null ? null : expiration!.toMap(),
      'startDateTime': ?startDateTime,
    };
  }

  factory EligibleRoleAssignmentSchedule.fromMap(Map<String, dynamic> map) {
    return EligibleRoleAssignmentSchedule(
      expiration: map['expiration'] == null ? null : EligibleRoleAssignmentScheduleExpiration.fromMap((map['expiration'] as Map).cast<String, dynamic>()),
      startDateTime: map['startDateTime'] == null ? null : map['startDateTime'] as String,
    );
  }
}

