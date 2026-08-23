// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_processing_rule_action_group_schedule_recurrence_daily.dart';
import 'alert_processing_rule_action_group_schedule_recurrence_monthly.dart';
import 'alert_processing_rule_action_group_schedule_recurrence_weekly.dart';

class AlertProcessingRuleActionGroupScheduleRecurrence {
  /// One or more `daily` blocks as defined above.
  final pulumi.Input<List<AlertProcessingRuleActionGroupScheduleRecurrenceDaily>>? dailies;
  /// One or more `monthly` blocks as defined above.
  final pulumi.Input<List<AlertProcessingRuleActionGroupScheduleRecurrenceMonthly>>? monthlies;
  /// One or more `weekly` blocks as defined below.
  final pulumi.Input<List<AlertProcessingRuleActionGroupScheduleRecurrenceWeekly>>? weeklies;

  /// Creates a new [AlertProcessingRuleActionGroupScheduleRecurrence].
  /// [dailies] One or more `daily` blocks as defined above.
  /// [monthlies] One or more `monthly` blocks as defined above.
  /// [weeklies] One or more `weekly` blocks as defined below.
  const AlertProcessingRuleActionGroupScheduleRecurrence({
    this.dailies,
    this.monthlies,
    this.weeklies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailies': ?pulumi.Input.mapOptionalInputValue<List<AlertProcessingRuleActionGroupScheduleRecurrenceDaily>, List<Map<String, dynamic>>>(dailies, (value) => pulumi.Input.encodeList<AlertProcessingRuleActionGroupScheduleRecurrenceDaily, Map<String, dynamic>>(value, (value) => value.toMap())),
      'monthlies': ?pulumi.Input.mapOptionalInputValue<List<AlertProcessingRuleActionGroupScheduleRecurrenceMonthly>, List<Map<String, dynamic>>>(monthlies, (value) => pulumi.Input.encodeList<AlertProcessingRuleActionGroupScheduleRecurrenceMonthly, Map<String, dynamic>>(value, (value) => value.toMap())),
      'weeklies': ?pulumi.Input.mapOptionalInputValue<List<AlertProcessingRuleActionGroupScheduleRecurrenceWeekly>, List<Map<String, dynamic>>>(weeklies, (value) => pulumi.Input.encodeList<AlertProcessingRuleActionGroupScheduleRecurrenceWeekly, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AlertProcessingRuleActionGroupScheduleRecurrence.fromMap(Map<String, dynamic> map) {
    return AlertProcessingRuleActionGroupScheduleRecurrence(
      dailies: (() { final guardedValue = map['dailies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlertProcessingRuleActionGroupScheduleRecurrenceDaily>(guardedValue, (value) => AlertProcessingRuleActionGroupScheduleRecurrenceDaily.fromMap((value as Map).cast<String, dynamic>()))); })(),
      monthlies: (() { final guardedValue = map['monthlies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlertProcessingRuleActionGroupScheduleRecurrenceMonthly>(guardedValue, (value) => AlertProcessingRuleActionGroupScheduleRecurrenceMonthly.fromMap((value as Map).cast<String, dynamic>()))); })(),
      weeklies: (() { final guardedValue = map['weeklies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlertProcessingRuleActionGroupScheduleRecurrenceWeekly>(guardedValue, (value) => AlertProcessingRuleActionGroupScheduleRecurrenceWeekly.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
