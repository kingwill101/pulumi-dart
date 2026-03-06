// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Confirguration of PubSubEventWriter.
class EventPublishConfigResponse {
  /// Option to enable Event Publishing.
  final pulumi.Input<bool> enabled;
  /// The resource name of the Pub/Sub topic. Format: projects/{project_id}/topics/{topic_id}
  final pulumi.Input<String> topic;

  /// Creates a new [EventPublishConfigResponse].
  /// [enabled] Option to enable Event Publishing.
  /// [topic] The resource name of the Pub/Sub topic. Format: projects/{project_id}/topics/{topic_id}
  const EventPublishConfigResponse({
    required this.enabled,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'topic': topic,
    };
  }

  factory EventPublishConfigResponse.fromMap(Map<String, dynamic> map) {
    return EventPublishConfigResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      topic: pulumi.Input.fromValue(map['topic'] as String),
    );
  }
}

