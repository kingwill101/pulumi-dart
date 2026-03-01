// ignore_for_file: unused_element, unnecessary_cast

import 'integration_account_batch_configuration_release_criteria_recurrence_schedule.dart';

class IntegrationAccountBatchConfigurationReleaseCriteriaRecurrence {
  /// The end time of the schedule, formatted as an RFC3339 string.
  final String? endTime;
  /// The frequency of the schedule. Possible values are `Day`, `Hour`, `Minute`, `Month`, `NotSpecified`, `Second`, `Week` and `Year`.
  final String frequency;
  /// The number of `frequency`s between runs.
  final int interval;
  /// A `schedule` block as documented below.
  final IntegrationAccountBatchConfigurationReleaseCriteriaRecurrenceSchedule? schedule;
  /// The start time of the schedule, formatted as an RFC3339 string.
  final String? startTime;
  /// The timezone of the start/end time.
  final String? timeZone;

  /// Creates a new [IntegrationAccountBatchConfigurationReleaseCriteriaRecurrence].
  /// [endTime] The end time of the schedule, formatted as an RFC3339 string.
  /// [frequency] The frequency of the schedule. Possible values are `Day`, `Hour`, `Minute`, `Month`, `NotSpecified`, `Second`, `Week` and `Year`.
  /// [interval] The number of `frequency`s between runs.
  /// [schedule] A `schedule` block as documented below.
  /// [startTime] The start time of the schedule, formatted as an RFC3339 string.
  /// [timeZone] The timezone of the start/end time.
  IntegrationAccountBatchConfigurationReleaseCriteriaRecurrence({
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
      'schedule': ?schedule == null ? null : schedule!.toMap(),
      'startTime': ?startTime,
      'timeZone': ?timeZone,
    };
  }

  factory IntegrationAccountBatchConfigurationReleaseCriteriaRecurrence.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountBatchConfigurationReleaseCriteriaRecurrence(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      frequency: map['frequency'] as String,
      interval: map['interval'] as int,
      schedule: map['schedule'] == null ? null : IntegrationAccountBatchConfigurationReleaseCriteriaRecurrenceSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}

