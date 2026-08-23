// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_dictionary.dart';
import 'google_privacy_dlp_v2_exclude_by_hotword.dart';
import 'google_privacy_dlp_v2_exclude_info_types.dart';
import 'google_privacy_dlp_v2_exclusion_rule_matching_type.dart';
import 'google_privacy_dlp_v2_regex.dart';

/// The rule that specifies conditions when findings of infoTypes specified in `InspectionRuleSet` are removed from results.
class GooglePrivacyDlpV2ExclusionRule {
  /// Dictionary which defines the rule.
  final pulumi.Input<GooglePrivacyDlpV2Dictionary>? dictionary;
  /// Drop if the hotword rule is contained in the proximate context. For tabular data, the context includes the column name.
  final pulumi.Input<GooglePrivacyDlpV2ExcludeByHotword>? excludeByHotword;
  /// Set of infoTypes for which findings would affect this rule.
  final pulumi.Input<GooglePrivacyDlpV2ExcludeInfoTypes>? excludeInfoTypes;
  /// How the rule is applied, see MatchingType documentation for details.
  final pulumi.Input<GooglePrivacyDlpV2ExclusionRuleMatchingType>? matchingType;
  /// Regular expression which defines the rule.
  final pulumi.Input<GooglePrivacyDlpV2Regex>? regex;

  /// Creates a new [GooglePrivacyDlpV2ExclusionRule].
  /// [dictionary] Dictionary which defines the rule.
  /// [excludeByHotword] Drop if the hotword rule is contained in the proximate context. For tabular data, the context includes the column name.
  /// [excludeInfoTypes] Set of infoTypes for which findings would affect this rule.
  /// [matchingType] How the rule is applied, see MatchingType documentation for details.
  /// [regex] Regular expression which defines the rule.
  const GooglePrivacyDlpV2ExclusionRule({
    this.dictionary,
    this.excludeByHotword,
    this.excludeInfoTypes,
    this.matchingType,
    this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dictionary': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2Dictionary, Map<String, dynamic>>(dictionary, (value) => value.toMap()),
      'excludeByHotword': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2ExcludeByHotword, Map<String, dynamic>>(excludeByHotword, (value) => value.toMap()),
      'excludeInfoTypes': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2ExcludeInfoTypes, Map<String, dynamic>>(excludeInfoTypes, (value) => value.toMap()),
      'matchingType': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2ExclusionRuleMatchingType, String>(matchingType, (value) => value.wireValue),
      'regex': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2Regex, Map<String, dynamic>>(regex, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2ExclusionRule.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ExclusionRule(
      dictionary: (() { final guardedValue = map['dictionary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2Dictionary.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      excludeByHotword: (() { final guardedValue = map['excludeByHotword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2ExcludeByHotword.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      excludeInfoTypes: (() { final guardedValue = map['excludeInfoTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2ExcludeInfoTypes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      matchingType: (() { final guardedValue = map['matchingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2ExclusionRuleMatchingType.fromValue(guardedValue as String)); })(),
      regex: (() { final guardedValue = map['regex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2Regex.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
