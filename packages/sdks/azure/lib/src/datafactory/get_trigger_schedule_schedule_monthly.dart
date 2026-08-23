// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTriggerScheduleScheduleMonthly {
  /// The occurrence of the specified day during the month.
  final pulumi.Input<int> week;
  /// The day of the week on which the trigger runs.
  final pulumi.Input<String> weekday;

  /// Creates a new [GetTriggerScheduleScheduleMonthly].
  /// [week] The occurrence of the specified day during the month.
  /// [weekday] The day of the week on which the trigger runs.
  const GetTriggerScheduleScheduleMonthly({
    required this.week,
    required this.weekday,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'week': week,
      'weekday': weekday,
    };
  }

  factory GetTriggerScheduleScheduleMonthly.fromMap(Map<String, dynamic> map) {
    return GetTriggerScheduleScheduleMonthly(
      week: pulumi.Input.fromValue(map['week'] as int),
      weekday: pulumi.Input.fromValue(map['weekday'] as String),
    );
  }
}
