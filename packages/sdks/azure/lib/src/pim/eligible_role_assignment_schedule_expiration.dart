// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EligibleRoleAssignmentScheduleExpiration {
  /// The duration of the role assignment in days. Changing this forces a new resource to be created.
  final pulumi.Input<int>? durationDays;
  /// The duration of the role assignment in hours. Changing this forces a new resource to be created.
  final pulumi.Input<int>? durationHours;
  /// The end date/time of the role assignment. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Only one of `duration_days`, `duration_hours` or `end_date_time` should be specified.
  final pulumi.Input<String>? endDateTime;

  /// Creates a new [EligibleRoleAssignmentScheduleExpiration].
  /// [durationDays] The duration of the role assignment in days. Changing this forces a new resource to be created.
  /// [durationHours] The duration of the role assignment in hours. Changing this forces a new resource to be created.
  /// [endDateTime] The end date/time of the role assignment. Changing this forces a new resource to be created.
  const EligibleRoleAssignmentScheduleExpiration({
    this.durationDays,
    this.durationHours,
    this.endDateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'durationDays': ?durationDays,
      'durationHours': ?durationHours,
      'endDateTime': ?endDateTime,
    };
  }

  factory EligibleRoleAssignmentScheduleExpiration.fromMap(Map<String, dynamic> map) {
    return EligibleRoleAssignmentScheduleExpiration(
      durationDays: (() { final guardedValue = map['durationDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      durationHours: (() { final guardedValue = map['durationHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      endDateTime: (() { final guardedValue = map['endDateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

