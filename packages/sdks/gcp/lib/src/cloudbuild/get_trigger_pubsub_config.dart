// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTriggerPubsubConfig {
  /// Service account that will make the push request.
  final pulumi.Input<String> serviceAccountEmail;
  /// Potential issues with the underlying Pub/Sub subscription configuration.
  /// Only populated on get requests.
  final pulumi.Input<String> state;
  /// Output only. Name of the subscription.
  final pulumi.Input<String> subscription;
  /// The name of the topic from which this subscription is receiving messages.
  final pulumi.Input<String> topic;

  /// Creates a new [GetTriggerPubsubConfig].
  /// [serviceAccountEmail] Service account that will make the push request.
  /// [state] Potential issues with the underlying Pub/Sub subscription configuration.
  /// [subscription] Output only. Name of the subscription.
  /// [topic] The name of the topic from which this subscription is receiving messages.
  GetTriggerPubsubConfig({
    required this.serviceAccountEmail,
    required this.state,
    required this.subscription,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccountEmail': serviceAccountEmail,
      'state': state,
      'subscription': subscription,
      'topic': topic,
    };
  }

  factory GetTriggerPubsubConfig.fromMap(Map<String, dynamic> map) {
    return GetTriggerPubsubConfig(
      serviceAccountEmail: pulumi.Input.fromValue(map['serviceAccountEmail'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      subscription: pulumi.Input.fromValue(map['subscription'] as String),
      topic: pulumi.Input.fromValue(map['topic'] as String),
    );
  }
}

