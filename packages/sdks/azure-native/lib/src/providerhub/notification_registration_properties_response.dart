// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_endpoint_response.dart';

class NotificationRegistrationPropertiesResponse {
  /// The included events.
  final List<String>? includedEvents;
  /// The message scope.
  final String? messageScope;
  /// The notification endpoints.
  final List<NotificationEndpointResponse>? notificationEndpoints;
  /// The notification mode.
  final String? notificationMode;
  /// The provisioned state of the resource.
  final String provisioningState;

  /// Creates a new [NotificationRegistrationPropertiesResponse].
  /// [includedEvents] The included events.
  /// [messageScope] The message scope.
  /// [notificationEndpoints] The notification endpoints.
  /// [notificationMode] The notification mode.
  /// [provisioningState] The provisioned state of the resource.
  NotificationRegistrationPropertiesResponse({
    this.includedEvents,
    this.messageScope,
    this.notificationEndpoints,
    this.notificationMode,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includedEvents': ?includedEvents,
      'messageScope': ?messageScope,
      'notificationEndpoints': ?notificationEndpoints == null ? null : pulumi.Input.encodeList<NotificationEndpointResponse, Map<String, dynamic>>(notificationEndpoints!, (value) => value.toMap()),
      'notificationMode': ?notificationMode,
      'provisioningState': provisioningState,
    };
  }

  factory NotificationRegistrationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return NotificationRegistrationPropertiesResponse(
      includedEvents: map['includedEvents'] == null ? null : (map['includedEvents'] as List).cast<String>(),
      messageScope: map['messageScope'] == null ? null : map['messageScope'] as String,
      notificationEndpoints: map['notificationEndpoints'] == null ? null : pulumi.Input.decodeList<NotificationEndpointResponse>(map['notificationEndpoints'], (value) => NotificationEndpointResponse.fromMap((value as Map).cast<String, dynamic>())),
      notificationMode: map['notificationMode'] == null ? null : map['notificationMode'] as String,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

