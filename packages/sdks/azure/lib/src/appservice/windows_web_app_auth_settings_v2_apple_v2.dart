// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsWebAppAuthSettingsV2AppleV2 {
  /// The OpenID Connect Client ID for the Apple web application.
  final pulumi.Input<String> clientId;

  /// The app setting name that contains the `client_secret` value used for Apple Login.
  ///
  /// !&gt; **Note:** A setting with this name must exist in `app_settings` to function correctly.
  final pulumi.Input<String> clientSecretSettingName;

  /// A list of Login Scopes provided by this Authentication Provider.
  ///
  /// &gt; **Note:** This is configured on the Authentication Provider side and is Read Only here.
  final pulumi.Input<List<String>>? loginScopes;

  /// Creates a new [WindowsWebAppAuthSettingsV2AppleV2].
  /// [clientId] The OpenID Connect Client ID for the Apple web application.
  /// [clientSecretSettingName] The app setting name that contains the `client_secret` value used for Apple Login.
  /// [loginScopes] A list of Login Scopes provided by this Authentication Provider.
  WindowsWebAppAuthSettingsV2AppleV2({
    required this.clientId,
    required this.clientSecretSettingName,
    this.loginScopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecretSettingName': clientSecretSettingName,
      'loginScopes': ?loginScopes,
    };
  }

  factory WindowsWebAppAuthSettingsV2AppleV2.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppAuthSettingsV2AppleV2(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecretSettingName: pulumi.Input.fromValue(
        map['clientSecretSettingName'] as String,
      ),
      loginScopes: (() {
        final guardedValue = map['loginScopes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
