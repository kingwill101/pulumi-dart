// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_filter_config_filter_rule_settings_rule_set.dart';

class TemplateFilterConfigFilterRuleSettings {
  /// List of rule sets to be applied to filters.
  /// Structure is documented below.
  final pulumi.Input<List<TemplateFilterConfigFilterRuleSettingsRuleSet>?>? ruleSets;

  /// Creates a new [TemplateFilterConfigFilterRuleSettings].
  /// [ruleSets] List of rule sets to be applied to filters.
  const TemplateFilterConfigFilterRuleSettings({
    this.ruleSets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleSets': ?pulumi.Input.mapOptionalInputValue<List<TemplateFilterConfigFilterRuleSettingsRuleSet>, List<Map<String, dynamic>>>(ruleSets, (value) => pulumi.Input.encodeList<TemplateFilterConfigFilterRuleSettingsRuleSet, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TemplateFilterConfigFilterRuleSettings.fromMap(Map<String, dynamic> map) {
    return TemplateFilterConfigFilterRuleSettings(
      ruleSets: (() { final guardedValue = map['ruleSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TemplateFilterConfigFilterRuleSettingsRuleSet>(guardedValue, (value) => TemplateFilterConfigFilterRuleSettingsRuleSet.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
