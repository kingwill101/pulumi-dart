// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_schedule_schedule_monthly.dart';

class TriggerScheduleSchedule {
  /// Day(s) of the month on which the trigger is scheduled. This value can be specified with a monthly frequency only.
  final List<int>? daysOfMonths;
  /// Days of the week on which the trigger is scheduled. This value can be specified only with a weekly frequency.
  final List<String>? daysOfWeeks;
  /// Hours of the day on which the trigger is scheduled.
  final List<int>? hours;
  /// Minutes of the hour on which the trigger is scheduled.
  final List<int>? minutes;
  /// A `monthly` block as documented below, which specifies the days of the month on which the trigger is scheduled. The value can be specified only with a monthly frequency.
  final List<TriggerScheduleScheduleMonthly>? monthlies;

  /// Creates a new [TriggerScheduleSchedule].
  /// [daysOfMonths] Day(s) of the month on which the trigger is scheduled. This value can be specified with a monthly frequency only.
  /// [daysOfWeeks] Days of the week on which the trigger is scheduled. This value can be specified only with a weekly frequency.
  /// [hours] Hours of the day on which the trigger is scheduled.
  /// [minutes] Minutes of the hour on which the trigger is scheduled.
  /// [monthlies] A `monthly` block as documented below, which specifies the days of the month on which the trigger is scheduled. The value can be specified only with a monthly frequency.
  TriggerScheduleSchedule({
    this.daysOfMonths,
    this.daysOfWeeks,
    this.hours,
    this.minutes,
    this.monthlies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfMonths': ?daysOfMonths,
      'daysOfWeeks': ?daysOfWeeks,
      'hours': ?hours,
      'minutes': ?minutes,
      'monthlies': ?monthlies == null ? null : pulumi.Input.encodeList<TriggerScheduleScheduleMonthly, Map<String, dynamic>>(monthlies!, (value) => value.toMap()),
    };
  }

  factory TriggerScheduleSchedule.fromMap(Map<String, dynamic> map) {
    return TriggerScheduleSchedule(
      daysOfMonths: map['daysOfMonths'] == null ? null : (map['daysOfMonths'] as List).cast<int>(),
      daysOfWeeks: map['daysOfWeeks'] == null ? null : (map['daysOfWeeks'] as List).cast<String>(),
      hours: map['hours'] == null ? null : (map['hours'] as List).cast<int>(),
      minutes: map['minutes'] == null ? null : (map['minutes'] as List).cast<int>(),
      monthlies: map['monthlies'] == null ? null : pulumi.Input.decodeList<TriggerScheduleScheduleMonthly>(map['monthlies'], (value) => TriggerScheduleScheduleMonthly.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

