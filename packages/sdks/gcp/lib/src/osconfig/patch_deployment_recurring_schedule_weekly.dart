// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PatchDeploymentRecurringScheduleWeekly {
  /// IANA Time Zone Database time zone, e.g. "America/New_York".
  /// Possible values are: `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, `SUNDAY`.
  final pulumi.Input<String> dayOfWeek;

  /// Creates a new [PatchDeploymentRecurringScheduleWeekly].
  /// [dayOfWeek] IANA Time Zone Database time zone, e.g. "America/New_York".
  const PatchDeploymentRecurringScheduleWeekly({
    required this.dayOfWeek,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
    };
  }

  factory PatchDeploymentRecurringScheduleWeekly.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentRecurringScheduleWeekly(
      dayOfWeek: pulumi.Input.fromValue(map['dayOfWeek'] as String),
    );
  }
}
