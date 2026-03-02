// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A Pub/Sub destination.
class PubsubDestination {
  /// The name of the Pub/Sub topic to publish job completion notification to. For example: `projects/{project}/topics/{topic}`.
  final pulumi.Input<String>? topic;

  /// Creates a new [PubsubDestination].
  /// [topic] The name of the Pub/Sub topic to publish job completion notification to. For example: `projects/{project}/topics/{topic}`.
  PubsubDestination({
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topic': ?topic,
    };
  }

  factory PubsubDestination.fromMap(Map<String, dynamic> map) {
    return PubsubDestination(
      topic: map['topic'] == null ? null : (map['topic']! as String).input(),
    );
  }
}

