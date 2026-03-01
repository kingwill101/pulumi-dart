// ignore_for_file: unused_element, unnecessary_cast


class GetTriggerPubsubConfig {
  /// Service account that will make the push request.
  final String serviceAccountEmail;
  /// Potential issues with the underlying Pub/Sub subscription configuration.
  /// Only populated on get requests.
  final String state;
  /// Output only. Name of the subscription.
  final String subscription;
  /// The name of the topic from which this subscription is receiving messages.
  final String topic;

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
      serviceAccountEmail: map['serviceAccountEmail'] as String,
      state: map['state'] as String,
      subscription: map['subscription'] as String,
      topic: map['topic'] as String,
    );
  }
}

