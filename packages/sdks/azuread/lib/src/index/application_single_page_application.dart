// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationSinglePageApplication {
  /// A set of URLs where user tokens are sent for sign-in, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent. Must be a valid `https` URL.
  final pulumi.Input<List<String>>? redirectUris;

  /// Creates a new [ApplicationSinglePageApplication].
  /// [redirectUris] A set of URLs where user tokens are sent for sign-in, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent. Must be a valid `https` URL.
  ApplicationSinglePageApplication({
    this.redirectUris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'redirectUris': ?redirectUris,
    };
  }

  factory ApplicationSinglePageApplication.fromMap(Map<String, dynamic> map) {
    return ApplicationSinglePageApplication(
      redirectUris: (() { final guardedValue = map['redirectUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

