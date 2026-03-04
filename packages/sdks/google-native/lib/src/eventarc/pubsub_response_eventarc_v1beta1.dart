// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a Pub/Sub transport.
class PubsubResponseEventarcV1beta1 {
  /// The name of the Pub/Sub subscription created and managed by Eventarc system as a transport for the event delivery. Format: `projects/{PROJECT_ID}/subscriptions/{SUBSCRIPTION_NAME}`.
  final pulumi.Input<String> subscription;

  /// Optional. The name of the Pub/Sub topic created and managed by Eventarc system as a transport for the event delivery. Format: `projects/{PROJECT_ID}/topics/{TOPIC_NAME}`. You may set an existing topic for triggers of the type `google.cloud.pubsub.topic.v1.messagePublished` only. The topic you provide here will not be deleted by Eventarc at trigger deletion.
  final pulumi.Input<String> topic;

  /// Creates a new [PubsubResponseEventarcV1beta1].
  /// [subscription] The name of the Pub/Sub subscription created and managed by Eventarc system as a transport for the event delivery. Format: `projects/{PROJECT_ID}/subscriptions/{SUBSCRIPTION_NAME}`.
  /// [topic] Optional. The name of the Pub/Sub topic created and managed by Eventarc system as a transport for the event delivery. Format: `projects/{PROJECT_ID}/topics/{TOPIC_NAME}`. You may set an existing topic for triggers of the type `google.cloud.pubsub.topic.v1.messagePublished` only. The topic you provide here will not be deleted by Eventarc at trigger deletion.
  PubsubResponseEventarcV1beta1({
    required this.subscription,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'subscription': subscription, 'topic': topic};
  }

  factory PubsubResponseEventarcV1beta1.fromMap(Map<String, dynamic> map) {
    return PubsubResponseEventarcV1beta1(
      subscription: pulumi.Input.fromValue(map['subscription'] as String),
      topic: pulumi.Input.fromValue(map['topic'] as String),
    );
  }
}
