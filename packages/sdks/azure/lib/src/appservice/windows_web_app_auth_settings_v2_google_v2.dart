// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsWebAppAuthSettingsV2GoogleV2 {
  /// Specifies a list of Allowed Audiences that should be requested as part of Google Sign-In authentication.
  final pulumi.Input<List<String>>? allowedAudiences;
  /// The OpenID Connect Client ID for the Google web application.
  final pulumi.Input<String> clientId;
  /// The app setting name that contains the `clientSecret` value used for Google Login.
  ///
  /// &gt; **Note:** A setting with this name must exist in `appSettings` to function correctly.
  final pulumi.Input<String> clientSecretSettingName;
  /// The list of OAuth 2.0 scopes that should be requested as part of Google Sign-In authentication.
  final pulumi.Input<List<String>>? loginScopes;

  /// Creates a new [WindowsWebAppAuthSettingsV2GoogleV2].
  /// [allowedAudiences] Specifies a list of Allowed Audiences that should be requested as part of Google Sign-In authentication.
  /// [clientId] The OpenID Connect Client ID for the Google web application.
  /// [clientSecretSettingName] The app setting name that contains the `clientSecret` value used for Google Login.
  /// [loginScopes] The list of OAuth 2.0 scopes that should be requested as part of Google Sign-In authentication.
  const WindowsWebAppAuthSettingsV2GoogleV2({
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

  factory WindowsWebAppAuthSettingsV2GoogleV2.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppAuthSettingsV2GoogleV2(
      allowedAudiences: (() { final guardedValue = map['allowedAudiences']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecretSettingName: pulumi.Input.fromValue(map['clientSecretSettingName'] as String),
      loginScopes: (() { final guardedValue = map['loginScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
