// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_custom_info_type.dart';
import 'google_privacy_dlp_v2_finding_limits.dart';
import 'google_privacy_dlp_v2_info_type.dart';
import 'google_privacy_dlp_v2_info_type_likelihood.dart';
import 'google_privacy_dlp_v2_inspect_config_content_options_item.dart';
import 'google_privacy_dlp_v2_inspect_config_min_likelihood.dart';
import 'google_privacy_dlp_v2_inspection_rule_set.dart';

/// Configuration description of the scanning process. When used with redactContent only info_types and min_likelihood are currently used.
class GooglePrivacyDlpV2InspectConfig {
  /// Deprecated and unused.
  final pulumi.Input<List<GooglePrivacyDlpV2InspectConfigContentOptionsItem>>? contentOptions;
  /// CustomInfoTypes provided by the user. See https://cloud.google.com/dlp/docs/creating-custom-infotypes to learn more.
  final pulumi.Input<List<GooglePrivacyDlpV2CustomInfoType>>? customInfoTypes;
  /// When true, excludes type information of the findings. This is not used for data profiling.
  final pulumi.Input<bool>? excludeInfoTypes;
  /// When true, a contextual quote from the data that triggered a finding is included in the response; see Finding.quote. This is not used for data profiling.
  final pulumi.Input<bool>? includeQuote;
  /// Restricts what info_types to look for. The values must correspond to InfoType values returned by ListInfoTypes or listed at https://cloud.google.com/dlp/docs/infotypes-reference. When no InfoTypes or CustomInfoTypes are specified in a request, the system may automatically choose a default list of detectors to run, which may change over time. If you need precise control and predictability as to what detectors are run you should specify specific InfoTypes listed in the reference, otherwise a default list will be used, which may change over time.
  final pulumi.Input<List<GooglePrivacyDlpV2InfoType>>? infoTypes;
  /// Configuration to control the number of findings returned. This is not used for data profiling. When redacting sensitive data from images, finding limits don't apply. They can cause unexpected or inconsistent results, where only some data is redacted. Don't include finding limits in RedactImage requests. Otherwise, Cloud DLP returns an error. When set within an InspectJobConfig, the specified maximum values aren't hard limits. If an inspection job reaches these limits, the job ends gradually, not abruptly. Therefore, the actual number of findings that Cloud DLP returns can be multiple times higher than these maximum values.
  final pulumi.Input<GooglePrivacyDlpV2FindingLimits>? limits;
  /// Only returns findings equal to or above this threshold. The default is POSSIBLE. In general, the highest likelihood setting yields the fewest findings in results and the lowest chance of a false positive. For more information, see [Match likelihood](https://cloud.google.com/dlp/docs/likelihood).
  final pulumi.Input<GooglePrivacyDlpV2InspectConfigMinLikelihood>? minLikelihood;
  /// Minimum likelihood per infotype. For each infotype, a user can specify a minimum likelihood. The system only returns a finding if its likelihood is above this threshold. If this field is not set, the system uses the InspectConfig min_likelihood.
  final pulumi.Input<List<GooglePrivacyDlpV2InfoTypeLikelihood>>? minLikelihoodPerInfoType;
  /// Set of rules to apply to the findings for this InspectConfig. Exclusion rules, contained in the set are executed in the end, other rules are executed in the order they are specified for each info type.
  final pulumi.Input<List<GooglePrivacyDlpV2InspectionRuleSet>>? ruleSet;

