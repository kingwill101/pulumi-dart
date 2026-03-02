// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata for a Pub/Sub connector used by the job.
class PubSubIODetails {
  /// Subscription used in the connection.
  final pulumi.Input<String>? subscription;
  /// Topic accessed in the connection.
  final pulumi.Input<String>? topic;

  /// Creates a new [PubSubIODetails].
  /// [subscription] Subscription used in the connection.
  /// [topic] Topic accessed in the connection.
  PubSubIODetails({
    this.subscription,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subscription': ?subscription,
      'topic': ?topic,
    };
  }

  factory PubSubIODetails.fromMap(Map<String, dynamic> map) {
    return PubSubIODetails(
      subscription: map['subscription'] == null ? null : (map['subscription']! as String).input(),
      topic: map['topic'] == null ? null : (map['topic']! as String).input(),
    );
  }
}

