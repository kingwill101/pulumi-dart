// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_inspect_template_inspect_config_rule_set_rule_exclusion_rule.dart';
import 'prevention_inspect_template_inspect_config_rule_set_rule_hotword_rule.dart';

class PreventionInspectTemplateInspectConfigRuleSetRule {
  /// The rule that specifies conditions when findings of infoTypes specified in InspectionRuleSet are removed from results.
  /// Structure is documented below.
  final pulumi.Input<PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRule>? exclusionRule;
  /// Hotword-based detection rule.
  /// Structure is documented below.
  final pulumi.Input<PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRule>? hotwordRule;

  /// Creates a new [PreventionInspectTemplateInspectConfigRuleSetRule].
  /// [exclusionRule] The rule that specifies conditions when findings of infoTypes specified in InspectionRuleSet are removed from results.
  /// [hotwordRule] Hotword-based detection rule.
  const PreventionInspectTemplateInspectConfigRuleSetRule({
    this.exclusionRule,
    this.hotwordRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusionRule': ?pulumi.Input.mapOptionalInputValue<PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRule, Map<String, dynamic>>(exclusionRule, (value) => value.toMap()),
      'hotwordRule': ?pulumi.Input.mapOptionalInputValue<PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRule, Map<String, dynamic>>(hotwordRule, (value) => value.toMap()),
    };
  }

  factory PreventionInspectTemplateInspectConfigRuleSetRule.fromMap(Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigRuleSetRule(
      exclusionRule: (() { final guardedValue = map['exclusionRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hotwordRule: (() { final guardedValue = map['hotwordRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

