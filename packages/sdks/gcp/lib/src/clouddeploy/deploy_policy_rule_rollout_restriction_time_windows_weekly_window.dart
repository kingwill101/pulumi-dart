// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deploy_policy_rule_rollout_restriction_time_windows_weekly_window_end_time.dart';
import 'deploy_policy_rule_rollout_restriction_time_windows_weekly_window_start_time.dart';

class DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindow {
  /// Days of week. If left empty, all days of the week will be included.
  /// Each value may be one of: `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, `SUNDAY`.
  final pulumi.Input<List<String>>? daysOfWeeks;
  /// End time (exclusive). Use 24:00 to indicate midnight. If you specify endTime you must also specify startTime. If left empty, this will block for the entire day for the days specified in daysOfWeek.
  /// Structure is documented below.
  final pulumi.Input<DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowEndTime>? endTime;
  /// Start time (inclusive). Use 00:00 for the beginning of the day. If you specify startTime you must also specify endTime. If left empty, this will block for the entire day for the days specified in daysOfWeek.
  /// Structure is documented below.
  final pulumi.Input<DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowStartTime>? startTime;

  /// Creates a new [DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindow].
  /// [daysOfWeeks] Days of week. If left empty, all days of the week will be included.
  /// [endTime] End time (exclusive). Use 24:00 to indicate midnight. If you specify endTime you must also specify startTime. If left empty, this will block for the entire day for the days specified in daysOfWeek.
  /// [startTime] Start time (inclusive). Use 00:00 for the beginning of the day. If you specify startTime you must also specify endTime. If left empty, this will block for the entire day for the days specified in daysOfWeek.
  const DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindow({
    this.daysOfWeeks,
    this.endTime,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfWeeks': ?daysOfWeeks,
      'endTime': ?pulumi.Input.mapOptionalInputValue<DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowEndTime, Map<String, dynamic>>(endTime, (value) => value.toMap()),
      'startTime': ?pulumi.Input.mapOptionalInputValue<DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowStartTime, Map<String, dynamic>>(startTime, (value) => value.toMap()),
    };
  }

  factory DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindow.fromMap(Map<String, dynamic> map) {
    return DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindow(
      daysOfWeeks: (() { final guardedValue = map['daysOfWeeks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowEndTime.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowStartTime.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

