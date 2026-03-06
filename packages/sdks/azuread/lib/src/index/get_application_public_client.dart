// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationPublicClient {
  /// A list of URLs where user tokens are sent for sign-in, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent.
  final pulumi.Input<List<String>> redirectUris;

  /// Creates a new [GetApplicationPublicClient].
  /// [redirectUris] A list of URLs where user tokens are sent for sign-in, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent.
  const GetApplicationPublicClient({
    required this.redirectUris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'redirectUris': redirectUris,
    };
  }

  factory GetApplicationPublicClient.fromMap(Map<String, dynamic> map) {
    return GetApplicationPublicClient(
      redirectUris: pulumi.Input.fromValue((map['redirectUris'] as List).cast<String>()),
    );
  }
}

