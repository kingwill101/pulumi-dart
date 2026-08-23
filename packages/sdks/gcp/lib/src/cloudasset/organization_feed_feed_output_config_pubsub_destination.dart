// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrganizationFeedFeedOutputConfigPubsubDestination {
  /// Destination on Cloud Pubsub topic.
  final pulumi.Input<String> topic;

  /// Creates a new [OrganizationFeedFeedOutputConfigPubsubDestination].
  /// [topic] Destination on Cloud Pubsub topic.
  const OrganizationFeedFeedOutputConfigPubsubDestination({
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topic': topic,
    };
  }

  factory OrganizationFeedFeedOutputConfigPubsubDestination.fromMap(Map<String, dynamic> map) {
    return OrganizationFeedFeedOutputConfigPubsubDestination(
      topic: pulumi.Input.fromValue(map['topic'] as String),
    );
  }
}
