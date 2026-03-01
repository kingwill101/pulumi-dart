// ignore_for_file: unused_element, unnecessary_cast


class ApplicationPublicClient {
  /// A set of URLs where user tokens are sent for sign-in, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent. Must be a valid `https` or `ms-appx-web` URL.
  final List<String>? redirectUris;

  /// Creates a new [ApplicationPublicClient].
  /// [redirectUris] A set of URLs where user tokens are sent for sign-in, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent. Must be a valid `https` or `ms-appx-web` URL.
  ApplicationPublicClient({
    this.redirectUris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'redirectUris': ?redirectUris,
    };
  }

  factory ApplicationPublicClient.fromMap(Map<String, dynamic> map) {
    return ApplicationPublicClient(
      redirectUris: map['redirectUris'] == null ? null : (map['redirectUris'] as List).cast<String>(),
    );
  }
}

