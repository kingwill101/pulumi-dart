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
      'notificationEndpoints': ?pulumi.Input.mapOptionalInputValue<List<NotificationEndpoint>, List<Map<String, dynamic>>>(notificationEndpoints, (value) => pulumi.Input.encodeList<NotificationEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notificationMode': ?notificationMode,
    };
  }

  factory NotificationRegistrationProperties.fromMap(Map<String, dynamic> map) {
    return NotificationRegistrationProperties(
      includedEvents: map['includedEvents'] == null ? null : ((map['includedEvents'] as List).cast<String>()).input(),
      messageScope: map['messageScope'] == null ? null : (map['messageScope'] as String).input(),
      notificationEndpoints: map['notificationEndpoints'] == null ? null : (pulumi.Input.decodeList<NotificationEndpoint>(map['notificationEndpoints'], (value) => NotificationEndpoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      notificationMode: map['notificationMode'] == null ? null : (map['notificationMode'] as String).input(),
    );
  }
}

