// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a Pub/Sub transport.
class PubsubResponse {
  /// The name of the Pub/Sub subscription created and managed by Eventarc as a transport for the event delivery. Format: `projects/{PROJECT_ID}/subscriptions/{SUBSCRIPTION_NAME}`.
  final pulumi.Input<String> subscription;

  /// Optional. The name of the Pub/Sub topic created and managed by Eventarc as a transport for the event delivery. Format: `projects/{PROJECT_ID}/topics/{TOPIC_NAME}`. You can set an existing topic for triggers of the type `google.cloud.pubsub.topic.v1.messagePublished`. The topic you provide here is not deleted by Eventarc at trigger deletion.
  final pulumi.Input<String> topic;

  /// Creates a new [PubsubResponse].
  /// [subscription] The name of the Pub/Sub subscription created and managed by Eventarc as a transport for the event delivery. Format: `projects/{PROJECT_ID}/subscriptions/{SUBSCRIPTION_NAME}`.
  /// [topic] Optional. The name of the Pub/Sub topic created and managed by Eventarc as a transport for the event delivery. Format: `projects/{PROJECT_ID}/topics/{TOPIC_NAME}`. You can set an existing topic for triggers of the type `google.cloud.pubsub.topic.v1.messagePublished`. The topic you provide here is not deleted by Eventarc at trigger deletion.
  PubsubResponse({required this.subscription, required this.topic});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'subscription': subscription, 'topic': topic};
  }

  factory PubsubResponse.fromMap(Map<String, dynamic> map) {
    return PubsubResponse(
      subscription: pulumi.Input.fromValue(map['subscription'] as String),
      topic: pulumi.Input.fromValue(map['topic'] as String),
    );
  }
}
