// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_condition_response.dart';

/// A collection of conditions.
class GooglePrivacyDlpV2ConditionsResponse {
  /// A collection of conditions.
  final pulumi.Input<List<GooglePrivacyDlpV2ConditionResponse>> conditions;

  /// Creates a new [GooglePrivacyDlpV2ConditionsResponse].
  /// [conditions] A collection of conditions.
  GooglePrivacyDlpV2ConditionsResponse({
    required this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': pulumi.Input.mapInputValue<List<GooglePrivacyDlpV2ConditionResponse>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2ConditionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GooglePrivacyDlpV2ConditionsResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ConditionsResponse(
      conditions: (pulumi.Input.decodeList<GooglePrivacyDlpV2ConditionResponse>(map['conditions'], (value) => GooglePrivacyDlpV2ConditionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

