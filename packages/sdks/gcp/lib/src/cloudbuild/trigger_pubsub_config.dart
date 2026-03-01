// ignore_for_file: unused_element, unnecessary_cast


class TriggerPubsubConfig {
  /// Service account that will make the push request.
  final String? serviceAccountEmail;
  /// (Output)
  /// Potential issues with the underlying Pub/Sub subscription configuration.
  /// Only populated on get requests.
  final String? state;
  /// (Output)
  /// Output only. Name of the subscription.
  final String? subscription;
  /// The name of the topic from which this subscription is receiving messages.
  final String topic;

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
      serviceAccountEmail: map['serviceAccountEmail'] == null ? null : map['serviceAccountEmail'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      subscription: map['subscription'] == null ? null : map['subscription'] as String,
      topic: map['topic'] as String,
    );
  }
}

