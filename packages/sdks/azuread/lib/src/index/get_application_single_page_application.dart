// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationSinglePageApplication {
  /// A list of URLs where user tokens are sent for sign-in, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent.
  final pulumi.Input<List<String>> redirectUris;

  /// Creates a new [GetApplicationSinglePageApplication].
  /// [redirectUris] A list of URLs where user tokens are sent for sign-in, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent.
  const GetApplicationSinglePageApplication({
    required this.redirectUris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'redirectUris': redirectUris,
    };
  }

  factory GetApplicationSinglePageApplication.fromMap(Map<String, dynamic> map) {
    return GetApplicationSinglePageApplication(
      redirectUris: pulumi.Input.fromValue((map['redirectUris'] as List).cast<String>()),
    );
  }
}
