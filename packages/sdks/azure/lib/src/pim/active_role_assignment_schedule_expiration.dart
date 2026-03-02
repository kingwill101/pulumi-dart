// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ActiveRoleAssignmentScheduleExpiration {
  /// The duration of the role assignment in days. Changing this forces a new resource to be created.
  final pulumi.Input<int>? durationDays;
  /// The duration of the role assignment in hours. Changing this forces a new resource to be created.
  final pulumi.Input<int>? durationHours;
  /// The end date/time of the role assignment. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Only one of `duration_days`, `duration_hours` or `end_date_time` should be specified.
  final pulumi.Input<String>? endDateTime;

  /// Creates a new [ActiveRoleAssignmentScheduleExpiration].
  /// [durationDays] The duration of the role assignment in days. Changing this forces a new resource to be created.
  /// [durationHours] The duration of the role assignment in hours. Changing this forces a new resource to be created.
  /// [endDateTime] The end date/time of the role assignment. Changing this forces a new resource to be created.
  ActiveRoleAssignmentScheduleExpiration({
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
      durationDays: map['durationDays'] == null ? null : (map['durationDays']! as int).input(),
      durationHours: map['durationHours'] == null ? null : (map['durationHours']! as int).input(),
      endDateTime: map['endDateTime'] == null ? null : (map['endDateTime']! as String).input(),
    );
  }
}

