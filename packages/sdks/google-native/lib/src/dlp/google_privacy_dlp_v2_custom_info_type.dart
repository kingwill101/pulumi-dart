// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_custom_info_type_exclusion_type.dart';
import 'google_privacy_dlp_v2_custom_info_type_likelihood.dart';
import 'google_privacy_dlp_v2_detection_rule.dart';
import 'google_privacy_dlp_v2_dictionary.dart';
import 'google_privacy_dlp_v2_info_type.dart';
import 'google_privacy_dlp_v2_regex.dart';
import 'google_privacy_dlp_v2_sensitivity_score.dart';
import 'google_privacy_dlp_v2_stored_type.dart';

/// Custom information type provided by the user. Used to find domain-specific sensitive information configurable to the data in question.
class GooglePrivacyDlpV2CustomInfoType {
  /// Set of detection rules to apply to all findings of this CustomInfoType. Rules are applied in order that they are specified. Not supported for the `surrogate_type` CustomInfoType.
  final pulumi.Input<List<GooglePrivacyDlpV2DetectionRule>>? detectionRules;
  /// A list of phrases to detect as a CustomInfoType.
  final pulumi.Input<GooglePrivacyDlpV2Dictionary>? dictionary;
  /// If set to EXCLUSION_TYPE_EXCLUDE this infoType will not cause a finding to be returned. It still can be used for rules matching.
  final pulumi.Input<GooglePrivacyDlpV2CustomInfoTypeExclusionType>? exclusionType;
  /// CustomInfoType can either be a new infoType, or an extension of built-in infoType, when the name matches one of existing infoTypes and that infoType is specified in `InspectContent.info_types` field. Specifying the latter adds findings to the one detected by the system. If built-in info type is not specified in `InspectContent.info_types` list then the name is treated as a custom info type.
  final pulumi.Input<GooglePrivacyDlpV2InfoType>? infoType;
  /// Likelihood to return for this CustomInfoType. This base value can be altered by a detection rule if the finding meets the criteria specified by the rule. Defaults to `VERY_LIKELY` if not specified.
  final pulumi.Input<GooglePrivacyDlpV2CustomInfoTypeLikelihood>? likelihood;
  /// Regular expression based CustomInfoType.
  final pulumi.Input<GooglePrivacyDlpV2Regex>? regex;
  /// Sensitivity for this CustomInfoType. If this CustomInfoType extends an existing InfoType, the sensitivity here will take precedence over that of the original InfoType. If unset for a CustomInfoType, it will default to HIGH. This only applies to data profiling.
  final pulumi.Input<GooglePrivacyDlpV2SensitivityScore>? sensitivityScore;
  /// Load an existing `StoredInfoType` resource for use in `InspectDataSource`. Not currently supported in `InspectContent`.
  final pulumi.Input<GooglePrivacyDlpV2StoredType>? storedType;
  /// Message for detecting output from deidentification transformations that support reversing.
  final pulumi.Input<Map<String, dynamic>>? surrogateType;

  /// Creates a new [GooglePrivacyDlpV2CustomInfoType].
  /// [detectionRules] Set of detection rules to apply to all findings of this CustomInfoType. Rules are applied in order that they are specified. Not supported for the `surrogate_type` CustomInfoType.
  /// [dictionary] A list of phrases to detect as a CustomInfoType.
  /// [exclusionType] If set to EXCLUSION_TYPE_EXCLUDE this infoType will not cause a finding to be returned. It still can be used for rules matching.
  /// [infoType] CustomInfoType can either be a new infoType, or an extension of built-in infoType, when the name matches one of existing infoTypes and that infoType is specified in `InspectContent.info_types` field. Specifying the latter adds findings to the one detected by the system. If built-in info type is not specified in `InspectContent.info_types` list then the name is treated as a custom info type.
  /// [likelihood] Likelihood to return for this CustomInfoType. This base value can be altered by a detection rule if the finding meets the criteria specified by the rule. Defaults to `VERY_LIKELY` if not specified.
  /// [regex] Regular expression based CustomInfoType.
  /// [sensitivityScore] Sensitivity for this CustomInfoType. If this CustomInfoType extends an existing InfoType, the sensitivity here will take precedence over that of the original InfoType. If unset for a CustomInfoType, it will default to HIGH. This only applies to data profiling.
  /// [storedType] Load an existing `StoredInfoType` resource for use in `InspectDataSource`. Not currently supported in `InspectContent`.
  /// [surrogateType] Message for detecting output from deidentification transformations that support reversing.
  GooglePrivacyDlpV2CustomInfoType({
    this.detectionRules,
    this.dictionary,
    this.exclusionType,
    this.infoType,
    this.likelihood,
    this.regex,
    this.sensitivityScore,
    this.storedType,
    this.surrogateType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detectionRules': ?pulumi.Input.mapOptionalInputValue<List<GooglePrivacyDlpV2DetectionRule>, List<Map<String, dynamic>>>(detectionRules, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2DetectionRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dictionary': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2Dictionary, Map<String, dynamic>>(dictionary, (value) => value.toMap()),
      'exclusionType': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2CustomInfoTypeExclusionType, String>(exclusionType, (value) => value.value),
      'infoType': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2InfoType, Map<String, dynamic>>(infoType, (value) => value.toMap()),
      'likelihood': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2CustomInfoTypeLikelihood, String>(likelihood, (value) => value.value),
      'regex': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2Regex, Map<String, dynamic>>(regex, (value) => value.toMap()),
      'sensitivityScore': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2SensitivityScore, Map<String, dynamic>>(sensitivityScore, (value) => value.toMap()),
      'storedType': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2StoredType, Map<String, dynamic>>(storedType, (value) => value.toMap()),
      'surrogateType': ?surrogateType,
    };
  }

  factory GooglePrivacyDlpV2CustomInfoType.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2CustomInfoType(
      detectionRules: map['detectionRules'] == null ? null : (pulumi.Input.decodeList<GooglePrivacyDlpV2DetectionRule>(map['detectionRules'], (value) => GooglePrivacyDlpV2DetectionRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dictionary: map['dictionary'] == null ? null : (GooglePrivacyDlpV2Dictionary.fromMap((map['dictionary'] as Map).cast<String, dynamic>())).input(),
      exclusionType: map['exclusionType'] == null ? null : (GooglePrivacyDlpV2CustomInfoTypeExclusionType.fromValue(map['exclusionType'] as String)).input(),
      infoType: map['infoType'] == null ? null : (GooglePrivacyDlpV2InfoType.fromMap((map['infoType'] as Map).cast<String, dynamic>())).input(),
      likelihood: map['likelihood'] == null ? null : (GooglePrivacyDlpV2CustomInfoTypeLikelihood.fromValue(map['likelihood'] as String)).input(),
      regex: map['regex'] == null ? null : (GooglePrivacyDlpV2Regex.fromMap((map['regex'] as Map).cast<String, dynamic>())).input(),
      sensitivityScore: map['sensitivityScore'] == null ? null : (GooglePrivacyDlpV2SensitivityScore.fromMap((map['sensitivityScore'] as Map).cast<String, dynamic>())).input(),
      storedType: map['storedType'] == null ? null : (GooglePrivacyDlpV2StoredType.fromMap((map['storedType'] as Map).cast<String, dynamic>())).input(),
      surrogateType: map['surrogateType'] == null ? null : ((map['surrogateType'] as Map).cast<String, dynamic>()).input(),
    );
  }
}

