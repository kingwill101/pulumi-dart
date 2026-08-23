// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_pub_sub_condition_minimum_risk_score.dart';
import 'google_privacy_dlp_v2_pub_sub_condition_minimum_sensitivity_score.dart';

/// A condition consisting of a value.
class GooglePrivacyDlpV2PubSubCondition {
  /// The minimum data risk score that triggers the condition.
  final pulumi.Input<GooglePrivacyDlpV2PubSubConditionMinimumRiskScore>? minimumRiskScore;
  /// The minimum sensitivity level that triggers the condition.
  final pulumi.Input<GooglePrivacyDlpV2PubSubConditionMinimumSensitivityScore>? minimumSensitivityScore;

  /// Creates a new [GooglePrivacyDlpV2PubSubCondition].
  /// [minimumRiskScore] The minimum data risk score that triggers the condition.
  /// [minimumSensitivityScore] The minimum sensitivity level that triggers the condition.
  const GooglePrivacyDlpV2PubSubCondition({
    this.minimumRiskScore,
    this.minimumSensitivityScore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minimumRiskScore': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2PubSubConditionMinimumRiskScore, String>(minimumRiskScore, (value) => value.wireValue),
      'minimumSensitivityScore': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2PubSubConditionMinimumSensitivityScore, String>(minimumSensitivityScore, (value) => value.wireValue),
    };
  }

  factory GooglePrivacyDlpV2PubSubCondition.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2PubSubCondition(
      minimumRiskScore: (() { final guardedValue = map['minimumRiskScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2PubSubConditionMinimumRiskScore.fromValue(guardedValue as String)); })(),
      minimumSensitivityScore: (() { final guardedValue = map['minimumSensitivityScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2PubSubConditionMinimumSensitivityScore.fromValue(guardedValue as String)); })(),
    );
  }
}
