// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_notification_config_pubsub.dart';

class ClusterNotificationConfig {
  /// The pubsub config for the cluster's upgrade notifications.
  final pulumi.Input<ClusterNotificationConfigPubsub> pubsub;

  /// Creates a new [ClusterNotificationConfig].
  /// [pubsub] The pubsub config for the cluster's upgrade notifications.
  const ClusterNotificationConfig({
    required this.pubsub,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pubsub': pulumi.Input.mapInputValue<ClusterNotificationConfigPubsub, Map<String, dynamic>>(pubsub, (value) => value.toMap()),
    };
  }

  factory ClusterNotificationConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNotificationConfig(
      pubsub: pulumi.Input.fromValue(ClusterNotificationConfigPubsub.fromMap((map['pubsub']! as Map).cast<String, dynamic>())),
    );
  }
}

