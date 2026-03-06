// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_notification_endpoint_response.dart';

/// Managed application notification policy.
class ApplicationNotificationPolicyResponse {
  /// The managed application notification endpoint.
  final pulumi.Input<List<ApplicationNotificationEndpointResponse>> notificationEndpoints;

  /// Creates a new [ApplicationNotificationPolicyResponse].
  /// [notificationEndpoints] The managed application notification endpoint.
  const ApplicationNotificationPolicyResponse({
    required this.notificationEndpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationEndpoints': pulumi.Input.mapInputValue<List<ApplicationNotificationEndpointResponse>, List<Map<String, dynamic>>>(notificationEndpoints, (value) => pulumi.Input.encodeList<ApplicationNotificationEndpointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApplicationNotificationPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationNotificationPolicyResponse(
      notificationEndpoints: pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationNotificationEndpointResponse>(map['notificationEndpoints']!, (value) => ApplicationNotificationEndpointResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

