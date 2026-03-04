// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_schedule_schedule_monthly.dart';

class TriggerScheduleSchedule {
  /// Day(s) of the month on which the trigger is scheduled. This value can be specified with a monthly frequency only.
  final pulumi.Input<List<int>>? daysOfMonths;

  /// Days of the week on which the trigger is scheduled. This value can be specified only with a weekly frequency.
  final pulumi.Input<List<String>>? daysOfWeeks;

  /// Hours of the day on which the trigger is scheduled.
  final pulumi.Input<List<int>>? hours;

  /// Minutes of the hour on which the trigger is scheduled.
  final pulumi.Input<List<int>>? minutes;

  /// A `monthly` block as documented below, which specifies the days of the month on which the trigger is scheduled. The value can be specified only with a monthly frequency.
  final pulumi.Input<List<TriggerScheduleScheduleMonthly>>? monthlies;

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
      'monthlies':
          ?pulumi.Input.mapOptionalInputValue<
            List<TriggerScheduleScheduleMonthly>,
            List<Map<String, dynamic>>
          >(
            monthlies,
            (value) =>
                pulumi.Input.encodeList<
                  TriggerScheduleScheduleMonthly,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory TriggerScheduleSchedule.fromMap(Map<String, dynamic> map) {
    return TriggerScheduleSchedule(
      daysOfMonths: (() {
        final guardedValue = map['daysOfMonths'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<int>());
      })(),
      daysOfWeeks: (() {
        final guardedValue = map['daysOfWeeks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      hours: (() {
        final guardedValue = map['hours'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<int>());
      })(),
      minutes: (() {
        final guardedValue = map['minutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<int>());
      })(),
      monthlies: (() {
        final guardedValue = map['monthlies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TriggerScheduleScheduleMonthly>(
            guardedValue,
            (value) => TriggerScheduleScheduleMonthly.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