  /// Creates a new [GooglePrivacyDlpV2InspectConfig].
  /// [contentOptions] Deprecated and unused.
  /// [customInfoTypes] CustomInfoTypes provided by the user. See https://cloud.google.com/dlp/docs/creating-custom-infotypes to learn more.
  /// [excludeInfoTypes] When true, excludes type information of the findings. This is not used for data profiling.
  /// [includeQuote] When true, a contextual quote from the data that triggered a finding is included in the response; see Finding.quote. This is not used for data profiling.
  /// [infoTypes] Restricts what info_types to look for. The values must correspond to InfoType values returned by ListInfoTypes or listed at https://cloud.google.com/dlp/docs/infotypes-reference. When no InfoTypes or CustomInfoTypes are specified in a request, the system may automatically choose a default list of detectors to run, which may change over time. If you need precise control and predictability as to what detectors are run you should specify specific InfoTypes listed in the reference, otherwise a default list will be used, which may change over time.
  /// [limits] Configuration to control the number of findings returned. This is not used for data profiling. When redacting sensitive data from images, finding limits don't apply. They can cause unexpected or inconsistent results, where only some data is redacted. Don't include finding limits in RedactImage requests. Otherwise, Cloud DLP returns an error. When set within an InspectJobConfig, the specified maximum values aren't hard limits. If an inspection job reaches these limits, the job ends gradually, not abruptly. Therefore, the actual number of findings that Cloud DLP returns can be multiple times higher than these maximum values.
  /// [minLikelihood] Only returns findings equal to or above this threshold. The default is POSSIBLE. In general, the highest likelihood setting yields the fewest findings in results and the lowest chance of a false positive. For more information, see [Match likelihood](https://cloud.google.com/dlp/docs/likelihood).
  /// [minLikelihoodPerInfoType] Minimum likelihood per infotype. For each infotype, a user can specify a minimum likelihood. The system only returns a finding if its likelihood is above this threshold. If this field is not set, the system uses the InspectConfig min_likelihood.
  /// [ruleSet] Set of rules to apply to the findings for this InspectConfig. Exclusion rules, contained in the set are executed in the end, other rules are executed in the order they are specified for each info type.
  GooglePrivacyDlpV2InspectConfig({
    this.contentOptions,
    this.customInfoTypes,
    this.excludeInfoTypes,
    this.includeQuote,
    this.infoTypes,
    this.limits,
    this.minLikelihood,
    this.minLikelihoodPerInfoType,
    this.ruleSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentOptions': ?pulumi.Input.mapOptionalInputValue<List<GooglePrivacyDlpV2InspectConfigContentOptionsItem>, List<String>>(contentOptions, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2InspectConfigContentOptionsItem, String>(value, (value) => value.value)),
      'customInfoTypes': ?pulumi.Input.mapOptionalInputValue<List<GooglePrivacyDlpV2CustomInfoType>, List<Map<String, dynamic>>>(customInfoTypes, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2CustomInfoType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'excludeInfoTypes': ?excludeInfoTypes,
      'includeQuote': ?includeQuote,
      'infoTypes': ?pulumi.Input.mapOptionalInputValue<List<GooglePrivacyDlpV2InfoType>, List<Map<String, dynamic>>>(infoTypes, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2InfoType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'limits': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2FindingLimits, Map<String, dynamic>>(limits, (value) => value.toMap()),
      'minLikelihood': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2InspectConfigMinLikelihood, String>(minLikelihood, (value) => value.value),
      'minLikelihoodPerInfoType': ?pulumi.Input.mapOptionalInputValue<List<GooglePrivacyDlpV2InfoTypeLikelihood>, List<Map<String, dynamic>>>(minLikelihoodPerInfoType, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2InfoTypeLikelihood, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleSet': ?pulumi.Input.mapOptionalInputValue<List<GooglePrivacyDlpV2InspectionRuleSet>, List<Map<String, dynamic>>>(ruleSet, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2InspectionRuleSet, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GooglePrivacyDlpV2InspectConfig.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2InspectConfig(
      contentOptions: map['contentOptions'] == null ? null : (pulumi.Input.decodeList<GooglePrivacyDlpV2InspectConfigContentOptionsItem>(map['contentOptions'], (value) => GooglePrivacyDlpV2InspectConfigContentOptionsItem.fromValue(value as String))).input(),
      customInfoTypes: map['customInfoTypes'] == null ? null : (pulumi.Input.decodeList<GooglePrivacyDlpV2CustomInfoType>(map['customInfoTypes'], (value) => GooglePrivacyDlpV2CustomInfoType.fromMap((value as Map).cast<String, dynamic>()))).input(),
      excludeInfoTypes: map['excludeInfoTypes'] == null ? null : (map['excludeInfoTypes'] as bool).input(),
      includeQuote: map['includeQuote'] == null ? null : (map['includeQuote'] as bool).input(),
      infoTypes: map['infoTypes'] == null ? null : (pulumi.Input.decodeList<GooglePrivacyDlpV2InfoType>(map['infoTypes'], (value) => GooglePrivacyDlpV2InfoType.fromMap((value as Map).cast<String, dynamic>()))).input(),
      limits: map['limits'] == null ? null : (GooglePrivacyDlpV2FindingLimits.fromMap((map['limits'] as Map).cast<String, dynamic>())).input(),
      minLikelihood: map['minLikelihood'] == null ? null : (GooglePrivacyDlpV2InspectConfigMinLikelihood.fromValue(map['minLikelihood'] as String)).input(),
      minLikelihoodPerInfoType: map['minLikelihoodPerInfoType'] == null ? null : (pulumi.Input.decodeList<GooglePrivacyDlpV2InfoTypeLikelihood>(map['minLikelihoodPerInfoType'], (value) => GooglePrivacyDlpV2InfoTypeLikelihood.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ruleSet: map['ruleSet'] == null ? null : (pulumi.Input.decodeList<GooglePrivacyDlpV2InspectionRuleSet>(map['ruleSet'], (value) => GooglePrivacyDlpV2InspectionRuleSet.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

