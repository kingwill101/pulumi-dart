// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_pub_sub_expressions_response.dart';

/// A condition for determining whether a Pub/Sub should be triggered.
class GooglePrivacyDlpV2DataProfilePubSubConditionResponse {
  /// An expression.
  final pulumi.Input<GooglePrivacyDlpV2PubSubExpressionsResponse> expressions;

  /// Creates a new [GooglePrivacyDlpV2DataProfilePubSubConditionResponse].
  /// [expressions] An expression.
  const GooglePrivacyDlpV2DataProfilePubSubConditionResponse({
    required this.expressions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressions': pulumi.Input.mapInputValue<GooglePrivacyDlpV2PubSubExpressionsResponse, Map<String, dynamic>>(expressions, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2DataProfilePubSubConditionResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DataProfilePubSubConditionResponse(
      expressions: pulumi.Input.fromValue(GooglePrivacyDlpV2PubSubExpressionsResponse.fromMap((map['expressions']! as Map).cast<String, dynamic>())),
    );
  }
}
