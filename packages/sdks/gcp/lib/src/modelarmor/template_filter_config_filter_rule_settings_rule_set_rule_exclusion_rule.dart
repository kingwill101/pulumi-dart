// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_filter_config_filter_rule_settings_rule_set_rule_exclusion_rule_dictionary.dart';
import 'template_filter_config_filter_rule_settings_rule_set_rule_exclusion_rule_regex.dart';

class TemplateFilterConfigFilterRuleSettingsRuleSetRuleExclusionRule {
  /// Dictionary which defines the rule.
  /// Structure is documented below.
  final pulumi.Input<TemplateFilterConfigFilterRuleSettingsRuleSetRuleExclusionRuleDictionary?>? dictionary;
  /// Specifies the scope of the input that should be matched against the
  /// exclusion rule. If unspecified, defaults to MATCHING_SCOPE_PARTIAL_MATCH.
  /// Possible values:
  /// MATCHING_SCOPE_FULL_MATCH
  /// MATCHING_SCOPE_PARTIAL_MATCH
  final pulumi.Input<String?>? matchingScope;
  /// Regular expression which defines the rule.
  /// Structure is documented below.
  final pulumi.Input<TemplateFilterConfigFilterRuleSettingsRuleSetRuleExclusionRuleRegex?>? regex;

  /// Creates a new [TemplateFilterConfigFilterRuleSettingsRuleSetRuleExclusionRule].
  /// [dictionary] Dictionary which defines the rule.
  /// [matchingScope] Specifies the scope of the input that should be matched against the
  /// [regex] Regular expression which defines the rule.
  const TemplateFilterConfigFilterRuleSettingsRuleSetRuleExclusionRule({
    this.dictionary,
    this.matchingScope,
    this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dictionary': ?pulumi.Input.mapOptionalInputValue<TemplateFilterConfigFilterRuleSettingsRuleSetRuleExclusionRuleDictionary, Map<String, dynamic>>(dictionary, (value) => value.toMap()),
      'matchingScope': ?matchingScope,
      'regex': ?pulumi.Input.mapOptionalInputValue<TemplateFilterConfigFilterRuleSettingsRuleSetRuleExclusionRuleRegex, Map<String, dynamic>>(regex, (value) => value.toMap()),
    };
  }

  factory TemplateFilterConfigFilterRuleSettingsRuleSetRuleExclusionRule.fromMap(Map<String, dynamic> map) {
    return TemplateFilterConfigFilterRuleSettingsRuleSetRuleExclusionRule(
      dictionary: (() { final guardedValue = map['dictionary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TemplateFilterConfigFilterRuleSettingsRuleSetRuleExclusionRuleDictionary.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      matchingScope: (() { final guardedValue = map['matchingScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regex: (() { final guardedValue = map['regex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TemplateFilterConfigFilterRuleSettingsRuleSetRuleExclusionRuleRegex.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
