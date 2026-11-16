// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_content_policy_inspect_config_rule_set_rule_adjustment_rule.dart';
import 'prevention_content_policy_inspect_config_rule_set_rule_exclusion_rule.dart';
import 'prevention_content_policy_inspect_config_rule_set_rule_hotword_rule.dart';

class PreventionContentPolicyInspectConfigRuleSetRule {
  /// Rule that specifies conditions when a certain infoType's finding details should be adjusted.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRule?>? adjustmentRule;
  /// The rule that specifies conditions when findings of infoTypes specified in InspectionRuleSet are removed from results.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigRuleSetRuleExclusionRule?>? exclusionRule;
  /// Hotword-based detection rule.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigRuleSetRuleHotwordRule?>? hotwordRule;

  /// Creates a new [PreventionContentPolicyInspectConfigRuleSetRule].
  /// [adjustmentRule] Rule that specifies conditions when a certain infoType's finding details should be adjusted.
  /// [exclusionRule] The rule that specifies conditions when findings of infoTypes specified in InspectionRuleSet are removed from results.
  /// [hotwordRule] Hotword-based detection rule.
  const PreventionContentPolicyInspectConfigRuleSetRule({
    this.adjustmentRule,
    this.exclusionRule,
    this.hotwordRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adjustmentRule': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRule, Map<String, dynamic>>(adjustmentRule, (value) => value.toMap()),
      'exclusionRule': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyInspectConfigRuleSetRuleExclusionRule, Map<String, dynamic>>(exclusionRule, (value) => value.toMap()),
      'hotwordRule': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyInspectConfigRuleSetRuleHotwordRule, Map<String, dynamic>>(hotwordRule, (value) => value.toMap()),
    };
  }

  factory PreventionContentPolicyInspectConfigRuleSetRule.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigRuleSetRule(
      adjustmentRule: (() { final guardedValue = map['adjustmentRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyInspectConfigRuleSetRuleAdjustmentRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      exclusionRule: (() { final guardedValue = map['exclusionRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyInspectConfigRuleSetRuleExclusionRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hotwordRule: (() { final guardedValue = map['hotwordRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyInspectConfigRuleSetRuleHotwordRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
