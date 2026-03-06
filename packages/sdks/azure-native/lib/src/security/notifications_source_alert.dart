// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Alert notification source
class NotificationsSourceAlert {
  /// Defines the minimal alert severity which will be sent as email notifications
  final pulumi.Input<String>? minimalSeverity;
  /// The source type that will trigger the notification
  /// Expected value is 'Alert'.
  final pulumi.Input<String> sourceType;

  /// Creates a new [NotificationsSourceAlert].
  /// [minimalSeverity] Defines the minimal alert severity which will be sent as email notifications
  /// [sourceType] The source type that will trigger the notification
  const NotificationsSourceAlert({
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
      minimalSeverity: (() { final guardedValue = map['minimalSeverity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceType: pulumi.Input.fromValue(map['sourceType'] as String),
    );
  }
}

