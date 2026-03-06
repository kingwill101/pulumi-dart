// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_endpoint.dart';

class NotificationRegistrationProperties {
  /// The included events.
  final pulumi.Input<List<String>>? includedEvents;
  /// The message scope.
  final pulumi.Input<String>? messageScope;
  /// The notification endpoints.
  final pulumi.Input<List<NotificationEndpoint>>? notificationEndpoints;
  /// The notification mode.
  final pulumi.Input<String>? notificationMode;

  /// Creates a new [NotificationRegistrationProperties].
  /// [includedEvents] The included events.
  /// [messageScope] The message scope.
  /// [notificationEndpoints] The notification endpoints.
  /// [notificationMode] The notification mode.
  const NotificationRegistrationProperties({
    this.includedEvents,
    this.messageScope,
    this.notificationEndpoints,
    this.notificationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includedEvents': ?includedEvents,
      'messageScope': ?messageScope,
      'notificationEndpoints': ?pulumi.Input.mapOptionalInputValue<List<NotificationEndpoint>, List<Map<String, dynamic>>>(notificationEndpoints, (value) => pulumi.Input.encodeList<NotificationEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notificationMode': ?notificationMode,
    };
  }

  factory NotificationRegistrationProperties.fromMap(Map<String, dynamic> map) {
    return NotificationRegistrationProperties(
      includedEvents: (() { final guardedValue = map['includedEvents']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      messageScope: (() { final guardedValue = map['messageScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationEndpoints: (() { final guardedValue = map['notificationEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NotificationEndpoint>(guardedValue, (value) => NotificationEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      notificationMode: (() { final guardedValue = map['notificationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

