// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_conditions_response.dart';

/// An expression, consisting of an operator and conditions.
class GooglePrivacyDlpV2ExpressionsResponse {
  /// Conditions to apply to the expression.
  final pulumi.Input<GooglePrivacyDlpV2ConditionsResponse> conditions;
  /// The operator to apply to the result of conditions. Default and currently only supported value is `AND`.
  final pulumi.Input<String> logicalOperator;

  /// Creates a new [GooglePrivacyDlpV2ExpressionsResponse].
  /// [conditions] Conditions to apply to the expression.
  /// [logicalOperator] The operator to apply to the result of conditions. Default and currently only supported value is `AND`.
  GooglePrivacyDlpV2ExpressionsResponse({
    required this.conditions,
    required this.logicalOperator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': pulumi.Input.mapInputValue<GooglePrivacyDlpV2ConditionsResponse, Map<String, dynamic>>(conditions, (value) => value.toMap()),
      'logicalOperator': logicalOperator,
    };
  }

  factory GooglePrivacyDlpV2ExpressionsResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ExpressionsResponse(
      conditions: (GooglePrivacyDlpV2ConditionsResponse.fromMap((map['conditions'] as Map).cast<String, dynamic>())).input(),
      logicalOperator: (map['logicalOperator'] as String).input(),
    );
  }
}

