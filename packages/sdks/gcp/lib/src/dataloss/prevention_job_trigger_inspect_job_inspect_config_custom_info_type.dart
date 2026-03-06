// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_job_trigger_inspect_job_inspect_config_custom_info_type_dictionary.dart';
import 'prevention_job_trigger_inspect_job_inspect_config_custom_info_type_info_type.dart';
import 'prevention_job_trigger_inspect_job_inspect_config_custom_info_type_regex.dart';
import 'prevention_job_trigger_inspect_job_inspect_config_custom_info_type_sensitivity_score.dart';
import 'prevention_job_trigger_inspect_job_inspect_config_custom_info_type_stored_type.dart';

class PreventionJobTriggerInspectJobInspectConfigCustomInfoType {
  /// Dictionary which defines the rule.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionary>? dictionary;
  /// If set to EXCLUSION_TYPE_EXCLUDE this infoType will not cause a finding to be returned. It still can be used for rules matching.
  /// Possible values are: `EXCLUSION_TYPE_EXCLUDE`.
  final pulumi.Input<String>? exclusionType;
  /// CustomInfoType can either be a new infoType, or an extension of built-in infoType, when the name matches one of existing
  /// infoTypes and that infoType is specified in `info_types` field. Specifying the latter adds findings to the
  /// one detected by the system. If built-in info type is not specified in `info_types` list then the name is
  /// treated as a custom info type.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeInfoType> infoType;
  /// Likelihood to return for this CustomInfoType. This base value can be altered by a detection rule if the finding meets the criteria
  /// specified by the rule.
  /// Default value is `VERY_LIKELY`.
  /// Possible values are: `VERY_UNLIKELY`, `UNLIKELY`, `POSSIBLE`, `LIKELY`, `VERY_LIKELY`.
  final pulumi.Input<String>? likelihood;
  /// Regular expression which defines the rule.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeRegex>? regex;
  /// Optional custom sensitivity for this InfoType. This only applies to data profiling.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeSensitivityScore>? sensitivityScore;
  /// A reference to a StoredInfoType to use with scanning.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeStoredType>? storedType;
  /// Message for detecting output from deidentification transformations that support reversing.
  final pulumi.Input<Map<String, dynamic>>? surrogateType;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigCustomInfoType].
  /// [dictionary] Dictionary which defines the rule.
  /// [exclusionType] If set to EXCLUSION_TYPE_EXCLUDE this infoType will not cause a finding to be returned. It still can be used for rules matching.
  /// [infoType] CustomInfoType can either be a new infoType, or an extension of built-in infoType, when the name matches one of existing
  /// [likelihood] Likelihood to return for this CustomInfoType. This base value can be altered by a detection rule if the finding meets the criteria
  /// [regex] Regular expression which defines the rule.
  /// [sensitivityScore] Optional custom sensitivity for this InfoType. This only applies to data profiling.
  /// [storedType] A reference to a StoredInfoType to use with scanning.
  /// [surrogateType] Message for detecting output from deidentification transformations that support reversing.
  const PreventionJobTriggerInspectJobInspectConfigCustomInfoType({
    this.dictionary,
    this.exclusionType,
    required this.infoType,
    this.likelihood,
    this.regex,
    this.sensitivityScore,
    this.storedType,
    this.surrogateType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dictionary': ?pulumi.Input.mapOptionalInputValue<PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionary, Map<String, dynamic>>(dictionary, (value) => value.toMap()),
      'exclusionType': ?exclusionType,
      'infoType': pulumi.Input.mapInputValue<PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeInfoType, Map<String, dynamic>>(infoType, (value) => value.toMap()),
      'likelihood': ?likelihood,
      'regex': ?pulumi.Input.mapOptionalInputValue<PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeRegex, Map<String, dynamic>>(regex, (value) => value.toMap()),
      'sensitivityScore': ?pulumi.Input.mapOptionalInputValue<PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeSensitivityScore, Map<String, dynamic>>(sensitivityScore, (value) => value.toMap()),
      'storedType': ?pulumi.Input.mapOptionalInputValue<PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeStoredType, Map<String, dynamic>>(storedType, (value) => value.toMap()),
      'surrogateType': ?surrogateType,
    };
  }

  factory PreventionJobTriggerInspectJobInspectConfigCustomInfoType.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobInspectConfigCustomInfoType(
      dictionary: (() { final guardedValue = map['dictionary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionary.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      exclusionType: (() { final guardedValue = map['exclusionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      infoType: pulumi.Input.fromValue(PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeInfoType.fromMap((map['infoType']! as Map).cast<String, dynamic>())),
      likelihood: (() { final guardedValue = map['likelihood']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regex: (() { final guardedValue = map['regex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeRegex.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sensitivityScore: (() { final guardedValue = map['sensitivityScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeSensitivityScore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storedType: (() { final guardedValue = map['storedType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeStoredType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      surrogateType: (() { final guardedValue = map['surrogateType']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

