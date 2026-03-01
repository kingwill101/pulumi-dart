// ignore_for_file: unused_element, unnecessary_cast


/// Alert notification source
class NotificationsSourceAlert {
  /// Defines the minimal alert severity which will be sent as email notifications
  final String? minimalSeverity;
  /// The source type that will trigger the notification
  /// Expected value is 'Alert'.
  final String sourceType;

  /// Creates a new [NotificationsSourceAlert].
  /// [minimalSeverity] Defines the minimal alert severity which will be sent as email notifications
  /// [sourceType] The source type that will trigger the notification
  NotificationsSourceAlert({
    this.minimalSeverity,
    required this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minimalSeverity': ?minimalSeverity,
      'sourceType': sourceType,
    };
  }

  factory NotificationsSourceAlert.fromMap(Map<String, dynamic> map) {
    return NotificationsSourceAlert(
      minimalSeverity: map['minimalSeverity'] == null ? null : map['minimalSeverity'] as String,
      sourceType: map['sourceType'] as String,
    );
  }
}

