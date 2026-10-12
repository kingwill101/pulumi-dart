// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_content_policy_inspect_config_rule_set_rule_adjustment_rule_adjust_by_image_findings.dart';
import 'prevention_content_policy_inspect_config_rule_set_rule_adjustment_rule_adjust_by_matching_info_types.dart';
import 'prevention_content_policy_inspect_config_rule_set_rule_adjustment_rule_likelihood_adjustment.dart';

class PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRule {
  /// AdjustmentRule condition for image findings.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindings?>? adjustByImageFindings;
  /// AdjustmentRule condition for matching infoTypes.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByMatchingInfoTypes?>? adjustByMatchingInfoTypes;
  /// Likelihood adjustment to apply to all matching findings.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleLikelihoodAdjustment> likelihoodAdjustment;

  /// Creates a new [PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRule].
  /// [adjustByImageFindings] AdjustmentRule condition for image findings.
  /// [adjustByMatchingInfoTypes] AdjustmentRule condition for matching infoTypes.
  /// [likelihoodAdjustment] Likelihood adjustment to apply to all matching findings.
  const PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRule({
    this.adjustByImageFindings,
    this.adjustByMatchingInfoTypes,
    required this.likelihoodAdjustment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adjustByImageFindings': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindings, Map<String, dynamic>>(adjustByImageFindings, (value) => value.toMap()),
      'adjustByMatchingInfoTypes': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByMatchingInfoTypes, Map<String, dynamic>>(adjustByMatchingInfoTypes, (value) => value.toMap()),
      'likelihoodAdjustment': pulumi.Input.mapInputValue<PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleLikelihoodAdjustment, Map<String, dynamic>>(likelihoodAdjustment, (value) => value.toMap()),
    };
  }

  factory PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRule.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRule(
      adjustByImageFindings: (() { final guardedValue = map['adjustByImageFindings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByImageFindings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      adjustByMatchingInfoTypes: (() { final guardedValue = map['adjustByMatchingInfoTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleAdjustByMatchingInfoTypes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      likelihoodAdjustment: pulumi.Input.fromValue(PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRuleLikelihoodAdjustment.fromMap((map['likelihoodAdjustment']! as Map).cast<String, dynamic>())),
    );
  }
}
