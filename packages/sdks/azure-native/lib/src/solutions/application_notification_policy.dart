// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_notification_endpoint.dart';

/// Managed application notification policy.
class ApplicationNotificationPolicy {
  /// The managed application notification endpoint.
  final List<ApplicationNotificationEndpoint> notificationEndpoints;

  /// Creates a new [ApplicationNotificationPolicy].
  /// [notificationEndpoints] The managed application notification endpoint.
  ApplicationNotificationPolicy({
    required this.notificationEndpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationEndpoints': pulumi.Input.encodeList<ApplicationNotificationEndpoint, Map<String, dynamic>>(notificationEndpoints, (value) => value.toMap()),
    };
  }

  factory ApplicationNotificationPolicy.fromMap(Map<String, dynamic> map) {
    return ApplicationNotificationPolicy(
      notificationEndpoints: pulumi.Input.decodeList<ApplicationNotificationEndpoint>(map['notificationEndpoints'], (value) => ApplicationNotificationEndpoint.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

