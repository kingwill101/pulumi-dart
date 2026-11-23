// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_filter_config_filter_rule_settings_rule_set_rule.dart';

class TemplateFilterConfigFilterRuleSettingsRuleSet {
  /// List of filters this rule set is applied to.
  /// Possible values:
  /// PROMPT_INJECTION_AND_JAILBREAK
  /// RESPONSIBLE_AI
  final pulumi.Input<List<String>> filterTypes;
  /// Set of rules to be applied to filterTypes.
  /// Structure is documented below.
  final pulumi.Input<List<TemplateFilterConfigFilterRuleSettingsRuleSetRule>> rules;

  /// Creates a new [TemplateFilterConfigFilterRuleSettingsRuleSet].
  /// [filterTypes] List of filters this rule set is applied to.
  /// [rules] Set of rules to be applied to filterTypes.
  const TemplateFilterConfigFilterRuleSettingsRuleSet({
    required this.filterTypes,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterTypes': filterTypes,
      'rules': pulumi.Input.mapInputValue<List<TemplateFilterConfigFilterRuleSettingsRuleSetRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<TemplateFilterConfigFilterRuleSettingsRuleSetRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TemplateFilterConfigFilterRuleSettingsRuleSet.fromMap(Map<String, dynamic> map) {
    return TemplateFilterConfigFilterRuleSettingsRuleSet(
      filterTypes: pulumi.Input.fromValue((map['filterTypes'] as List).cast<String>()),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<TemplateFilterConfigFilterRuleSettingsRuleSetRule>(map['rules']!, (value) => TemplateFilterConfigFilterRuleSettingsRuleSetRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
