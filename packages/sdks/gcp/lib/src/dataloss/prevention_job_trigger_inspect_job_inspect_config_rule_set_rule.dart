// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_job_trigger_inspect_job_inspect_config_rule_set_rule_exclusion_rule.dart';
import 'prevention_job_trigger_inspect_job_inspect_config_rule_set_rule_hotword_rule.dart';

class PreventionJobTriggerInspectJobInspectConfigRuleSetRule {
  /// The rule that specifies conditions when findings of infoTypes specified in InspectionRuleSet are removed from results.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRule>? exclusionRule;
  /// Hotword-based detection rule.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRule>? hotwordRule;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigRuleSetRule].
  /// [exclusionRule] The rule that specifies conditions when findings of infoTypes specified in InspectionRuleSet are removed from results.
  /// [hotwordRule] Hotword-based detection rule.
  PreventionJobTriggerInspectJobInspectConfigRuleSetRule({
    this.exclusionRule,
    this.hotwordRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusionRule': ?pulumi.Input.mapOptionalInputValue<PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRule, Map<String, dynamic>>(exclusionRule, (value) => value.toMap()),
      'hotwordRule': ?pulumi.Input.mapOptionalInputValue<PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRule, Map<String, dynamic>>(hotwordRule, (value) => value.toMap()),
    };
  }

  factory PreventionJobTriggerInspectJobInspectConfigRuleSetRule.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobInspectConfigRuleSetRule(
      exclusionRule: map['exclusionRule'] == null ? null : (PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRule.fromMap((map['exclusionRule']! as Map).cast<String, dynamic>())).input(),
      hotwordRule: map['hotwordRule'] == null ? null : (PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRule.fromMap((map['hotwordRule']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

