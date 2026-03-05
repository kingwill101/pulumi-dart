// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_inspect_template_inspect_config_rule_set_rule_exclusion_rule_dictionary.dart';
import 'prevention_inspect_template_inspect_config_rule_set_rule_exclusion_rule_exclude_by_hotword.dart';
import 'prevention_inspect_template_inspect_config_rule_set_rule_exclusion_rule_exclude_info_types.dart';
import 'prevention_inspect_template_inspect_config_rule_set_rule_exclusion_rule_regex.dart';

class PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRule {
  /// Dictionary which defines the rule.
  /// Structure is documented below.
  final pulumi.Input<PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleDictionary>? dictionary;
  /// Drop if the hotword rule is contained in the proximate context.
  /// For tabular data, the context includes the column name.
  /// Structure is documented below.
  final pulumi.Input<PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByHotword>? excludeByHotword;
  /// Set of infoTypes for which findings would affect this rule.
  /// Structure is documented below.
  final pulumi.Input<PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypes>? excludeInfoTypes;
  /// How the rule is applied. See the documentation for more information: https://cloud.google.com/dlp/docs/reference/rest/v2/InspectConfig#MatchingType
  /// Possible values are: `MATCHING_TYPE_FULL_MATCH`, `MATCHING_TYPE_PARTIAL_MATCH`, `MATCHING_TYPE_INVERSE_MATCH`.
  final pulumi.Input<String> matchingType;
  /// Regular expression which defines the rule.
  /// Structure is documented below.
  final pulumi.Input<PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleRegex>? regex;

  /// Creates a new [PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRule].
  /// [dictionary] Dictionary which defines the rule.
  /// [excludeByHotword] Drop if the hotword rule is contained in the proximate context.
  /// [excludeInfoTypes] Set of infoTypes for which findings would affect this rule.
  /// [matchingType] How the rule is applied. See the documentation for more information: https://cloud.google.com/dlp/docs/reference/rest/v2/InspectConfig#MatchingType
  /// [regex] Regular expression which defines the rule.
  PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRule({
    this.dictionary,
    this.excludeByHotword,
    this.excludeInfoTypes,
    required this.matchingType,
    this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dictionary': ?pulumi.Input.mapOptionalInputValue<PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleDictionary, Map<String, dynamic>>(dictionary, (value) => value.toMap()),
      'excludeByHotword': ?pulumi.Input.mapOptionalInputValue<PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByHotword, Map<String, dynamic>>(excludeByHotword, (value) => value.toMap()),
      'excludeInfoTypes': ?pulumi.Input.mapOptionalInputValue<PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypes, Map<String, dynamic>>(excludeInfoTypes, (value) => value.toMap()),
      'matchingType': matchingType,
      'regex': ?pulumi.Input.mapOptionalInputValue<PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleRegex, Map<String, dynamic>>(regex, (value) => value.toMap()),
    };
  }

  factory PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRule.fromMap(Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRule(
      dictionary: (() { final guardedValue = map['dictionary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleDictionary.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      excludeByHotword: (() { final guardedValue = map['excludeByHotword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByHotword.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      excludeInfoTypes: (() { final guardedValue = map['excludeInfoTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      matchingType: pulumi.Input.fromValue(map['matchingType'] as String),
      regex: (() { final guardedValue = map['regex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleRegex.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

