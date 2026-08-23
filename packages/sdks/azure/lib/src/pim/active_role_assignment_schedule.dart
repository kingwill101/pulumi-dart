// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'active_role_assignment_schedule_expiration.dart';

class ActiveRoleAssignmentSchedule {
  /// An `expiration` block as defined above.
  final pulumi.Input<ActiveRoleAssignmentScheduleExpiration>? expiration;
  /// The start date/time of the role assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? startDateTime;

  /// Creates a new [ActiveRoleAssignmentSchedule].
  /// [expiration] An `expiration` block as defined above.
  /// [startDateTime] The start date/time of the role assignment. Changing this forces a new resource to be created.
  const ActiveRoleAssignmentSchedule({
    this.expiration,
    this.startDateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiration': ?pulumi.Input.mapOptionalInputValue<ActiveRoleAssignmentScheduleExpiration, Map<String, dynamic>>(expiration, (value) => value.toMap()),
      'startDateTime': ?startDateTime,
    };
  }

  factory ActiveRoleAssignmentSchedule.fromMap(Map<String, dynamic> map) {
    return ActiveRoleAssignmentSchedule(
      expiration: (() { final guardedValue = map['expiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActiveRoleAssignmentScheduleExpiration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startDateTime: (() { final guardedValue = map['startDateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
