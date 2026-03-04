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
  final pulumi.Input<GooglePrivacyDlpV2CustomInfoTypeExclusionType>?
  exclusionType;

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
      'detectionRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<GooglePrivacyDlpV2DetectionRule>,
            List<Map<String, dynamic>>
          >(
            detectionRules,
            (value) =>
                pulumi.Input.encodeList<
                  GooglePrivacyDlpV2DetectionRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'dictionary':
          ?pulumi.Input.mapOptionalInputValue<
            GooglePrivacyDlpV2Dictionary,
            Map<String, dynamic>
          >(dictionary, (value) => value.toMap()),
      'exclusionType':
          ?pulumi.Input.mapOptionalInputValue<
            GooglePrivacyDlpV2CustomInfoTypeExclusionType,
            String
          >(exclusionType, (value) => value.wireValue),
      'infoType':
          ?pulumi.Input.mapOptionalInputValue<
            GooglePrivacyDlpV2InfoType,
            Map<String, dynamic>
          >(infoType, (value) => value.toMap()),
      'likelihood':
          ?pulumi.Input.mapOptionalInputValue<
            GooglePrivacyDlpV2CustomInfoTypeLikelihood,
            String
          >(likelihood, (value) => value.wireValue),
      'regex':
          ?pulumi.Input.mapOptionalInputValue<
            GooglePrivacyDlpV2Regex,
            Map<String, dynamic>
          >(regex, (value) => value.toMap()),
      'sensitivityScore':
          ?pulumi.Input.mapOptionalInputValue<
            GooglePrivacyDlpV2SensitivityScore,
            Map<String, dynamic>
          >(sensitivityScore, (value) => value.toMap()),
      'storedType':
          ?pulumi.Input.mapOptionalInputValue<
            GooglePrivacyDlpV2StoredType,
            Map<String, dynamic>
          >(storedType, (value) => value.toMap()),
      'surrogateType': ?surrogateType,
    };
  }

  factory GooglePrivacyDlpV2CustomInfoType.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2CustomInfoType(
      detectionRules: (() {
        final guardedValue = map['detectionRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GooglePrivacyDlpV2DetectionRule>(
            guardedValue,
            (value) => GooglePrivacyDlpV2DetectionRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      dictionary: (() {
        final guardedValue = map['dictionary'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GooglePrivacyDlpV2Dictionary.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      exclusionType: (() {
        final guardedValue = map['exclusionType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GooglePrivacyDlpV2CustomInfoTypeExclusionType.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      infoType: (() {
        final guardedValue = map['infoType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GooglePrivacyDlpV2InfoType.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      likelihood: (() {
        final guardedValue = map['likelihood'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GooglePrivacyDlpV2CustomInfoTypeLikelihood.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      regex: (() {
        final guardedValue = map['regex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GooglePrivacyDlpV2Regex.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sensitivityScore: (() {
        final guardedValue = map['sensitivityScore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GooglePrivacyDlpV2SensitivityScore.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      storedType: (() {
        final guardedValue = map['storedType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GooglePrivacyDlpV2StoredType.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      surrogateType: (() {
        final guardedValue = map['surrogateType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
    );
  }
}
