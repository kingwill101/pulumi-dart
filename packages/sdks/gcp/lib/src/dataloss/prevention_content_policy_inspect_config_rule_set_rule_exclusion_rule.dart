// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_content_policy_inspect_config_rule_set_rule_exclusion_rule_dictionary.dart';
import 'prevention_content_policy_inspect_config_rule_set_rule_exclusion_rule_exclude_by_hotword.dart';
import 'prevention_content_policy_inspect_config_rule_set_rule_exclusion_rule_exclude_by_image_findings.dart';
import 'prevention_content_policy_inspect_config_rule_set_rule_exclusion_rule_exclude_info_types.dart';
import 'prevention_content_policy_inspect_config_rule_set_rule_exclusion_rule_regex.dart';

class PreventionContentPolicyInspectConfigRuleSetRuleExclusionRule {
  /// Dictionary which defines the rule.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionary?>? dictionary;
  /// Drop if the hotword rule is contained in the proximate context.
  /// For tabular data, the context includes the column name.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByHotword?>? excludeByHotword;
  /// The rule to exclude image findings based on spatial relationships with other image findings.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindings?>? excludeByImageFindings;
  /// Set of infoTypes for which findings would affect this rule.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypes?>? excludeInfoTypes;
  /// How the rule is applied. See the documentation for more information: https://cloud.google.com/dlp/docs/reference/rest/v2/InspectConfig#MatchingType
  /// Possible values are: `MATCHING_TYPE_FULL_MATCH`, `MATCHING_TYPE_PARTIAL_MATCH`, `MATCHING_TYPE_INVERSE_MATCH`, `MATCHING_TYPE_RULE_SPECIFIC`.
  final pulumi.Input<String> matchingType;
  /// Regular expression which defines the rule.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleRegex?>? regex;

  /// Creates a new [PreventionContentPolicyInspectConfigRuleSetRuleExclusionRule].
  /// [dictionary] Dictionary which defines the rule.
  /// [excludeByHotword] Drop if the hotword rule is contained in the proximate context.
  /// [excludeByImageFindings] The rule to exclude image findings based on spatial relationships with other image findings.
  /// [excludeInfoTypes] Set of infoTypes for which findings would affect this rule.
  /// [matchingType] How the rule is applied. See the documentation for more information: https://cloud.google.com/dlp/docs/reference/rest/v2/InspectConfig#MatchingType
  /// [regex] Regular expression which defines the rule.
  const PreventionContentPolicyInspectConfigRuleSetRuleExclusionRule({
    this.dictionary,
    this.excludeByHotword,
    this.excludeByImageFindings,
    this.excludeInfoTypes,
    required this.matchingType,
    this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dictionary': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionary, Map<String, dynamic>>(dictionary, (value) => value.toMap()),
      'excludeByHotword': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByHotword, Map<String, dynamic>>(excludeByHotword, (value) => value.toMap()),
      'excludeByImageFindings': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindings, Map<String, dynamic>>(excludeByImageFindings, (value) => value.toMap()),
      'excludeInfoTypes': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypes, Map<String, dynamic>>(excludeInfoTypes, (value) => value.toMap()),
      'matchingType': matchingType,
      'regex': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleRegex, Map<String, dynamic>>(regex, (value) => value.toMap()),
    };
  }

  factory PreventionContentPolicyInspectConfigRuleSetRuleExclusionRule.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigRuleSetRuleExclusionRule(
      dictionary: (() { final guardedValue = map['dictionary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleDictionary.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      excludeByHotword: (() { final guardedValue = map['excludeByHotword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByHotword.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      excludeByImageFindings: (() { final guardedValue = map['excludeByImageFindings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      excludeInfoTypes: (() { final guardedValue = map['excludeInfoTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      matchingType: pulumi.Input.fromValue(map['matchingType'] as String),
      regex: (() { final guardedValue = map['regex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyInspectConfigRuleSetRuleExclusionRuleRegex.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
