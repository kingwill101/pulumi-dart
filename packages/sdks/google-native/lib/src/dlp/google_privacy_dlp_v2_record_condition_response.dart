// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_expressions_response.dart';

/// A condition for determining whether a transformation should be applied to a field.
class GooglePrivacyDlpV2RecordConditionResponse {
  /// An expression.
  final pulumi.Input<GooglePrivacyDlpV2ExpressionsResponse> expressions;

  /// Creates a new [GooglePrivacyDlpV2RecordConditionResponse].
  /// [expressions] An expression.
  const GooglePrivacyDlpV2RecordConditionResponse({
    required this.expressions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressions': pulumi.Input.mapInputValue<GooglePrivacyDlpV2ExpressionsResponse, Map<String, dynamic>>(expressions, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2RecordConditionResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2RecordConditionResponse(
      expressions: pulumi.Input.fromValue(GooglePrivacyDlpV2ExpressionsResponse.fromMap((map['expressions']! as Map).cast<String, dynamic>())),
    );
  }
}
