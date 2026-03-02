// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SlotAuthSettingsGoogle {
  /// The OpenID Connect Client ID for the Google web application.
  final pulumi.Input<String> clientId;
  /// The client secret associated with the Google web application.
  final pulumi.Input<String> clientSecret;
  /// The OAuth 2.0 scopes that will be requested as part of Google Sign-In authentication. <https://developers.google.com/identity/sign-in/web/>
  final pulumi.Input<List<String>>? oauthScopes;

  /// Creates a new [SlotAuthSettingsGoogle].
  /// [clientId] The OpenID Connect Client ID for the Google web application.
  /// [clientSecret] The client secret associated with the Google web application.
  /// [oauthScopes] The OAuth 2.0 scopes that will be requested as part of Google Sign-In authentication. <https://developers.google.com/identity/sign-in/web/>
  SlotAuthSettingsGoogle({
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

  factory SlotAuthSettingsGoogle.fromMap(Map<String, dynamic> map) {
    return SlotAuthSettingsGoogle(
      clientId: (map['clientId'] as String).input(),
      clientSecret: (map['clientSecret'] as String).input(),
      oauthScopes: map['oauthScopes'] == null ? null : ((map['oauthScopes'] as List).cast<String>()).input(),
    );
  }
}

