// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ActiveRoleAssignmentScheduleExpiration {
  /// The duration of the role assignment in days. Changing this forces a new resource to be created.
  final pulumi.Input<int?>? durationDays;
  /// The duration of the role assignment in hours. Changing this forces a new resource to be created.
  final pulumi.Input<int?>? durationHours;
  /// The end date/time of the role assignment. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Only one of `durationDays`, `durationHours` or `endDateTime` should be specified.
  final pulumi.Input<String?>? endDateTime;

  /// Creates a new [ActiveRoleAssignmentScheduleExpiration].
  /// [durationDays] The duration of the role assignment in days. Changing this forces a new resource to be created.
  /// [durationHours] The duration of the role assignment in hours. Changing this forces a new resource to be created.
  /// [endDateTime] The end date/time of the role assignment. Changing this forces a new resource to be created.
  const ActiveRoleAssignmentScheduleExpiration({
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

  factory ActiveRoleAssignmentScheduleExpiration.fromMap(Map<String, dynamic> map) {
    return ActiveRoleAssignmentScheduleExpiration(
      durationDays: (() { final guardedValue = map['durationDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      durationHours: (() { final guardedValue = map['durationHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      endDateTime: (() { final guardedValue = map['endDateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
