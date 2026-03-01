// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_processing_rule_suppression_schedule_recurrence_daily.dart';
import 'alert_processing_rule_suppression_schedule_recurrence_monthly.dart';
import 'alert_processing_rule_suppression_schedule_recurrence_weekly.dart';

class AlertProcessingRuleSuppressionScheduleRecurrence {
  /// One or more `daily` blocks as defined above.
  final List<AlertProcessingRuleSuppressionScheduleRecurrenceDaily>? dailies;
  /// One or more `monthly` blocks as defined above.
  final List<AlertProcessingRuleSuppressionScheduleRecurrenceMonthly>? monthlies;
  /// One or more `weekly` blocks as defined below.
  final List<AlertProcessingRuleSuppressionScheduleRecurrenceWeekly>? weeklies;

  /// Creates a new [AlertProcessingRuleSuppressionScheduleRecurrence].
  /// [dailies] One or more `daily` blocks as defined above.
  /// [monthlies] One or more `monthly` blocks as defined above.
  /// [weeklies] One or more `weekly` blocks as defined below.
  AlertProcessingRuleSuppressionScheduleRecurrence({
    this.dailies,
    this.monthlies,
    this.weeklies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailies': ?dailies == null ? null : pulumi.Input.encodeList<AlertProcessingRuleSuppressionScheduleRecurrenceDaily, Map<String, dynamic>>(dailies!, (value) => value.toMap()),
      'monthlies': ?monthlies == null ? null : pulumi.Input.encodeList<AlertProcessingRuleSuppressionScheduleRecurrenceMonthly, Map<String, dynamic>>(monthlies!, (value) => value.toMap()),
      'weeklies': ?weeklies == null ? null : pulumi.Input.encodeList<AlertProcessingRuleSuppressionScheduleRecurrenceWeekly, Map<String, dynamic>>(weeklies!, (value) => value.toMap()),
    };
  }

  factory AlertProcessingRuleSuppressionScheduleRecurrence.fromMap(Map<String, dynamic> map) {
    return AlertProcessingRuleSuppressionScheduleRecurrence(
      dailies: map['dailies'] == null ? null : pulumi.Input.decodeList<AlertProcessingRuleSuppressionScheduleRecurrenceDaily>(map['dailies'], (value) => AlertProcessingRuleSuppressionScheduleRecurrenceDaily.fromMap((value as Map).cast<String, dynamic>())),
      monthlies: map['monthlies'] == null ? null : pulumi.Input.decodeList<AlertProcessingRuleSuppressionScheduleRecurrenceMonthly>(map['monthlies'], (value) => AlertProcessingRuleSuppressionScheduleRecurrenceMonthly.fromMap((value as Map).cast<String, dynamic>())),
      weeklies: map['weeklies'] == null ? null : pulumi.Input.decodeList<AlertProcessingRuleSuppressionScheduleRecurrenceWeekly>(map['weeklies'], (value) => AlertProcessingRuleSuppressionScheduleRecurrenceWeekly.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

