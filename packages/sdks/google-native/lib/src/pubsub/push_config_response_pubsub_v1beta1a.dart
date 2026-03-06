// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for a push delivery endpoint.
class PushConfigResponsePubsubV1beta1a {
  /// A URL locating the endpoint to which messages should be pushed. For example, a Webhook endpoint might use "https://example.com/push".
  final pulumi.Input<String> pushEndpoint;

  /// Creates a new [PushConfigResponsePubsubV1beta1a].
  /// [pushEndpoint] A URL locating the endpoint to which messages should be pushed. For example, a Webhook endpoint might use "https://example.com/push".
  const PushConfigResponsePubsubV1beta1a({
    required this.pushEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pushEndpoint': pushEndpoint,
    };
  }

  factory PushConfigResponsePubsubV1beta1a.fromMap(Map<String, dynamic> map) {
    return PushConfigResponsePubsubV1beta1a(
      pushEndpoint: pulumi.Input.fromValue(map['pushEndpoint'] as String),
    );
  }
}

