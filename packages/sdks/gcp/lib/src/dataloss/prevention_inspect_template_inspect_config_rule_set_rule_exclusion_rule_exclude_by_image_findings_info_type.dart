// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_inspect_template_inspect_config_rule_set_rule_exclusion_rule_exclude_by_image_findings_info_type_sensitivity_score.dart';

class PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsInfoType {
  /// Name of the information type.
  final pulumi.Input<String> name;
  /// Optional custom sensitivity for this InfoType.
  /// Structure is documented below.
  final pulumi.Input<PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsInfoTypeSensitivityScore?>? sensitivityScore;
  /// Version name for this InfoType.
  final pulumi.Input<String?>? version;

  /// Creates a new [PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsInfoType].
  /// [name] Name of the information type.
  /// [sensitivityScore] Optional custom sensitivity for this InfoType.
  /// [version] Version name for this InfoType.
  const PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsInfoType({
    required this.name,
    this.sensitivityScore,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'sensitivityScore': ?pulumi.Input.mapOptionalInputValue<PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsInfoTypeSensitivityScore, Map<String, dynamic>>(sensitivityScore, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsInfoType.fromMap(Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsInfoType(
      name: pulumi.Input.fromValue(map['name'] as String),
      sensitivityScore: (() { final guardedValue = map['sensitivityScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByImageFindingsInfoTypeSensitivityScore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
