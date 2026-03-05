// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata for a Pub/Sub connector used by the job.
class PubSubIODetailsResponse {
  /// Subscription used in the connection.
  final pulumi.Input<String> subscription;
  /// Topic accessed in the connection.
  final pulumi.Input<String> topic;

  /// Creates a new [PubSubIODetailsResponse].
  /// [subscription] Subscription used in the connection.
  /// [topic] Topic accessed in the connection.
  PubSubIODetailsResponse({
    required this.subscription,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subscription': subscription,
      'topic': topic,
    };
  }

  factory PubSubIODetailsResponse.fromMap(Map<String, dynamic> map) {
    return PubSubIODetailsResponse(
      subscription: pulumi.Input.fromValue(map['subscription'] as String),
      topic: pulumi.Input.fromValue(map['topic'] as String),
    );
  }
}

