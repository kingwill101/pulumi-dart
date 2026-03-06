// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_response.dart';

/// Pub/Sub specific notification config.
class PubSubResponse {
  /// Enable notifications for Pub/Sub.
  final pulumi.Input<bool> enabled;
  /// Allows filtering to one or more specific event types. If no filter is specified, or if a filter is specified with no event types, all event types will be sent
  final pulumi.Input<FilterResponse> filter;
  /// The desired Pub/Sub topic to which notifications will be sent by GKE. Format is `projects/{project}/topics/{topic}`.
  final pulumi.Input<String> topic;

  /// Creates a new [PubSubResponse].
  /// [enabled] Enable notifications for Pub/Sub.
  /// [filter] Allows filtering to one or more specific event types. If no filter is specified, or if a filter is specified with no event types, all event types will be sent
  /// [topic] The desired Pub/Sub topic to which notifications will be sent by GKE. Format is `projects/{project}/topics/{topic}`.
  const PubSubResponse({
    required this.enabled,
    required this.filter,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'filter': pulumi.Input.mapInputValue<FilterResponse, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'topic': topic,
    };
  }

  factory PubSubResponse.fromMap(Map<String, dynamic> map) {
    return PubSubResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      filter: pulumi.Input.fromValue(FilterResponse.fromMap((map['filter']! as Map).cast<String, dynamic>())),
      topic: pulumi.Input.fromValue(map['topic'] as String),
    );
  }
}

