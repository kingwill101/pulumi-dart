// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxWebAppAuthSettingsGoogle {
  /// The OpenID Connect Client ID for the Google web application.
  final pulumi.Input<String> clientId;
  /// The client secret associated with the Google web application. Cannot be specified with `client_secret_setting_name`.
  final pulumi.Input<String>? clientSecret;
  /// The app setting name that contains the `client_secret` value used for Google login. Cannot be specified with `client_secret`.
  final pulumi.Input<String>? clientSecretSettingName;
  /// Specifies a list of OAuth 2.0 scopes that will be requested as part of Google Sign-In authentication. If not specified, `openid`, `profile`, and `email` are used as default scopes.
  final pulumi.Input<List<String>>? oauthScopes;

  /// Creates a new [LinuxWebAppAuthSettingsGoogle].
  /// [clientId] The OpenID Connect Client ID for the Google web application.
  /// [clientSecret] The client secret associated with the Google web application. Cannot be specified with `client_secret_setting_name`.
  /// [clientSecretSettingName] The app setting name that contains the `client_secret` value used for Google login. Cannot be specified with `client_secret`.
  /// [oauthScopes] Specifies a list of OAuth 2.0 scopes that will be requested as part of Google Sign-In authentication. If not specified, `openid`, `profile`, and `email` are used as default scopes.
  LinuxWebAppAuthSettingsGoogle({
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

  factory LinuxWebAppAuthSettingsGoogle.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppAuthSettingsGoogle(
      clientId: (map['clientId'] as String).input(),
      clientSecret: map['clientSecret'] == null ? null : (map['clientSecret'] as String).input(),
      clientSecretSettingName: map['clientSecretSettingName'] == null ? null : (map['clientSecretSettingName'] as String).input(),
      oauthScopes: map['oauthScopes'] == null ? null : ((map['oauthScopes'] as List).cast<String>()).input(),
    );
  }
}

