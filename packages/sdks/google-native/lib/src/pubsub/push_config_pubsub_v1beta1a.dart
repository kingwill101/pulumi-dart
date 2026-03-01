// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for a push delivery endpoint.
class PushConfigPubsubV1beta1a {
  /// A URL locating the endpoint to which messages should be pushed. For example, a Webhook endpoint might use "https://example.com/push".
  final String? pushEndpoint;

  /// Creates a new [PushConfigPubsubV1beta1a].
  /// [pushEndpoint] A URL locating the endpoint to which messages should be pushed. For example, a Webhook endpoint might use "https://example.com/push".
  PushConfigPubsubV1beta1a({
    this.pushEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pushEndpoint': ?pushEndpoint,
    };
  }

  factory PushConfigPubsubV1beta1a.fromMap(Map<String, dynamic> map) {
    return PushConfigPubsubV1beta1a(
      pushEndpoint: map['pushEndpoint'] == null ? null : map['pushEndpoint'] as String,
    );
  }
}

