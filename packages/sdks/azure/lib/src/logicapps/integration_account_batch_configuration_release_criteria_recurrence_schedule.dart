// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_account_batch_configuration_release_criteria_recurrence_schedule_monthly.dart';

class IntegrationAccountBatchConfigurationReleaseCriteriaRecurrenceSchedule {
  /// A list containing a single item, which specifies the Hour interval at which this recurrence should be triggered.
  final pulumi.Input<List<int>>? hours;
  /// A list containing a single item which specifies the Minute interval at which this recurrence should be triggered.
  final pulumi.Input<List<int>>? minutes;
  /// A list of days of the month that the job should execute on.
  final pulumi.Input<List<int>>? monthDays;
  /// A `monthly` block as documented below.
  final pulumi.Input<List<IntegrationAccountBatchConfigurationReleaseCriteriaRecurrenceScheduleMonthly>>? monthlies;
  /// A list of days of the week that the job should execute on. Possible values are `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` and `Saturday`.
  final pulumi.Input<List<String>>? weekDays;

  /// Creates a new [IntegrationAccountBatchConfigurationReleaseCriteriaRecurrenceSchedule].
  /// [hours] A list containing a single item, which specifies the Hour interval at which this recurrence should be triggered.
  /// [minutes] A list containing a single item which specifies the Minute interval at which this recurrence should be triggered.
  /// [monthDays] A list of days of the month that the job should execute on.
  /// [monthlies] A `monthly` block as documented below.
  /// [weekDays] A list of days of the week that the job should execute on. Possible values are `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` and `Saturday`.
  const IntegrationAccountBatchConfigurationReleaseCriteriaRecurrenceSchedule({
    this.hours,
    this.minutes,
    this.monthDays,
    this.monthlies,
    this.weekDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hours': ?hours,
      'minutes': ?minutes,
      'monthDays': ?monthDays,
      'monthlies': ?pulumi.Input.mapOptionalInputValue<List<IntegrationAccountBatchConfigurationReleaseCriteriaRecurrenceScheduleMonthly>, List<Map<String, dynamic>>>(monthlies, (value) => pulumi.Input.encodeList<IntegrationAccountBatchConfigurationReleaseCriteriaRecurrenceScheduleMonthly, Map<String, dynamic>>(value, (value) => value.toMap())),
      'weekDays': ?weekDays,
    };
  }

  factory IntegrationAccountBatchConfigurationReleaseCriteriaRecurrenceSchedule.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountBatchConfigurationReleaseCriteriaRecurrenceSchedule(
      hours: (() { final guardedValue = map['hours']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      minutes: (() { final guardedValue = map['minutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      monthDays: (() { final guardedValue = map['monthDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      monthlies: (() { final guardedValue = map['monthlies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IntegrationAccountBatchConfigurationReleaseCriteriaRecurrenceScheduleMonthly>(guardedValue, (value) => IntegrationAccountBatchConfigurationReleaseCriteriaRecurrenceScheduleMonthly.fromMap((value as Map).cast<String, dynamic>()))); })(),
      weekDays: (() { final guardedValue = map['weekDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
