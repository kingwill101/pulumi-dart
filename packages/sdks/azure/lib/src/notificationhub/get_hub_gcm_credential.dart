// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHubGcmCredential {
  /// The API Key associated with the Google Cloud Messaging service.
  final pulumi.Input<String> apiKey;

  /// Creates a new [GetHubGcmCredential].
  /// [apiKey] The API Key associated with the Google Cloud Messaging service.
  GetHubGcmCredential({
    required this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
    };
  }

  factory GetHubGcmCredential.fromMap(Map<String, dynamic> map) {
    return GetHubGcmCredential(
      apiKey: pulumi.Input.fromValue(map['apiKey'] as String),
    );
  }
}

