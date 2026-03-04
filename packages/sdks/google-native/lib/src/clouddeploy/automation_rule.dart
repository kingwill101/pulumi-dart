// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'advance_rollout_rule.dart';
import 'promote_release_rule.dart';
import 'repair_rollout_rule.dart';

/// `AutomationRule` defines the automation activities.
class AutomationRule {
  /// Optional. The `AdvanceRolloutRule` will automatically advance a successful Rollout.
  final pulumi.Input<AdvanceRolloutRule>? advanceRolloutRule;

  /// Optional. `PromoteReleaseRule` will automatically promote a release from the current target to a specified target.
  final pulumi.Input<PromoteReleaseRule>? promoteReleaseRule;

  /// Optional. The `RepairRolloutRule` will automatically repair a failed rollout.
  final pulumi.Input<RepairRolloutRule>? repairRolloutRule;

  /// Creates a new [AutomationRule].
  /// [advanceRolloutRule] Optional. The `AdvanceRolloutRule` will automatically advance a successful Rollout.
  /// [promoteReleaseRule] Optional. `PromoteReleaseRule` will automatically promote a release from the current target to a specified target.
  /// [repairRolloutRule] Optional. The `RepairRolloutRule` will automatically repair a failed rollout.
  AutomationRule({
    this.advanceRolloutRule,
    this.promoteReleaseRule,
    this.repairRolloutRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advanceRolloutRule':
          ?pulumi.Input.mapOptionalInputValue<
            AdvanceRolloutRule,
            Map<String, dynamic>
          >(advanceRolloutRule, (value) => value.toMap()),
      'promoteReleaseRule':
          ?pulumi.Input.mapOptionalInputValue<
            PromoteReleaseRule,
            Map<String, dynamic>
          >(promoteReleaseRule, (value) => value.toMap()),
      'repairRolloutRule':
          ?pulumi.Input.mapOptionalInputValue<
            RepairRolloutRule,
            Map<String, dynamic>
          >(repairRolloutRule, (value) => value.toMap()),
    };
  }

  factory AutomationRule.fromMap(Map<String, dynamic> map) {
    return AutomationRule(
      advanceRolloutRule: (() {
        final guardedValue = map['advanceRolloutRule'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AdvanceRolloutRule.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      promoteReleaseRule: (() {
        final guardedValue = map['promoteReleaseRule'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PromoteReleaseRule.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      repairRolloutRule: (() {
        final guardedValue = map['repairRolloutRule'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RepairRolloutRule.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
