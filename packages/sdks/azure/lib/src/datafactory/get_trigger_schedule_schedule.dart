// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_trigger_schedule_schedule_monthly.dart';

class GetTriggerScheduleSchedule {
  /// Day(s) of the month on which the trigger is scheduled.
  final List<int> daysOfMonths;
  /// Day(s) of the week on which the trigger is scheduled.
  final List<String> daysOfWeeks;
  /// Hours of the day on which the trigger is scheduled.
  final List<int> hours;
  /// Minutes of the hour on which the trigger is scheduled.
  final List<int> minutes;
  /// A `monthly` block as documented below, which specifies the days of the month on which the trigger is scheduled.
  final List<GetTriggerScheduleScheduleMonthly> monthlies;

  /// Creates a new [GetTriggerScheduleSchedule].
  /// [daysOfMonths] Day(s) of the month on which the trigger is scheduled.
  /// [daysOfWeeks] Day(s) of the week on which the trigger is scheduled.
  /// [hours] Hours of the day on which the trigger is scheduled.
  /// [minutes] Minutes of the hour on which the trigger is scheduled.
  /// [monthlies] A `monthly` block as documented below, which specifies the days of the month on which the trigger is scheduled.
  GetTriggerScheduleSchedule({
    required this.daysOfMonths,
    required this.daysOfWeeks,
    required this.hours,
    required this.minutes,
    required this.monthlies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfMonths': daysOfMonths,
      'daysOfWeeks': daysOfWeeks,
      'hours': hours,
      'minutes': minutes,
      'monthlies': pulumi.Input.encodeList<GetTriggerScheduleScheduleMonthly, Map<String, dynamic>>(monthlies, (value) => value.toMap()),
    };
  }

  factory GetTriggerScheduleSchedule.fromMap(Map<String, dynamic> map) {
    return GetTriggerScheduleSchedule(
      daysOfMonths: (map['daysOfMonths'] as List).cast<int>(),
      daysOfWeeks: (map['daysOfWeeks'] as List).cast<String>(),
      hours: (map['hours'] as List).cast<int>(),
      minutes: (map['minutes'] as List).cast<int>(),
      monthlies: pulumi.Input.decodeList<GetTriggerScheduleScheduleMonthly>(map['monthlies'], (value) => GetTriggerScheduleScheduleMonthly.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

