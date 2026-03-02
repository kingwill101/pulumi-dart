// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for exporting to a Pub/Sub topic.
class PubSubConfig {
  /// The name of the Pub/Sub topic. Structured like: projects/{project_number}/topics/{topic_id}. The topic may be changed.
  final pulumi.Input<String>? topic;

  /// Creates a new [PubSubConfig].
  /// [topic] The name of the Pub/Sub topic. Structured like: projects/{project_number}/topics/{topic_id}. The topic may be changed.
  PubSubConfig({
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topic': ?topic,
    };
  }

  factory PubSubConfig.fromMap(Map<String, dynamic> map) {
    return PubSubConfig(
      topic: map['topic'] == null ? null : (map['topic']! as String).input(),
    );
  }
}

