// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Attack path notification source
class NotificationsSourceAttackPathResponse {
  /// Defines the minimal attach path risk level which will be sent as email notifications
  final pulumi.Input<String?>? minimalRiskLevel;
  /// The source type that will trigger the notification
  /// Expected value is 'AttackPath'.
  final pulumi.Input<String> sourceType;

  /// Creates a new [NotificationsSourceAttackPathResponse].
  /// [minimalRiskLevel] Defines the minimal attach path risk level which will be sent as email notifications
  /// [sourceType] The source type that will trigger the notification
  const NotificationsSourceAttackPathResponse({
    this.minimalRiskLevel,
    required this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minimalRiskLevel': ?minimalRiskLevel,
      'sourceType': sourceType,
    };
  }

  factory NotificationsSourceAttackPathResponse.fromMap(Map<String, dynamic> map) {
    return NotificationsSourceAttackPathResponse(
      minimalRiskLevel: (() { final guardedValue = map['minimalRiskLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceType: pulumi.Input.fromValue(map['sourceType'] as String),
    );
  }
}
