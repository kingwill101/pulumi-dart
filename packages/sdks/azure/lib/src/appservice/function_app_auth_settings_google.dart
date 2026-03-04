// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionAppAuthSettingsGoogle {
  /// The OpenID Connect Client ID for the Google web application.
  final pulumi.Input<String> clientId;

  /// The client secret associated with the Google web application.
  final pulumi.Input<String> clientSecret;

  /// The OAuth 2.0 scopes that will be requested as part of Google Sign-In authentication. &lt;https://developers.google.com/identity/sign-in/web/&gt;
  final pulumi.Input<List<String>>? oauthScopes;

  /// Creates a new [FunctionAppAuthSettingsGoogle].
  /// [clientId] The OpenID Connect Client ID for the Google web application.
  /// [clientSecret] The client secret associated with the Google web application.
  /// [oauthScopes] The OAuth 2.0 scopes that will be requested as part of Google Sign-In authentication. &lt;https://developers.google.com/identity/sign-in/web/&gt;
  FunctionAppAuthSettingsGoogle({
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

  factory FunctionAppAuthSettingsGoogle.fromMap(Map<String, dynamic> map) {
    return FunctionAppAuthSettingsGoogle(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: pulumi.Input.fromValue(map['clientSecret'] as String),
      oauthScopes: (() {
        final guardedValue = map['oauthScopes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
