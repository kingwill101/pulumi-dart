// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_job_trigger_inspect_job_inspect_config_rule_set_rule_exclusion_rule_exclude_info_types_info_type_sensitivity_score.dart';

class PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesInfoType {
  /// Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed
  /// at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type.
  final pulumi.Input<String> name;
  /// Optional custom sensitivity for this InfoType. This only applies to data profiling.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesInfoTypeSensitivityScore?>? sensitivityScore;
  /// Version of the information type to use. By default, the version is set to stable.
  final pulumi.Input<String?>? version;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesInfoType].
  /// [name] Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed
  /// [sensitivityScore] Optional custom sensitivity for this InfoType. This only applies to data profiling.
  /// [version] Version of the information type to use. By default, the version is set to stable.
  const PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesInfoType({
    required this.name,
    this.sensitivityScore,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'sensitivityScore': ?pulumi.Input.mapOptionalInputValue<PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesInfoTypeSensitivityScore, Map<String, dynamic>>(sensitivityScore, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesInfoType.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesInfoType(
      name: pulumi.Input.fromValue(map['name'] as String),
      sensitivityScore: (() { final guardedValue = map['sensitivityScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeInfoTypesInfoTypeSensitivityScore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
