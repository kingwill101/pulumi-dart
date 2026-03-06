// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_account_batch_configuration_release_criteria_recurrence_schedule.dart';

class IntegrationAccountBatchConfigurationReleaseCriteriaRecurrence {
  /// The end time of the schedule, formatted as an RFC3339 string.
  final pulumi.Input<String>? endTime;
  /// The frequency of the schedule. Possible values are `Day`, `Hour`, `Minute`, `Month`, `NotSpecified`, `Second`, `Week` and `Year`.
  final pulumi.Input<String> frequency;
  /// The number of `frequency`s between runs.
  final pulumi.Input<int> interval;
  /// A `schedule` block as documented below.
  final pulumi.Input<IntegrationAccountBatchConfigurationReleaseCriteriaRecurrenceSchedule>? schedule;
  /// The start time of the schedule, formatted as an RFC3339 string.
  final pulumi.Input<String>? startTime;
  /// The timezone of the start/end time.
  final pulumi.Input<String>? timeZone;

  /// Creates a new [IntegrationAccountBatchConfigurationReleaseCriteriaRecurrence].
  /// [endTime] The end time of the schedule, formatted as an RFC3339 string.
  /// [frequency] The frequency of the schedule. Possible values are `Day`, `Hour`, `Minute`, `Month`, `NotSpecified`, `Second`, `Week` and `Year`.
  /// [interval] The number of `frequency`s between runs.
  /// [schedule] A `schedule` block as documented below.
  /// [startTime] The start time of the schedule, formatted as an RFC3339 string.
  /// [timeZone] The timezone of the start/end time.
  const IntegrationAccountBatchConfigurationReleaseCriteriaRecurrence({
    this.endTime,
    required this.frequency,
    required this.interval,
    this.schedule,
    this.startTime,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'frequency': frequency,
      'interval': interval,
      'schedule': ?pulumi.Input.mapOptionalInputValue<IntegrationAccountBatchConfigurationReleaseCriteriaRecurrenceSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'startTime': ?startTime,
      'timeZone': ?timeZone,
    };
  }

  factory IntegrationAccountBatchConfigurationReleaseCriteriaRecurrence.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountBatchConfigurationReleaseCriteriaRecurrence(
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frequency: pulumi.Input.fromValue(map['frequency'] as String),
      interval: pulumi.Input.fromValue(map['interval'] as int),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationAccountBatchConfigurationReleaseCriteriaRecurrenceSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

