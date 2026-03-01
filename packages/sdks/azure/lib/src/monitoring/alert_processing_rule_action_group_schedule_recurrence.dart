// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_processing_rule_action_group_schedule_recurrence_daily.dart';
import 'alert_processing_rule_action_group_schedule_recurrence_monthly.dart';
import 'alert_processing_rule_action_group_schedule_recurrence_weekly.dart';

class AlertProcessingRuleActionGroupScheduleRecurrence {
  /// One or more `daily` blocks as defined above.
  final List<AlertProcessingRuleActionGroupScheduleRecurrenceDaily>? dailies;
  /// One or more `monthly` blocks as defined above.
  final List<AlertProcessingRuleActionGroupScheduleRecurrenceMonthly>? monthlies;
  /// One or more `weekly` blocks as defined below.
  final List<AlertProcessingRuleActionGroupScheduleRecurrenceWeekly>? weeklies;

  /// Creates a new [AlertProcessingRuleActionGroupScheduleRecurrence].
  /// [dailies] One or more `daily` blocks as defined above.
  /// [monthlies] One or more `monthly` blocks as defined above.
  /// [weeklies] One or more `weekly` blocks as defined below.
  AlertProcessingRuleActionGroupScheduleRecurrence({
    this.dailies,
    this.monthlies,
    this.weeklies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailies': ?dailies == null ? null : pulumi.Input.encodeList<AlertProcessingRuleActionGroupScheduleRecurrenceDaily, Map<String, dynamic>>(dailies!, (value) => value.toMap()),
      'monthlies': ?monthlies == null ? null : pulumi.Input.encodeList<AlertProcessingRuleActionGroupScheduleRecurrenceMonthly, Map<String, dynamic>>(monthlies!, (value) => value.toMap()),
      'weeklies': ?weeklies == null ? null : pulumi.Input.encodeList<AlertProcessingRuleActionGroupScheduleRecurrenceWeekly, Map<String, dynamic>>(weeklies!, (value) => value.toMap()),
    };
  }

  factory AlertProcessingRuleActionGroupScheduleRecurrence.fromMap(Map<String, dynamic> map) {
    return AlertProcessingRuleActionGroupScheduleRecurrence(
      dailies: map['dailies'] == null ? null : pulumi.Input.decodeList<AlertProcessingRuleActionGroupScheduleRecurrenceDaily>(map['dailies'], (value) => AlertProcessingRuleActionGroupScheduleRecurrenceDaily.fromMap((value as Map).cast<String, dynamic>())),
      monthlies: map['monthlies'] == null ? null : pulumi.Input.decodeList<AlertProcessingRuleActionGroupScheduleRecurrenceMonthly>(map['monthlies'], (value) => AlertProcessingRuleActionGroupScheduleRecurrenceMonthly.fromMap((value as Map).cast<String, dynamic>())),
      weeklies: map['weeklies'] == null ? null : pulumi.Input.decodeList<AlertProcessingRuleActionGroupScheduleRecurrenceWeekly>(map['weeklies'], (value) => AlertProcessingRuleActionGroupScheduleRecurrenceWeekly.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

