// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PubsubConfig describes the configuration of a trigger that creates a build whenever a Pub/Sub message is published.
class PubsubConfigResponse {
  /// Service account that will make the push request.
  final pulumi.Input<String> serviceAccountEmail;
  /// Potential issues with the underlying Pub/Sub subscription configuration. Only populated on get requests.
  final pulumi.Input<String> state;
  /// Name of the subscription. Format is `projects/{project}/subscriptions/{subscription}`.
  final pulumi.Input<String> subscription;
  /// The name of the topic from which this subscription is receiving messages. Format is `projects/{project}/topics/{topic}`.
  final pulumi.Input<String> topic;

  /// Creates a new [PubsubConfigResponse].
  /// [serviceAccountEmail] Service account that will make the push request.
  /// [state] Potential issues with the underlying Pub/Sub subscription configuration. Only populated on get requests.
  /// [subscription] Name of the subscription. Format is `projects/{project}/subscriptions/{subscription}`.
  /// [topic] The name of the topic from which this subscription is receiving messages. Format is `projects/{project}/topics/{topic}`.
  const PubsubConfigResponse({
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

  factory PubsubConfigResponse.fromMap(Map<String, dynamic> map) {
    return PubsubConfigResponse(
      serviceAccountEmail: pulumi.Input.fromValue(map['serviceAccountEmail'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      subscription: pulumi.Input.fromValue(map['subscription'] as String),
      topic: pulumi.Input.fromValue(map['topic'] as String),
    );
  }
}

