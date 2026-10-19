// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_content_policy_inspect_config_custom_info_type_detection_rule.dart';
import 'prevention_content_policy_inspect_config_custom_info_type_dictionary.dart';
import 'prevention_content_policy_inspect_config_custom_info_type_file_label_info_type.dart';
import 'prevention_content_policy_inspect_config_custom_info_type_info_type.dart';
import 'prevention_content_policy_inspect_config_custom_info_type_metadata_key_value_expression.dart';
import 'prevention_content_policy_inspect_config_custom_info_type_regex.dart';
import 'prevention_content_policy_inspect_config_custom_info_type_sensitivity_score.dart';
import 'prevention_content_policy_inspect_config_custom_info_type_stored_type.dart';

class PreventionContentPolicyInspectConfigCustomInfoType {
  /// Set of detection rules to apply to all findings of this CustomInfoType. Rules are applied in order
  /// that they are specified. Only supported for the dictionary, regex, and storedType CustomInfoTypes.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRule>?>? detectionRules;
  /// Dictionary which defines the rule.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigCustomInfoTypeDictionary?>? dictionary;
  /// If set to EXCLUSION_TYPE_EXCLUDE this infoType will not cause a finding to be returned. It still can be used for rules matching.
  /// Possible values are: `EXCLUSION_TYPE_EXCLUDE`.
  final pulumi.Input<String?>? exclusionType;
  /// Configuration for a custom infoType that detects file labels.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoType?>? fileLabelInfoType;
  /// CustomInfoType can either be a new infoType, or an extension of built-in infoType, when the name matches one of existing
  /// infoTypes and that infoType is specified in `infoTypes` field. Specifying the latter adds findings to the
  /// one detected by the system. If built-in info type is not specified in `infoTypes` list then the name is
  /// treated as a custom info type.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigCustomInfoTypeInfoType> infoType;
  /// Likelihood to return for this CustomInfoType. This base value can be altered by a detection rule if the finding meets the criteria
  /// specified by the rule.
  /// Default value is `VERY_LIKELY`.
  /// Possible values are: `VERY_UNLIKELY`, `UNLIKELY`, `POSSIBLE`, `LIKELY`, `VERY_LIKELY`.
  final pulumi.Input<String?>? likelihood;
  /// Configuration for a custom infoType that detects key-value pairs in the metadata matching the specified regular expressions.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigCustomInfoTypeMetadataKeyValueExpression?>? metadataKeyValueExpression;
  /// Regular expression which defines the rule.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigCustomInfoTypeRegex?>? regex;
  /// Optional custom sensitivity for this InfoType. This only applies to data profiling.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigCustomInfoTypeSensitivityScore?>? sensitivityScore;
  /// A reference to a StoredInfoType to use with scanning.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfigCustomInfoTypeStoredType?>? storedType;
  /// Message for detecting output from deidentification transformations that support reversing.
  final pulumi.Input<Map<String, dynamic>?>? surrogateType;

  /// Creates a new [PreventionContentPolicyInspectConfigCustomInfoType].
  /// [detectionRules] Set of detection rules to apply to all findings of this CustomInfoType. Rules are applied in order
  /// [dictionary] Dictionary which defines the rule.
  /// [exclusionType] If set to EXCLUSION_TYPE_EXCLUDE this infoType will not cause a finding to be returned. It still can be used for rules matching.
  /// [fileLabelInfoType] Configuration for a custom infoType that detects file labels.
  /// [infoType] CustomInfoType can either be a new infoType, or an extension of built-in infoType, when the name matches one of existing
  /// [likelihood] Likelihood to return for this CustomInfoType. This base value can be altered by a detection rule if the finding meets the criteria
  /// [metadataKeyValueExpression] Configuration for a custom infoType that detects key-value pairs in the metadata matching the specified regular expressions.
  /// [regex] Regular expression which defines the rule.
  /// [sensitivityScore] Optional custom sensitivity for this InfoType. This only applies to data profiling.
  /// [storedType] A reference to a StoredInfoType to use with scanning.
  /// [surrogateType] Message for detecting output from deidentification transformations that support reversing.
  const PreventionContentPolicyInspectConfigCustomInfoType({
    this.detectionRules,
    this.dictionary,
    this.exclusionType,
    this.fileLabelInfoType,
    required this.infoType,
    this.likelihood,
    this.metadataKeyValueExpression,
    this.regex,
    this.sensitivityScore,
    this.storedType,
    this.surrogateType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detectionRules': ?pulumi.Input.mapOptionalInputValue<List<PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRule>, List<Map<String, dynamic>>>(detectionRules, (value) => pulumi.Input.encodeList<PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dictionary': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyInspectConfigCustomInfoTypeDictionary, Map<String, dynamic>>(dictionary, (value) => value.toMap()),
      'exclusionType': ?exclusionType,
      'fileLabelInfoType': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoType, Map<String, dynamic>>(fileLabelInfoType, (value) => value.toMap()),
      'infoType': pulumi.Input.mapInputValue<PreventionContentPolicyInspectConfigCustomInfoTypeInfoType, Map<String, dynamic>>(infoType, (value) => value.toMap()),
      'likelihood': ?likelihood,
      'metadataKeyValueExpression': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyInspectConfigCustomInfoTypeMetadataKeyValueExpression, Map<String, dynamic>>(metadataKeyValueExpression, (value) => value.toMap()),
      'regex': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyInspectConfigCustomInfoTypeRegex, Map<String, dynamic>>(regex, (value) => value.toMap()),
      'sensitivityScore': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyInspectConfigCustomInfoTypeSensitivityScore, Map<String, dynamic>>(sensitivityScore, (value) => value.toMap()),
      'storedType': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyInspectConfigCustomInfoTypeStoredType, Map<String, dynamic>>(storedType, (value) => value.toMap()),
      'surrogateType': ?surrogateType,
    };
  }

  factory PreventionContentPolicyInspectConfigCustomInfoType.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyInspectConfigCustomInfoType(
      detectionRules: (() { final guardedValue = map['detectionRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRule>(guardedValue, (value) => PreventionContentPolicyInspectConfigCustomInfoTypeDetectionRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dictionary: (() { final guardedValue = map['dictionary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyInspectConfigCustomInfoTypeDictionary.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      exclusionType: (() { final guardedValue = map['exclusionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileLabelInfoType: (() { final guardedValue = map['fileLabelInfoType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyInspectConfigCustomInfoTypeFileLabelInfoType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      infoType: pulumi.Input.fromValue(PreventionContentPolicyInspectConfigCustomInfoTypeInfoType.fromMap((map['infoType']! as Map).cast<String, dynamic>())),
      likelihood: (() { final guardedValue = map['likelihood']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadataKeyValueExpression: (() { final guardedValue = map['metadataKeyValueExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyInspectConfigCustomInfoTypeMetadataKeyValueExpression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      regex: (() { final guardedValue = map['regex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyInspectConfigCustomInfoTypeRegex.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sensitivityScore: (() { final guardedValue = map['sensitivityScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyInspectConfigCustomInfoTypeSensitivityScore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storedType: (() { final guardedValue = map['storedType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyInspectConfigCustomInfoTypeStoredType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      surrogateType: (() { final guardedValue = map['surrogateType']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
