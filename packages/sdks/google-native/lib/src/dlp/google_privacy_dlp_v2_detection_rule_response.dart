// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_hotword_rule_response.dart';

/// Deprecated; use `InspectionRuleSet` instead. Rule for modifying a `CustomInfoType` to alter behavior under certain circumstances, depending on the specific details of the rule. Not supported for the `surrogate_type` custom infoType.
class GooglePrivacyDlpV2DetectionRuleResponse {
  /// Hotword-based detection rule.
  final pulumi.Input<GooglePrivacyDlpV2HotwordRuleResponse> hotwordRule;

  /// Creates a new [GooglePrivacyDlpV2DetectionRuleResponse].
  /// [hotwordRule] Hotword-based detection rule.
  GooglePrivacyDlpV2DetectionRuleResponse({required this.hotwordRule});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hotwordRule':
          pulumi.Input.mapInputValue<
            GooglePrivacyDlpV2HotwordRuleResponse,
            Map<String, dynamic>
          >(hotwordRule, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2DetectionRuleResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2DetectionRuleResponse(
      hotwordRule: pulumi.Input.fromValue(
        GooglePrivacyDlpV2HotwordRuleResponse.fromMap(
          (map['hotwordRule']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
