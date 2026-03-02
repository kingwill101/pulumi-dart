// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NotificationResponse {
  /// The notification type.
  final pulumi.Input<String>? notificationType;
  /// Whether notifications should be skipped.
  final pulumi.Input<String>? skipNotifications;

  /// Creates a new [NotificationResponse].
  /// [notificationType] The notification type.
  /// [skipNotifications] Whether notifications should be skipped.
  NotificationResponse({
    this.notificationType,
    this.skipNotifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationType': ?notificationType,
      'skipNotifications': ?skipNotifications,
    };
  }

  factory NotificationResponse.fromMap(Map<String, dynamic> map) {
    return NotificationResponse(
      notificationType: map['notificationType'] == null ? null : (map['notificationType'] as String).input(),
      skipNotifications: map['skipNotifications'] == null ? null : (map['skipNotifications'] as String).input(),
    );
  }
}

