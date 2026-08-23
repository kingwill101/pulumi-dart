// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_endpoint_response.dart';

class NotificationRegistrationPropertiesResponse {
  /// The included events.
  final pulumi.Input<List<String>>? includedEvents;
  /// The message scope.
  final pulumi.Input<String>? messageScope;
  /// The notification endpoints.
  final pulumi.Input<List<NotificationEndpointResponse>>? notificationEndpoints;
  /// The notification mode.
  final pulumi.Input<String>? notificationMode;
  /// The provisioned state of the resource.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [NotificationRegistrationPropertiesResponse].
  /// [includedEvents] The included events.
  /// [messageScope] The message scope.
  /// [notificationEndpoints] The notification endpoints.
  /// [notificationMode] The notification mode.
  /// [provisioningState] The provisioned state of the resource.
  const NotificationRegistrationPropertiesResponse({
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
      'notificationEndpoints': ?pulumi.Input.mapOptionalInputValue<List<NotificationEndpointResponse>, List<Map<String, dynamic>>>(notificationEndpoints, (value) => pulumi.Input.encodeList<NotificationEndpointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notificationMode': ?notificationMode,
      'provisioningState': provisioningState,
    };
  }

  factory NotificationRegistrationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return NotificationRegistrationPropertiesResponse(
      includedEvents: (() { final guardedValue = map['includedEvents']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      messageScope: (() { final guardedValue = map['messageScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationEndpoints: (() { final guardedValue = map['notificationEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NotificationEndpointResponse>(guardedValue, (value) => NotificationEndpointResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      notificationMode: (() { final guardedValue = map['notificationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
