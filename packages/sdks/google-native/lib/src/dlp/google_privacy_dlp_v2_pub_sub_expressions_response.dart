// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_pub_sub_condition_response.dart';

/// An expression, consisting of an operator and conditions.
class GooglePrivacyDlpV2PubSubExpressionsResponse {
  /// Conditions to apply to the expression.
  final pulumi.Input<List<GooglePrivacyDlpV2PubSubConditionResponse>> conditions;
  /// The operator to apply to the collection of conditions.
  final pulumi.Input<String> logicalOperator;

  /// Creates a new [GooglePrivacyDlpV2PubSubExpressionsResponse].
  /// [conditions] Conditions to apply to the expression.
  /// [logicalOperator] The operator to apply to the collection of conditions.
  const GooglePrivacyDlpV2PubSubExpressionsResponse({
    required this.conditions,
    required this.logicalOperator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': pulumi.Input.mapInputValue<List<GooglePrivacyDlpV2PubSubConditionResponse>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2PubSubConditionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'logicalOperator': logicalOperator,
    };
  }

  factory GooglePrivacyDlpV2PubSubExpressionsResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2PubSubExpressionsResponse(
      conditions: pulumi.Input.fromValue(pulumi.Input.decodeList<GooglePrivacyDlpV2PubSubConditionResponse>(map['conditions']!, (value) => GooglePrivacyDlpV2PubSubConditionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      logicalOperator: pulumi.Input.fromValue(map['logicalOperator'] as String),
    );
  }
}

