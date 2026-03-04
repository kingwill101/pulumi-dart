// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_job_trigger_inspect_job_inspect_config_rule_set_rule_exclusion_rule.dart';
import 'prevention_job_trigger_inspect_job_inspect_config_rule_set_rule_hotword_rule.dart';

class PreventionJobTriggerInspectJobInspectConfigRuleSetRule {
  /// The rule that specifies conditions when findings of infoTypes specified in InspectionRuleSet are removed from results.
  /// Structure is documented below.
  final pulumi.Input<
    PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRule
  >?
  exclusionRule;

  /// Hotword-based detection rule.
  /// Structure is documented below.
  final pulumi.Input<
    PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRule
  >?
  hotwordRule;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigRuleSetRule].
  /// [exclusionRule] The rule that specifies conditions when findings of infoTypes specified in InspectionRuleSet are removed from results.
  /// [hotwordRule] Hotword-based detection rule.
  PreventionJobTriggerInspectJobInspectConfigRuleSetRule({
    this.exclusionRule,
    this.hotwordRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusionRule':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRule,
            Map<String, dynamic>
          >(exclusionRule, (value) => value.toMap()),
      'hotwordRule':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRule,
            Map<String, dynamic>
          >(hotwordRule, (value) => value.toMap()),
    };
  }

  factory PreventionJobTriggerInspectJobInspectConfigRuleSetRule.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionJobTriggerInspectJobInspectConfigRuleSetRule(
      exclusionRule: (() {
        final guardedValue = map['exclusionRule'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRule.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      hotwordRule: (() {
        final guardedValue = map['hotwordRule'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRule.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
