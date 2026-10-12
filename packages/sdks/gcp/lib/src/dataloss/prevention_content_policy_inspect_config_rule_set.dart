// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_content_policy_inspect_config_rule_set_info_type.dart';
import 'prevention_content_policy_inspect_config_rule_set_rule.dart';

class PreventionContentPolicyInspectConfigRuleSet {
  /// List of infoTypes this rule set is applied to.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionContentPolicyInspectConfigRuleSetInfoType>> infoTypes;
  /// Set of rules to be applied to infoTypes. The rules are applied in order.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionContentPolicyInspectConfigRuleSetRule>> rules;

  /// Creates a new [PreventionContentPolicyInspectConfigRuleSet].
  /// [infoTypes] List of infoTypes this rule set is applied to.
  /// [rules] Set of rules to be applied to infoTypes. The rules are applied in order.
  const PreventionContentPolicyInspectConfigRuleSet({
    required this.infoTypes,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infoTypes': pulumi.Input.mapInputValue<List<PreventionContentPolicyInspectConfigRuleSetInfoType>, List<Map<String, dynamic>>>(infoTypes, (value) => pulumi.Input.encodeList<PreventionContentPolicyInspectConfigRuleSetInfoType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rules': pulumi.Input.mapInputValue<List<PreventionContentPolicyInspectConfigRuleSetRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<PreventionContentPolicyInspectConfigRuleSetRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PreventionContentPolicyInspectConfigRuleSet.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigRuleSet(
      infoTypes: pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionContentPolicyInspectConfigRuleSetInfoType>(map['infoTypes']!, (value) => PreventionContentPolicyInspectConfigRuleSetInfoType.fromMap((value as Map).cast<String, dynamic>()))),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionContentPolicyInspectConfigRuleSetRule>(map['rules']!, (value) => PreventionContentPolicyInspectConfigRuleSetRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
