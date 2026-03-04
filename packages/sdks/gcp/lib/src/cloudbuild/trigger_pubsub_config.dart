// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TriggerPubsubConfig {
  /// Service account that will make the push request.
  final pulumi.Input<String>? serviceAccountEmail;

  /// (Output)
  /// Potential issues with the underlying Pub/Sub subscription configuration.
  /// Only populated on get requests.
  final pulumi.Input<String>? state;

  /// (Output)
  /// Output only. Name of the subscription.
  final pulumi.Input<String>? subscription;

  /// The name of the topic from which this subscription is receiving messages.
  final pulumi.Input<String> topic;

  /// Creates a new [TriggerPubsubConfig].
  /// [serviceAccountEmail] Service account that will make the push request.
  /// [state] (Output)
  /// [subscription] (Output)
  /// [topic] The name of the topic from which this subscription is receiving messages.
  TriggerPubsubConfig({
    this.serviceAccountEmail,
    this.state,
    this.subscription,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccountEmail': ?serviceAccountEmail,
      'state': ?state,
      'subscription': ?subscription,
      'topic': topic,
    };
  }

  factory TriggerPubsubConfig.fromMap(Map<String, dynamic> map) {
    return TriggerPubsubConfig(
      serviceAccountEmail: (() {
        final guardedValue = map['serviceAccountEmail'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subscription: (() {
        final guardedValue = map['subscription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      topic: pulumi.Input.fromValue(map['topic'] as String),
    );
  }
}
