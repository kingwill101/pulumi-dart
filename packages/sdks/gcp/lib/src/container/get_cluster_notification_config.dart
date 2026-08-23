// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_notification_config_pubsub.dart';

class GetClusterNotificationConfig {
  /// Notification config for Cloud Pub/Sub
  final pulumi.Input<List<GetClusterNotificationConfigPubsub>> pubsubs;

  /// Creates a new [GetClusterNotificationConfig].
  /// [pubsubs] Notification config for Cloud Pub/Sub
  const GetClusterNotificationConfig({
    required this.pubsubs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pubsubs': pulumi.Input.mapInputValue<List<GetClusterNotificationConfigPubsub>, List<Map<String, dynamic>>>(pubsubs, (value) => pulumi.Input.encodeList<GetClusterNotificationConfigPubsub, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterNotificationConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNotificationConfig(
      pubsubs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNotificationConfigPubsub>(map['pubsubs']!, (value) => GetClusterNotificationConfigPubsub.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
