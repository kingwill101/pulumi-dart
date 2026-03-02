// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pub_sub_response_container_v1beta1.dart';

/// NotificationConfig is the configuration of notifications.
class NotificationConfigResponseContainerV1beta1 {
  /// Notification config for Pub/Sub.
  final pulumi.Input<PubSubResponseContainerV1beta1> pubsub;

  /// Creates a new [NotificationConfigResponseContainerV1beta1].
  /// [pubsub] Notification config for Pub/Sub.
  NotificationConfigResponseContainerV1beta1({
    required this.pubsub,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pubsub': pulumi.Input.mapInputValue<PubSubResponseContainerV1beta1, Map<String, dynamic>>(pubsub, (value) => value.toMap()),
    };
  }

  factory NotificationConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NotificationConfigResponseContainerV1beta1(
      pubsub: (PubSubResponseContainerV1beta1.fromMap((map['pubsub'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

