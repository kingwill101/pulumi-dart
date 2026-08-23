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
  const PubSubIODetails({
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
      subscription: (() { final guardedValue = map['subscription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topic: (() { final guardedValue = map['topic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
