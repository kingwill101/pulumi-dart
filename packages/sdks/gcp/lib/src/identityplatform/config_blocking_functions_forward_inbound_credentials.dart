// ignore_for_file: unused_element, unnecessary_cast


class ConfigBlockingFunctionsForwardInboundCredentials {
  /// Whether to pass the user's OAuth identity provider's access token.
  final bool? accessToken;
  /// Whether to pass the user's OIDC identity provider's ID token.
  final bool? idToken;
  /// Whether to pass the user's OAuth identity provider's refresh token.
  final bool? refreshToken;

  /// Creates a new [ConfigBlockingFunctionsForwardInboundCredentials].
  /// [accessToken] Whether to pass the user's OAuth identity provider's access token.
  /// [idToken] Whether to pass the user's OIDC identity provider's ID token.
  /// [refreshToken] Whether to pass the user's OAuth identity provider's refresh token.
  ConfigBlockingFunctionsForwardInboundCredentials({
    this.accessToken,
    this.idToken,
    this.refreshToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'idToken': ?idToken,
      'refreshToken': ?refreshToken,
    };
  }

  factory ConfigBlockingFunctionsForwardInboundCredentials.fromMap(Map<String, dynamic> map) {
    return ConfigBlockingFunctionsForwardInboundCredentials(
      accessToken: map['accessToken'] == null ? null : map['accessToken'] as bool,
      idToken: map['idToken'] == null ? null : map['idToken'] as bool,
      refreshToken: map['refreshToken'] == null ? null : map['refreshToken'] as bool,
    );
  }
}

