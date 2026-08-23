// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HubGcmCredential {
  /// The API Key associated with the Google Cloud Messaging service.
  final pulumi.Input<String> apiKey;

  /// Creates a new [HubGcmCredential].
  /// [apiKey] The API Key associated with the Google Cloud Messaging service.
  const HubGcmCredential({
    required this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
    };
  }

  factory HubGcmCredential.fromMap(Map<String, dynamic> map) {
    return HubGcmCredential(
      apiKey: pulumi.Input.fromValue(map['apiKey'] as String),
    );
  }
}
