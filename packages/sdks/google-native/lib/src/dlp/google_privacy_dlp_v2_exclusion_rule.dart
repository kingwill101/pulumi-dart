// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_dictionary.dart';
import 'google_privacy_dlp_v2_exclude_by_hotword.dart';
import 'google_privacy_dlp_v2_exclude_info_types.dart';
import 'google_privacy_dlp_v2_exclusion_rule_matching_type.dart';
import 'google_privacy_dlp_v2_regex.dart';

/// The rule that specifies conditions when findings of infoTypes specified in `InspectionRuleSet` are removed from results.
class GooglePrivacyDlpV2ExclusionRule {
  /// Dictionary which defines the rule.
  final GooglePrivacyDlpV2Dictionary? dictionary;
  /// Drop if the hotword rule is contained in the proximate context. For tabular data, the context includes the column name.
  final GooglePrivacyDlpV2ExcludeByHotword? excludeByHotword;
  /// Set of infoTypes for which findings would affect this rule.
  final GooglePrivacyDlpV2ExcludeInfoTypes? excludeInfoTypes;
  /// How the rule is applied, see MatchingType documentation for details.
  final GooglePrivacyDlpV2ExclusionRuleMatchingType? matchingType;
  /// Regular expression which defines the rule.
  final GooglePrivacyDlpV2Regex? regex;

  /// Creates a new [GooglePrivacyDlpV2ExclusionRule].
  /// [dictionary] Dictionary which defines the rule.
  /// [excludeByHotword] Drop if the hotword rule is contained in the proximate context. For tabular data, the context includes the column name.
  /// [excludeInfoTypes] Set of infoTypes for which findings would affect this rule.
  /// [matchingType] How the rule is applied, see MatchingType documentation for details.
  /// [regex] Regular expression which defines the rule.
  GooglePrivacyDlpV2ExclusionRule({
    this.dictionary,
    this.excludeByHotword,
    this.excludeInfoTypes,
    this.matchingType,
    this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dictionary': ?dictionary == null ? null : dictionary!.toMap(),
      'excludeByHotword': ?excludeByHotword == null ? null : excludeByHotword!.toMap(),
      'excludeInfoTypes': ?excludeInfoTypes == null ? null : excludeInfoTypes!.toMap(),
      'matchingType': ?matchingType == null ? null : matchingType!.value,
      'regex': ?regex == null ? null : regex!.toMap(),
    };
  }

  factory GooglePrivacyDlpV2ExclusionRule.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ExclusionRule(
      dictionary: map['dictionary'] == null ? null : GooglePrivacyDlpV2Dictionary.fromMap((map['dictionary'] as Map).cast<String, dynamic>()),
      excludeByHotword: map['excludeByHotword'] == null ? null : GooglePrivacyDlpV2ExcludeByHotword.fromMap((map['excludeByHotword'] as Map).cast<String, dynamic>()),
      excludeInfoTypes: map['excludeInfoTypes'] == null ? null : GooglePrivacyDlpV2ExcludeInfoTypes.fromMap((map['excludeInfoTypes'] as Map).cast<String, dynamic>()),
      matchingType: map['matchingType'] == null ? null : GooglePrivacyDlpV2ExclusionRuleMatchingType.fromValue(map['matchingType'] as String),
      regex: map['regex'] == null ? null : GooglePrivacyDlpV2Regex.fromMap((map['regex'] as Map).cast<String, dynamic>()),
    );
  }
}

