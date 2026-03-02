// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter.dart';

/// Pub/Sub specific notification config.
class PubSub {
  /// Enable notifications for Pub/Sub.
  final pulumi.Input<bool>? enabled;
  /// Allows filtering to one or more specific event types. If no filter is specified, or if a filter is specified with no event types, all event types will be sent
  final pulumi.Input<Filter>? filter;
  /// The desired Pub/Sub topic to which notifications will be sent by GKE. Format is `projects/{project}/topics/{topic}`.
  final pulumi.Input<String>? topic;

  /// Creates a new [PubSub].
  /// [enabled] Enable notifications for Pub/Sub.
  /// [filter] Allows filtering to one or more specific event types. If no filter is specified, or if a filter is specified with no event types, all event types will be sent
  /// [topic] The desired Pub/Sub topic to which notifications will be sent by GKE. Format is `projects/{project}/topics/{topic}`.
  PubSub({
    this.enabled,
    this.filter,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'filter': ?pulumi.Input.mapOptionalInputValue<Filter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'topic': ?topic,
    };
  }

  factory PubSub.fromMap(Map<String, dynamic> map) {
    return PubSub(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      filter: map['filter'] == null ? null : (Filter.fromMap((map['filter']! as Map).cast<String, dynamic>())).input(),
      topic: map['topic'] == null ? null : (map['topic']! as String).input(),
    );
  }
}

