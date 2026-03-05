// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_info_type_response.dart';
import 'google_privacy_dlp_v2_inspection_rule_response.dart';

/// Rule set for modifying a set of infoTypes to alter behavior under certain circumstances, depending on the specific details of the rules within the set.
class GooglePrivacyDlpV2InspectionRuleSetResponse {
  /// List of infoTypes this rule set is applied to.
  final pulumi.Input<List<GooglePrivacyDlpV2InfoTypeResponse>> infoTypes;
  /// Set of rules to be applied to infoTypes. The rules are applied in order.
  final pulumi.Input<List<GooglePrivacyDlpV2InspectionRuleResponse>> rules;

  /// Creates a new [GooglePrivacyDlpV2InspectionRuleSetResponse].
  /// [infoTypes] List of infoTypes this rule set is applied to.
  /// [rules] Set of rules to be applied to infoTypes. The rules are applied in order.
  GooglePrivacyDlpV2InspectionRuleSetResponse({
    required this.infoTypes,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infoTypes': pulumi.Input.mapInputValue<List<GooglePrivacyDlpV2InfoTypeResponse>, List<Map<String, dynamic>>>(infoTypes, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2InfoTypeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rules': pulumi.Input.mapInputValue<List<GooglePrivacyDlpV2InspectionRuleResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2InspectionRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GooglePrivacyDlpV2InspectionRuleSetResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2InspectionRuleSetResponse(
      infoTypes: pulumi.Input.fromValue(pulumi.Input.decodeList<GooglePrivacyDlpV2InfoTypeResponse>(map['infoTypes']!, (value) => GooglePrivacyDlpV2InfoTypeResponse.fromMap((value as Map).cast<String, dynamic>()))),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<GooglePrivacyDlpV2InspectionRuleResponse>(map['rules']!, (value) => GooglePrivacyDlpV2InspectionRuleResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

