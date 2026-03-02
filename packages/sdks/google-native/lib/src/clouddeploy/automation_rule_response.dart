// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'advance_rollout_rule_response.dart';
import 'promote_release_rule_response.dart';
import 'repair_rollout_rule_response.dart';

/// `AutomationRule` defines the automation activities.
class AutomationRuleResponse {
  /// Optional. The `AdvanceRolloutRule` will automatically advance a successful Rollout.
  final pulumi.Input<AdvanceRolloutRuleResponse> advanceRolloutRule;
  /// Optional. `PromoteReleaseRule` will automatically promote a release from the current target to a specified target.
  final pulumi.Input<PromoteReleaseRuleResponse> promoteReleaseRule;
  /// Optional. The `RepairRolloutRule` will automatically repair a failed rollout.
  final pulumi.Input<RepairRolloutRuleResponse> repairRolloutRule;

  /// Creates a new [AutomationRuleResponse].
  /// [advanceRolloutRule] Optional. The `AdvanceRolloutRule` will automatically advance a successful Rollout.
  /// [promoteReleaseRule] Optional. `PromoteReleaseRule` will automatically promote a release from the current target to a specified target.
  /// [repairRolloutRule] Optional. The `RepairRolloutRule` will automatically repair a failed rollout.
  AutomationRuleResponse({
    required this.advanceRolloutRule,
    required this.promoteReleaseRule,
    required this.repairRolloutRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advanceRolloutRule': pulumi.Input.mapInputValue<AdvanceRolloutRuleResponse, Map<String, dynamic>>(advanceRolloutRule, (value) => value.toMap()),
      'promoteReleaseRule': pulumi.Input.mapInputValue<PromoteReleaseRuleResponse, Map<String, dynamic>>(promoteReleaseRule, (value) => value.toMap()),
      'repairRolloutRule': pulumi.Input.mapInputValue<RepairRolloutRuleResponse, Map<String, dynamic>>(repairRolloutRule, (value) => value.toMap()),
    };
  }

  factory AutomationRuleResponse.fromMap(Map<String, dynamic> map) {
    return AutomationRuleResponse(
      advanceRolloutRule: (AdvanceRolloutRuleResponse.fromMap((map['advanceRolloutRule'] as Map).cast<String, dynamic>())).input(),
      promoteReleaseRule: (PromoteReleaseRuleResponse.fromMap((map['promoteReleaseRule'] as Map).cast<String, dynamic>())).input(),
      repairRolloutRule: (RepairRolloutRuleResponse.fromMap((map['repairRolloutRule'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

