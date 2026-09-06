// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Notification {
  /// The notification type.
  final pulumi.Input<dynamic>? notificationType;
  /// Whether notifications should be skipped.
  final pulumi.Input<dynamic>? skipNotifications;

  /// Creates a new [Notification].
  /// [notificationType] The notification type.
  /// [skipNotifications] Whether notifications should be skipped.
  const Notification({
    this.notificationType,
    this.skipNotifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationType': ?notificationType,
      'skipNotifications': ?skipNotifications,
    };
  }

  factory Notification.fromMap(Map<String, dynamic> map) {
    return Notification(
      notificationType: (() { final guardedValue = map['notificationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      skipNotifications: (() { final guardedValue = map['skipNotifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
