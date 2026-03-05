// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressionsCondition {
  /// The minimum data risk score that triggers the condition.
  /// Possible values are: `HIGH`, `MEDIUM_OR_HIGH`.
  final pulumi.Input<String>? minimumRiskScore;
  /// The minimum sensitivity level that triggers the condition.
  /// Possible values are: `HIGH`, `MEDIUM_OR_HIGH`.
  final pulumi.Input<String>? minimumSensitivityScore;

  /// Creates a new [PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressionsCondition].
  /// [minimumRiskScore] The minimum data risk score that triggers the condition.
  /// [minimumSensitivityScore] The minimum sensitivity level that triggers the condition.
  PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressionsCondition({
    this.minimumRiskScore,
    this.minimumSensitivityScore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minimumRiskScore': ?minimumRiskScore,
      'minimumSensitivityScore': ?minimumSensitivityScore,
    };
  }

  factory PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressionsCondition.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressionsCondition(
      minimumRiskScore: (() { final guardedValue = map['minimumRiskScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minimumSensitivityScore: (() { final guardedValue = map['minimumSensitivityScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

