// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pub_sub_response.dart';

/// NotificationConfig is the configuration of notifications.
class NotificationConfigResponse {
  /// Notification config for Pub/Sub.
  final pulumi.Input<PubSubResponse> pubsub;

  /// Creates a new [NotificationConfigResponse].
  /// [pubsub] Notification config for Pub/Sub.
  const NotificationConfigResponse({
    required this.pubsub,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pubsub': pulumi.Input.mapInputValue<PubSubResponse, Map<String, dynamic>>(pubsub, (value) => value.toMap()),
    };
  }

  factory NotificationConfigResponse.fromMap(Map<String, dynamic> map) {
    return NotificationConfigResponse(
      pubsub: pulumi.Input.fromValue(PubSubResponse.fromMap((map['pubsub']! as Map).cast<String, dynamic>())),
    );
  }
}

