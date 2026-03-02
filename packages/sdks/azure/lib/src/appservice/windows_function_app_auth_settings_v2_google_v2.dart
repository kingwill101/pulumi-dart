// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsFunctionAppAuthSettingsV2GoogleV2 {
  /// Specifies a list of Allowed Audiences that should be requested as part of Google Sign-In authentication.
  final pulumi.Input<List<String>>? allowedAudiences;
  /// The OpenID Connect Client ID for the Google web application.
  final pulumi.Input<String> clientId;
  /// The app setting name that contains the `client_secret` value used for Google Login.
  ///
  /// !> **Note:** A setting with this name must exist in `app_settings` to function correctly.
  final pulumi.Input<String> clientSecretSettingName;
  /// The list of OAuth 2.0 scopes that should be requested as part of Google Sign-In authentication.
  final pulumi.Input<List<String>>? loginScopes;

  /// Creates a new [WindowsFunctionAppAuthSettingsV2GoogleV2].
  /// [allowedAudiences] Specifies a list of Allowed Audiences that should be requested as part of Google Sign-In authentication.
  /// [clientId] The OpenID Connect Client ID for the Google web application.
  /// [clientSecretSettingName] The app setting name that contains the `client_secret` value used for Google Login.
  /// [loginScopes] The list of OAuth 2.0 scopes that should be requested as part of Google Sign-In authentication.
  WindowsFunctionAppAuthSettingsV2GoogleV2({
    this.allowedAudiences,
    required this.clientId,
    required this.clientSecretSettingName,
    this.loginScopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAudiences': ?allowedAudiences,
      'clientId': clientId,
      'clientSecretSettingName': clientSecretSettingName,
      'loginScopes': ?loginScopes,
    };
  }

  factory WindowsFunctionAppAuthSettingsV2GoogleV2.fromMap(Map<String, dynamic> map) {
    return WindowsFunctionAppAuthSettingsV2GoogleV2(
      allowedAudiences: map['allowedAudiences'] == null ? null : ((map['allowedAudiences']! as List).cast<String>()).input(),
      clientId: (map['clientId'] as String).input(),
      clientSecretSettingName: (map['clientSecretSettingName'] as String).input(),
      loginScopes: map['loginScopes'] == null ? null : ((map['loginScopes']! as List).cast<String>()).input(),
    );
  }
}

