// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_pub_sub_expressions_response.dart';

/// A condition for determining whether a Pub/Sub should be triggered.
class GooglePrivacyDlpV2DataProfilePubSubConditionResponse {
  /// An expression.
  final GooglePrivacyDlpV2PubSubExpressionsResponse expressions;

  /// Creates a new [GooglePrivacyDlpV2DataProfilePubSubConditionResponse].
  /// [expressions] An expression.
  GooglePrivacyDlpV2DataProfilePubSubConditionResponse({
    required this.expressions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressions': expressions.toMap(),
    };
  }

  factory GooglePrivacyDlpV2DataProfilePubSubConditionResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DataProfilePubSubConditionResponse(
      expressions: GooglePrivacyDlpV2PubSubExpressionsResponse.fromMap((map['expressions'] as Map).cast<String, dynamic>()),
    );
  }
}

