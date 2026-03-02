// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_dictionary_response.dart';
import 'google_privacy_dlp_v2_exclude_by_hotword_response.dart';
import 'google_privacy_dlp_v2_exclude_info_types_response.dart';
import 'google_privacy_dlp_v2_regex_response.dart';

/// The rule that specifies conditions when findings of infoTypes specified in `InspectionRuleSet` are removed from results.
class GooglePrivacyDlpV2ExclusionRuleResponse {
  /// Dictionary which defines the rule.
  final pulumi.Input<GooglePrivacyDlpV2DictionaryResponse> dictionary;
  /// Drop if the hotword rule is contained in the proximate context. For tabular data, the context includes the column name.
  final pulumi.Input<GooglePrivacyDlpV2ExcludeByHotwordResponse> excludeByHotword;
  /// Set of infoTypes for which findings would affect this rule.
  final pulumi.Input<GooglePrivacyDlpV2ExcludeInfoTypesResponse> excludeInfoTypes;
  /// How the rule is applied, see MatchingType documentation for details.
  final pulumi.Input<String> matchingType;
  /// Regular expression which defines the rule.
  final pulumi.Input<GooglePrivacyDlpV2RegexResponse> regex;

  /// Creates a new [GooglePrivacyDlpV2ExclusionRuleResponse].
  /// [dictionary] Dictionary which defines the rule.
  /// [excludeByHotword] Drop if the hotword rule is contained in the proximate context. For tabular data, the context includes the column name.
  /// [excludeInfoTypes] Set of infoTypes for which findings would affect this rule.
  /// [matchingType] How the rule is applied, see MatchingType documentation for details.
  /// [regex] Regular expression which defines the rule.
  GooglePrivacyDlpV2ExclusionRuleResponse({
    required this.dictionary,
    required this.excludeByHotword,
    required this.excludeInfoTypes,
    required this.matchingType,
    required this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dictionary': pulumi.Input.mapInputValue<GooglePrivacyDlpV2DictionaryResponse, Map<String, dynamic>>(dictionary, (value) => value.toMap()),
      'excludeByHotword': pulumi.Input.mapInputValue<GooglePrivacyDlpV2ExcludeByHotwordResponse, Map<String, dynamic>>(excludeByHotword, (value) => value.toMap()),
      'excludeInfoTypes': pulumi.Input.mapInputValue<GooglePrivacyDlpV2ExcludeInfoTypesResponse, Map<String, dynamic>>(excludeInfoTypes, (value) => value.toMap()),
      'matchingType': matchingType,
      'regex': pulumi.Input.mapInputValue<GooglePrivacyDlpV2RegexResponse, Map<String, dynamic>>(regex, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2ExclusionRuleResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ExclusionRuleResponse(
      dictionary: (GooglePrivacyDlpV2DictionaryResponse.fromMap((map['dictionary'] as Map).cast<String, dynamic>())).input(),
      excludeByHotword: (GooglePrivacyDlpV2ExcludeByHotwordResponse.fromMap((map['excludeByHotword'] as Map).cast<String, dynamic>())).input(),
      excludeInfoTypes: (GooglePrivacyDlpV2ExcludeInfoTypesResponse.fromMap((map['excludeInfoTypes'] as Map).cast<String, dynamic>())).input(),
      matchingType: (map['matchingType'] as String).input(),
      regex: (GooglePrivacyDlpV2RegexResponse.fromMap((map['regex'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

