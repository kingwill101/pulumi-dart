// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_filter_config_filter_rule_settings_rule_set_rule_exclusion_rule.dart';

class TemplateFilterConfigFilterRuleSettingsRuleSetRule {
  /// The rule that specifies conditions when filter detections are excluded from
  /// results.
  /// Structure is documented below.
  final pulumi.Input<TemplateFilterConfigFilterRuleSettingsRuleSetRuleExclusionRule?>? exclusionRule;

  /// Creates a new [TemplateFilterConfigFilterRuleSettingsRuleSetRule].
  /// [exclusionRule] The rule that specifies conditions when filter detections are excluded from
  const TemplateFilterConfigFilterRuleSettingsRuleSetRule({
    this.exclusionRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusionRule': ?pulumi.Input.mapOptionalInputValue<TemplateFilterConfigFilterRuleSettingsRuleSetRuleExclusionRule, Map<String, dynamic>>(exclusionRule, (value) => value.toMap()),
    };
  }

  factory TemplateFilterConfigFilterRuleSettingsRuleSetRule.fromMap(Map<String, dynamic> map) {
    return TemplateFilterConfigFilterRuleSettingsRuleSetRule(
      exclusionRule: (() { final guardedValue = map['exclusionRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TemplateFilterConfigFilterRuleSettingsRuleSetRuleExclusionRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
