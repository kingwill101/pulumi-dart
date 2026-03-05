// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for exporting to a Pub/Sub topic.
class PubSubConfigResponse {
  /// The name of the Pub/Sub topic. Structured like: projects/{project_number}/topics/{topic_id}. The topic may be changed.
  final pulumi.Input<String> topic;

  /// Creates a new [PubSubConfigResponse].
  /// [topic] The name of the Pub/Sub topic. Structured like: projects/{project_number}/topics/{topic_id}. The topic may be changed.
  PubSubConfigResponse({
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topic': topic,
    };
  }

  factory PubSubConfigResponse.fromMap(Map<String, dynamic> map) {
    return PubSubConfigResponse(
      topic: pulumi.Input.fromValue(map['topic'] as String),
    );
  }
}

