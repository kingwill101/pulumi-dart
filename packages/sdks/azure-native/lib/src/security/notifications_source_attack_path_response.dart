// ignore_for_file: unused_element, unnecessary_cast


/// Attack path notification source
class NotificationsSourceAttackPathResponse {
  /// Defines the minimal attach path risk level which will be sent as email notifications
  final String? minimalRiskLevel;
  /// The source type that will trigger the notification
  /// Expected value is 'AttackPath'.
  final String sourceType;

  /// Creates a new [NotificationsSourceAttackPathResponse].
  /// [minimalRiskLevel] Defines the minimal attach path risk level which will be sent as email notifications
  /// [sourceType] The source type that will trigger the notification
  NotificationsSourceAttackPathResponse({
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
      minimalRiskLevel: map['minimalRiskLevel'] == null ? null : map['minimalRiskLevel'] as String,
      sourceType: map['sourceType'] as String,
    );
  }
}

