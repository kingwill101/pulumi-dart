// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pub_sub.dart';

/// NotificationConfig is the configuration of notifications.
class NotificationConfig {
  /// Notification config for Pub/Sub.
  final pulumi.Input<PubSub>? pubsub;

  /// Creates a new [NotificationConfig].
  /// [pubsub] Notification config for Pub/Sub.
  NotificationConfig({
    this.pubsub,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pubsub': ?pulumi.Input.mapOptionalInputValue<PubSub, Map<String, dynamic>>(pubsub, (value) => value.toMap()),
    };
  }

  factory NotificationConfig.fromMap(Map<String, dynamic> map) {
    return NotificationConfig(
      pubsub: (() { final guardedValue = map['pubsub']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PubSub.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

