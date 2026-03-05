// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FolderFeedFeedOutputConfigPubsubDestination {
  /// Destination on Cloud Pubsub topic.
  final pulumi.Input<String> topic;

  /// Creates a new [FolderFeedFeedOutputConfigPubsubDestination].
  /// [topic] Destination on Cloud Pubsub topic.
  FolderFeedFeedOutputConfigPubsubDestination({
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topic': topic,
    };
  }

  factory FolderFeedFeedOutputConfigPubsubDestination.fromMap(Map<String, dynamic> map) {
    return FolderFeedFeedOutputConfigPubsubDestination(
      topic: pulumi.Input.fromValue(map['topic'] as String),
    );
  }
}

