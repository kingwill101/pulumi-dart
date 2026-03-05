// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_exclusion_rule_response.dart';
import 'google_privacy_dlp_v2_hotword_rule_response.dart';

/// A single inspection rule to be applied to infoTypes, specified in `InspectionRuleSet`.
class GooglePrivacyDlpV2InspectionRuleResponse {
  /// Exclusion rule.
  final pulumi.Input<GooglePrivacyDlpV2ExclusionRuleResponse> exclusionRule;
  /// Hotword-based detection rule.
  final pulumi.Input<GooglePrivacyDlpV2HotwordRuleResponse> hotwordRule;

  /// Creates a new [GooglePrivacyDlpV2InspectionRuleResponse].
  /// [exclusionRule] Exclusion rule.
  /// [hotwordRule] Hotword-based detection rule.
  GooglePrivacyDlpV2InspectionRuleResponse({
    required this.exclusionRule,
    required this.hotwordRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusionRule': pulumi.Input.mapInputValue<GooglePrivacyDlpV2ExclusionRuleResponse, Map<String, dynamic>>(exclusionRule, (value) => value.toMap()),
      'hotwordRule': pulumi.Input.mapInputValue<GooglePrivacyDlpV2HotwordRuleResponse, Map<String, dynamic>>(hotwordRule, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2InspectionRuleResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2InspectionRuleResponse(
      exclusionRule: pulumi.Input.fromValue(GooglePrivacyDlpV2ExclusionRuleResponse.fromMap((map['exclusionRule']! as Map).cast<String, dynamic>())),
      hotwordRule: pulumi.Input.fromValue(GooglePrivacyDlpV2HotwordRuleResponse.fromMap((map['hotwordRule']! as Map).cast<String, dynamic>())),
    );
  }
}

