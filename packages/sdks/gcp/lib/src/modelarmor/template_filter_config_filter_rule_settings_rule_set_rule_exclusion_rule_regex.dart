// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TemplateFilterConfigFilterRuleSettingsRuleSetRuleExclusionRuleRegex {
  /// The regular expression pattern.
  final pulumi.Input<String> pattern;

  /// Creates a new [TemplateFilterConfigFilterRuleSettingsRuleSetRuleExclusionRuleRegex].
  /// [pattern] The regular expression pattern.
  const TemplateFilterConfigFilterRuleSettingsRuleSetRuleExclusionRuleRegex({
    required this.pattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pattern': pattern,
    };
  }

  factory TemplateFilterConfigFilterRuleSettingsRuleSetRuleExclusionRuleRegex.fromMap(Map<String, dynamic> map) {
    return TemplateFilterConfigFilterRuleSettingsRuleSetRuleExclusionRuleRegex(
      pattern: pulumi.Input.fromValue(map['pattern'] as String),
    );
  }
}
