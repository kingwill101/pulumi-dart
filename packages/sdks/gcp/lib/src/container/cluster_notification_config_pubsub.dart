// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_notification_config_pubsub_filter.dart';

class ClusterNotificationConfigPubsub {
  /// Whether or not the notification config is enabled
  final pulumi.Input<bool> enabled;
  /// Choose what type of notifications you want to receive. If no filters are applied, you'll receive all notification types. Structure is documented below.
  final pulumi.Input<ClusterNotificationConfigPubsubFilter>? filter;
  /// The pubsub topic to push upgrade notifications to. Must be in the same project as the cluster. Must be in the format: `projects/{project}/topics/{topic}`.
  final pulumi.Input<String>? topic;

  /// Creates a new [ClusterNotificationConfigPubsub].
  /// [enabled] Whether or not the notification config is enabled
  /// [filter] Choose what type of notifications you want to receive. If no filters are applied, you'll receive all notification types. Structure is documented below.
  /// [topic] The pubsub topic to push upgrade notifications to. Must be in the same project as the cluster. Must be in the format: `projects/{project}/topics/{topic}`.
  ClusterNotificationConfigPubsub({
    required this.enabled,
    this.filter,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'filter': ?pulumi.Input.mapOptionalInputValue<ClusterNotificationConfigPubsubFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'topic': ?topic,
    };
  }

  factory ClusterNotificationConfigPubsub.fromMap(Map<String, dynamic> map) {
    return ClusterNotificationConfigPubsub(
      enabled: (map['enabled'] as bool).input(),
      filter: map['filter'] == null ? null : (ClusterNotificationConfigPubsubFilter.fromMap((map['filter']! as Map).cast<String, dynamic>())).input(),
      topic: map['topic'] == null ? null : (map['topic']! as String).input(),
    );
  }
}

