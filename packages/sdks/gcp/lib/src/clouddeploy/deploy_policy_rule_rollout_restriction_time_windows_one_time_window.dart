// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deploy_policy_rule_rollout_restriction_time_windows_one_time_window_end_date.dart';
import 'deploy_policy_rule_rollout_restriction_time_windows_one_time_window_end_time.dart';
import 'deploy_policy_rule_rollout_restriction_time_windows_one_time_window_start_date.dart';
import 'deploy_policy_rule_rollout_restriction_time_windows_one_time_window_start_time.dart';

class DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindow {
  /// End date.
  /// Structure is documented below.
  final pulumi.Input<DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowEndDate> endDate;
  /// End time (exclusive). You may use 24:00 for the end of the day.
  /// Structure is documented below.
  final pulumi.Input<DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowEndTime> endTime;
  /// Start date.
  /// Structure is documented below.
  final pulumi.Input<DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowStartDate> startDate;
  /// Start time (inclusive). Use 00:00 for the beginning of the day.
  /// Structure is documented below.
  final pulumi.Input<DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowStartTime> startTime;

  /// Creates a new [DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindow].
  /// [endDate] End date.
  /// [endTime] End time (exclusive). You may use 24:00 for the end of the day.
  /// [startDate] Start date.
  /// [startTime] Start time (inclusive). Use 00:00 for the beginning of the day.
  const DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindow({
    required this.endDate,
    required this.endTime,
    required this.startDate,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endDate': pulumi.Input.mapInputValue<DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowEndDate, Map<String, dynamic>>(endDate, (value) => value.toMap()),
      'endTime': pulumi.Input.mapInputValue<DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowEndTime, Map<String, dynamic>>(endTime, (value) => value.toMap()),
      'startDate': pulumi.Input.mapInputValue<DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowStartDate, Map<String, dynamic>>(startDate, (value) => value.toMap()),
      'startTime': pulumi.Input.mapInputValue<DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowStartTime, Map<String, dynamic>>(startTime, (value) => value.toMap()),
    };
  }

  factory DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindow.fromMap(Map<String, dynamic> map) {
    return DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindow(
      endDate: pulumi.Input.fromValue(DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowEndDate.fromMap((map['endDate']! as Map).cast<String, dynamic>())),
      endTime: pulumi.Input.fromValue(DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowEndTime.fromMap((map['endTime']! as Map).cast<String, dynamic>())),
      startDate: pulumi.Input.fromValue(DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowStartDate.fromMap((map['startDate']! as Map).cast<String, dynamic>())),
      startTime: pulumi.Input.fromValue(DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowStartTime.fromMap((map['startTime']! as Map).cast<String, dynamic>())),
    );
  }
}
