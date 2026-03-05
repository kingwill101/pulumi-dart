// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A condition consisting of a value.
class GooglePrivacyDlpV2PubSubConditionResponse {
  /// The minimum data risk score that triggers the condition.
  final pulumi.Input<String> minimumRiskScore;
  /// The minimum sensitivity level that triggers the condition.
  final pulumi.Input<String> minimumSensitivityScore;

  /// Creates a new [GooglePrivacyDlpV2PubSubConditionResponse].
  /// [minimumRiskScore] The minimum data risk score that triggers the condition.
  /// [minimumSensitivityScore] The minimum sensitivity level that triggers the condition.
  GooglePrivacyDlpV2PubSubConditionResponse({
    required this.minimumRiskScore,
    required this.minimumSensitivityScore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minimumRiskScore': minimumRiskScore,
      'minimumSensitivityScore': minimumSensitivityScore,
    };
  }

  factory GooglePrivacyDlpV2PubSubConditionResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2PubSubConditionResponse(
      minimumRiskScore: pulumi.Input.fromValue(map['minimumRiskScore'] as String),
      minimumSensitivityScore: pulumi.Input.fromValue(map['minimumSensitivityScore'] as String),
    );
  }
}

