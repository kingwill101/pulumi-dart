// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule_advance_rollout_rule.dart';
import 'automation_rule_promote_release_rule.dart';
import 'automation_rule_repair_rollout_rule.dart';
import 'automation_rule_timed_promote_release_rule.dart';

class AutomationRule {
  /// Optional. The `AdvanceRolloutRule` will automatically advance a successful Rollout.
  /// Structure is documented below.
  final pulumi.Input<AutomationRuleAdvanceRolloutRule>? advanceRolloutRule;
  /// Optional. `PromoteReleaseRule` will automatically promote a release from the current target to a specified target.
  /// Structure is documented below.
  final pulumi.Input<AutomationRulePromoteReleaseRule>? promoteReleaseRule;
  /// Optional. The RepairRolloutRule will automatically repair a failed rollout.
  /// Structure is documented below.
  final pulumi.Input<AutomationRuleRepairRolloutRule>? repairRolloutRule;
  /// Optional. The `TimedPromoteReleaseRule` will automatically promote a release from the current target(s) to the specified target(s) on a configured schedule.
  /// Structure is documented below.
  final pulumi.Input<AutomationRuleTimedPromoteReleaseRule>? timedPromoteReleaseRule;

  /// Creates a new [AutomationRule].
  /// [advanceRolloutRule] Optional. The `AdvanceRolloutRule` will automatically advance a successful Rollout.
  /// [promoteReleaseRule] Optional. `PromoteReleaseRule` will automatically promote a release from the current target to a specified target.
  /// [repairRolloutRule] Optional. The RepairRolloutRule will automatically repair a failed rollout.
  /// [timedPromoteReleaseRule] Optional. The `TimedPromoteReleaseRule` will automatically promote a release from the current target(s) to the specified target(s) on a configured schedule.
  const AutomationRule({
    this.advanceRolloutRule,
    this.promoteReleaseRule,
    this.repairRolloutRule,
    this.timedPromoteReleaseRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advanceRolloutRule': ?pulumi.Input.mapOptionalInputValue<AutomationRuleAdvanceRolloutRule, Map<String, dynamic>>(advanceRolloutRule, (value) => value.toMap()),
      'promoteReleaseRule': ?pulumi.Input.mapOptionalInputValue<AutomationRulePromoteReleaseRule, Map<String, dynamic>>(promoteReleaseRule, (value) => value.toMap()),
      'repairRolloutRule': ?pulumi.Input.mapOptionalInputValue<AutomationRuleRepairRolloutRule, Map<String, dynamic>>(repairRolloutRule, (value) => value.toMap()),
      'timedPromoteReleaseRule': ?pulumi.Input.mapOptionalInputValue<AutomationRuleTimedPromoteReleaseRule, Map<String, dynamic>>(timedPromoteReleaseRule, (value) => value.toMap()),
    };
  }

  factory AutomationRule.fromMap(Map<String, dynamic> map) {
    return AutomationRule(
      advanceRolloutRule: (() { final guardedValue = map['advanceRolloutRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomationRuleAdvanceRolloutRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      promoteReleaseRule: (() { final guardedValue = map['promoteReleaseRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomationRulePromoteReleaseRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      repairRolloutRule: (() { final guardedValue = map['repairRolloutRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomationRuleRepairRolloutRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timedPromoteReleaseRule: (() { final guardedValue = map['timedPromoteReleaseRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomationRuleTimedPromoteReleaseRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

