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
      'notificationEndpoints': ?pulumi.Input.mapOptionalInputValue<List<NotificationEndpointResponse>, List<Map<String, dynamic>>>(notificationEndpoints, (value) => pulumi.Input.encodeList<NotificationEndpointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notificationMode': ?notificationMode,
      'provisioningState': provisioningState,
    };
  }

  factory NotificationRegistrationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return NotificationRegistrationPropertiesResponse(
      includedEvents: map['includedEvents'] == null ? null : ((map['includedEvents'] as List).cast<String>()).input(),
      messageScope: map['messageScope'] == null ? null : (map['messageScope'] as String).input(),
      notificationEndpoints: map['notificationEndpoints'] == null ? null : (pulumi.Input.decodeList<NotificationEndpointResponse>(map['notificationEndpoints'], (value) => NotificationEndpointResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      notificationMode: map['notificationMode'] == null ? null : (map['notificationMode'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}

