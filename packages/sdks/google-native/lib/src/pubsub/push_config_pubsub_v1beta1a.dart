// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for a push delivery endpoint.
class PushConfigPubsubV1beta1a {
  /// A URL locating the endpoint to which messages should be pushed. For example, a Webhook endpoint might use "https://example.com/push".
  final pulumi.Input<String>? pushEndpoint;

  /// Creates a new [PushConfigPubsubV1beta1a].
  /// [pushEndpoint] A URL locating the endpoint to which messages should be pushed. For example, a Webhook endpoint might use "https://example.com/push".
  const PushConfigPubsubV1beta1a({
    this.pushEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pushEndpoint': ?pushEndpoint,
    };
  }

  factory PushConfigPubsubV1beta1a.fromMap(Map<String, dynamic> map) {
    return PushConfigPubsubV1beta1a(
      pushEndpoint: (() { final guardedValue = map['pushEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
