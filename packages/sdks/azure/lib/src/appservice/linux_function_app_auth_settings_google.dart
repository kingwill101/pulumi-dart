// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxFunctionAppAuthSettingsGoogle {
  /// The OpenID Connect Client ID for the Google web application.
  final pulumi.Input<String> clientId;
  /// The client secret associated with the Google web application. Cannot be specified with `clientSecretSettingName`.
  final pulumi.Input<String?>? clientSecret;
  /// The app setting name that contains the `clientSecret` value used for Google login. Cannot be specified with `clientSecret`.
  final pulumi.Input<String?>? clientSecretSettingName;
  /// Specifies a list of OAuth 2.0 scopes that will be requested as part of Google Sign-In authentication. If not specified, `openid`, `profile`, and `email` are used as default scopes.
  final pulumi.Input<List<String>?>? oauthScopes;

  /// Creates a new [LinuxFunctionAppAuthSettingsGoogle].
  /// [clientId] The OpenID Connect Client ID for the Google web application.
  /// [clientSecret] The client secret associated with the Google web application. Cannot be specified with `clientSecretSettingName`.
  /// [clientSecretSettingName] The app setting name that contains the `clientSecret` value used for Google login. Cannot be specified with `clientSecret`.
  /// [oauthScopes] Specifies a list of OAuth 2.0 scopes that will be requested as part of Google Sign-In authentication. If not specified, `openid`, `profile`, and `email` are used as default scopes.
  const LinuxFunctionAppAuthSettingsGoogle({
    required this.clientId,
    this.clientSecret,
    this.clientSecretSettingName,
    this.oauthScopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': ?clientSecret,
      'clientSecretSettingName': ?clientSecretSettingName,
      'oauthScopes': ?oauthScopes,
    };
  }

  factory LinuxFunctionAppAuthSettingsGoogle.fromMap(Map<String, dynamic> map) {
    return LinuxFunctionAppAuthSettingsGoogle(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecretSettingName: (() { final guardedValue = map['clientSecretSettingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauthScopes: (() { final guardedValue = map['oauthScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
