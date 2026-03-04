// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pub_sub_container_v1beta1.dart';

/// NotificationConfig is the configuration of notifications.
class NotificationConfigContainerV1beta1 {
  /// Notification config for Pub/Sub.
  final pulumi.Input<PubSubContainerV1beta1>? pubsub;

  /// Creates a new [NotificationConfigContainerV1beta1].
  /// [pubsub] Notification config for Pub/Sub.
  NotificationConfigContainerV1beta1({this.pubsub});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pubsub':
          ?pulumi.Input.mapOptionalInputValue<
            PubSubContainerV1beta1,
            Map<String, dynamic>
          >(pubsub, (value) => value.toMap()),
    };
  }

  factory NotificationConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NotificationConfigContainerV1beta1(
      pubsub: (() {
        final guardedValue = map['pubsub'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PubSubContainerV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
