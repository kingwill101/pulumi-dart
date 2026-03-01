// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_endpoint.dart';

class NotificationRegistrationProperties {
  /// The included events.
  final List<String>? includedEvents;
  /// The message scope.
  final String? messageScope;
  /// The notification endpoints.
  final List<NotificationEndpoint>? notificationEndpoints;
  /// The notification mode.
  final String? notificationMode;

  /// Creates a new [NotificationRegistrationProperties].
  /// [includedEvents] The included events.
  /// [messageScope] The message scope.
  /// [notificationEndpoints] The notification endpoints.
  /// [notificationMode] The notification mode.
  NotificationRegistrationProperties({
    this.includedEvents,
    this.messageScope,
    this.notificationEndpoints,
    this.notificationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includedEvents': ?includedEvents,
      'messageScope': ?messageScope,
      'notificationEndpoints': ?notificationEndpoints == null ? null : pulumi.Input.encodeList<NotificationEndpoint, Map<String, dynamic>>(notificationEndpoints!, (value) => value.toMap()),
      'notificationMode': ?notificationMode,
    };
  }

  factory NotificationRegistrationProperties.fromMap(Map<String, dynamic> map) {
    return NotificationRegistrationProperties(
      includedEvents: map['includedEvents'] == null ? null : (map['includedEvents'] as List).cast<String>(),
      messageScope: map['messageScope'] == null ? null : map['messageScope'] as String,
      notificationEndpoints: map['notificationEndpoints'] == null ? null : pulumi.Input.decodeList<NotificationEndpoint>(map['notificationEndpoints'], (value) => NotificationEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      notificationMode: map['notificationMode'] == null ? null : map['notificationMode'] as String,
    );
  }
}

