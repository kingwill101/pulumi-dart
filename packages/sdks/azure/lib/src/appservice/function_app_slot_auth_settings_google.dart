// ignore_for_file: unused_element, unnecessary_cast


class FunctionAppSlotAuthSettingsGoogle {
  /// The OpenID Connect Client ID for the Google web application.
  final String clientId;
  /// The client secret associated with the Google web application.
  final String clientSecret;
  /// The OAuth 2.0 scopes that will be requested as part of Google Sign-In authentication. <https://developers.google.com/identity/sign-in/web/>
  final List<String>? oauthScopes;

  /// Creates a new [FunctionAppSlotAuthSettingsGoogle].
  /// [clientId] The OpenID Connect Client ID for the Google web application.
  /// [clientSecret] The client secret associated with the Google web application.
  /// [oauthScopes] The OAuth 2.0 scopes that will be requested as part of Google Sign-In authentication. <https://developers.google.com/identity/sign-in/web/>
  FunctionAppSlotAuthSettingsGoogle({
    required this.clientId,
    required this.clientSecret,
    this.oauthScopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': clientSecret,
      'oauthScopes': ?oauthScopes,
    };
  }

  factory FunctionAppSlotAuthSettingsGoogle.fromMap(Map<String, dynamic> map) {
    return FunctionAppSlotAuthSettingsGoogle(
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] as String,
      oauthScopes: map['oauthScopes'] == null ? null : (map['oauthScopes'] as List).cast<String>(),
    );
  }
}

