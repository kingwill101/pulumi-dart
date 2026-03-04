// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a Pub/Sub transport.
class Pubsub {
  /// Optional. The name of the Pub/Sub topic created and managed by Eventarc as a transport for the event delivery. Format: `projects/{PROJECT_ID}/topics/{TOPIC_NAME}`. You can set an existing topic for triggers of the type `google.cloud.pubsub.topic.v1.messagePublished`. The topic you provide here is not deleted by Eventarc at trigger deletion.
  final pulumi.Input<String>? topic;

  /// Creates a new [Pubsub].
  /// [topic] Optional. The name of the Pub/Sub topic created and managed by Eventarc as a transport for the event delivery. Format: `projects/{PROJECT_ID}/topics/{TOPIC_NAME}`. You can set an existing topic for triggers of the type `google.cloud.pubsub.topic.v1.messagePublished`. The topic you provide here is not deleted by Eventarc at trigger deletion.
  Pubsub({this.topic});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'topic': ?topic};
  }

  factory Pubsub.fromMap(Map<String, dynamic> map) {
    return Pubsub(
      topic: (() {
        final guardedValue = map['topic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
