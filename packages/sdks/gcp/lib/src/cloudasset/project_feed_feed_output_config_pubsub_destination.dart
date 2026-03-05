// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectFeedFeedOutputConfigPubsubDestination {
  /// Destination on Cloud Pubsub topic.
  final pulumi.Input<String> topic;

  /// Creates a new [ProjectFeedFeedOutputConfigPubsubDestination].
  /// [topic] Destination on Cloud Pubsub topic.
  ProjectFeedFeedOutputConfigPubsubDestination({
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topic': topic,
    };
  }

  factory ProjectFeedFeedOutputConfigPubsubDestination.fromMap(Map<String, dynamic> map) {
    return ProjectFeedFeedOutputConfigPubsubDestination(
      topic: pulumi.Input.fromValue(map['topic'] as String),
    );
  }
}

