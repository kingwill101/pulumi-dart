// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_record_condition_response.dart';

/// Configuration to suppress records whose suppression conditions evaluate to true.
class GooglePrivacyDlpV2RecordSuppressionResponse {
  /// A condition that when it evaluates to true will result in the record being evaluated to be suppressed from the transformed content.
  final pulumi.Input<GooglePrivacyDlpV2RecordConditionResponse> condition;

  /// Creates a new [GooglePrivacyDlpV2RecordSuppressionResponse].
  /// [condition] A condition that when it evaluates to true will result in the record being evaluated to be suppressed from the transformed content.
  const GooglePrivacyDlpV2RecordSuppressionResponse({
    required this.condition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': pulumi.Input.mapInputValue<GooglePrivacyDlpV2RecordConditionResponse, Map<String, dynamic>>(condition, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2RecordSuppressionResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2RecordSuppressionResponse(
      condition: pulumi.Input.fromValue(GooglePrivacyDlpV2RecordConditionResponse.fromMap((map['condition']! as Map).cast<String, dynamic>())),
    );
  }
}

