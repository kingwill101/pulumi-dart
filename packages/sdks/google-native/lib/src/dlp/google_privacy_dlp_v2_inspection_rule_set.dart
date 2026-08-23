// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_info_type.dart';
import 'google_privacy_dlp_v2_inspection_rule.dart';

/// Rule set for modifying a set of infoTypes to alter behavior under certain circumstances, depending on the specific details of the rules within the set.
class GooglePrivacyDlpV2InspectionRuleSet {
  /// List of infoTypes this rule set is applied to.
  final pulumi.Input<List<GooglePrivacyDlpV2InfoType>>? infoTypes;
  /// Set of rules to be applied to infoTypes. The rules are applied in order.
  final pulumi.Input<List<GooglePrivacyDlpV2InspectionRule>>? rules;

  /// Creates a new [GooglePrivacyDlpV2InspectionRuleSet].
  /// [infoTypes] List of infoTypes this rule set is applied to.
  /// [rules] Set of rules to be applied to infoTypes. The rules are applied in order.
  const GooglePrivacyDlpV2InspectionRuleSet({
    this.infoTypes,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infoTypes': ?pulumi.Input.mapOptionalInputValue<List<GooglePrivacyDlpV2InfoType>, List<Map<String, dynamic>>>(infoTypes, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2InfoType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rules': ?pulumi.Input.mapOptionalInputValue<List<GooglePrivacyDlpV2InspectionRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2InspectionRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GooglePrivacyDlpV2InspectionRuleSet.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2InspectionRuleSet(
      infoTypes: (() { final guardedValue = map['infoTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GooglePrivacyDlpV2InfoType>(guardedValue, (value) => GooglePrivacyDlpV2InfoType.fromMap((value as Map).cast<String, dynamic>()))); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GooglePrivacyDlpV2InspectionRule>(guardedValue, (value) => GooglePrivacyDlpV2InspectionRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
