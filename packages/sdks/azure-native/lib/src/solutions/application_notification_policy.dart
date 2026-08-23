// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_notification_endpoint.dart';

/// Managed application notification policy.
class ApplicationNotificationPolicy {
  /// The managed application notification endpoint.
  final pulumi.Input<List<ApplicationNotificationEndpoint>> notificationEndpoints;

  /// Creates a new [ApplicationNotificationPolicy].
  /// [notificationEndpoints] The managed application notification endpoint.
  const ApplicationNotificationPolicy({
    required this.notificationEndpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationEndpoints': pulumi.Input.mapInputValue<List<ApplicationNotificationEndpoint>, List<Map<String, dynamic>>>(notificationEndpoints, (value) => pulumi.Input.encodeList<ApplicationNotificationEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApplicationNotificationPolicy.fromMap(Map<String, dynamic> map) {
    return ApplicationNotificationPolicy(
      notificationEndpoints: pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationNotificationEndpoint>(map['notificationEndpoints']!, (value) => ApplicationNotificationEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
