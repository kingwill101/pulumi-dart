// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Alert notification source
class NotificationsSourceAlertResponse {
  /// Defines the minimal alert severity which will be sent as email notifications
  final pulumi.Input<String>? minimalSeverity;
  /// The source type that will trigger the notification
  /// Expected value is 'Alert'.
  final pulumi.Input<String> sourceType;

  /// Creates a new [NotificationsSourceAlertResponse].
  /// [minimalSeverity] Defines the minimal alert severity which will be sent as email notifications
  /// [sourceType] The source type that will trigger the notification
  NotificationsSourceAlertResponse({
    this.minimalSeverity,
    required this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minimalSeverity': ?minimalSeverity,
      'sourceType': sourceType,
    };
  }

  factory NotificationsSourceAlertResponse.fromMap(Map<String, dynamic> map) {
    return NotificationsSourceAlertResponse(
      minimalSeverity: map['minimalSeverity'] == null ? null : (map['minimalSeverity']! as String).input(),
      sourceType: (map['sourceType'] as String).input(),
    );
  }
}

