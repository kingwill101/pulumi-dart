// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deploy_policy_rule_rollout_restriction_time_windows_one_time_window.dart';
import 'deploy_policy_rule_rollout_restriction_time_windows_weekly_window.dart';

class DeployPolicyRuleRolloutRestrictionTimeWindows {
  /// One-time windows within which actions are restricted.
  /// Structure is documented below.
  final pulumi.Input<List<DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindow>>? oneTimeWindows;
  /// The time zone in IANA format IANA Time Zone Database (e.g. America/New_York).
  final pulumi.Input<String> timeZone;
  /// Recurring weekly windows within which actions are restricted.
  /// Structure is documented below.
  final pulumi.Input<List<DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindow>>? weeklyWindows;

  /// Creates a new [DeployPolicyRuleRolloutRestrictionTimeWindows].
  /// [oneTimeWindows] One-time windows within which actions are restricted.
  /// [timeZone] The time zone in IANA format IANA Time Zone Database (e.g. America/New_York).
  /// [weeklyWindows] Recurring weekly windows within which actions are restricted.
  const DeployPolicyRuleRolloutRestrictionTimeWindows({
    this.oneTimeWindows,
    required this.timeZone,
    this.weeklyWindows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oneTimeWindows': ?pulumi.Input.mapOptionalInputValue<List<DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindow>, List<Map<String, dynamic>>>(oneTimeWindows, (value) => pulumi.Input.encodeList<DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindow, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeZone': timeZone,
      'weeklyWindows': ?pulumi.Input.mapOptionalInputValue<List<DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindow>, List<Map<String, dynamic>>>(weeklyWindows, (value) => pulumi.Input.encodeList<DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindow, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeployPolicyRuleRolloutRestrictionTimeWindows.fromMap(Map<String, dynamic> map) {
    return DeployPolicyRuleRolloutRestrictionTimeWindows(
      oneTimeWindows: (() { final guardedValue = map['oneTimeWindows']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindow>(guardedValue, (value) => DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindow.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timeZone: pulumi.Input.fromValue(map['timeZone'] as String),
      weeklyWindows: (() { final guardedValue = map['weeklyWindows']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindow>(guardedValue, (value) => DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindow.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
