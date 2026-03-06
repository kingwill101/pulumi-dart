// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsWebAppSlotAuthSettingsV2MicrosoftV2 {
  /// Specifies a list of Allowed Audiences that will be requested as part of Microsoft Sign-In authentication.
  final pulumi.Input<List<String>>? allowedAudiences;
  /// The OAuth 2.0 client ID that was created for the app used for authentication.
  final pulumi.Input<String> clientId;
  /// The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication.
  ///
  /// !&gt; **Note:** A setting with this name must exist in `app_settings` to function correctly.
  final pulumi.Input<String> clientSecretSettingName;
  /// The list of Login scopes that should be requested as part of Microsoft Account authentication.
  final pulumi.Input<List<String>>? loginScopes;

  /// Creates a new [WindowsWebAppSlotAuthSettingsV2MicrosoftV2].
  /// [allowedAudiences] Specifies a list of Allowed Audiences that will be requested as part of Microsoft Sign-In authentication.
  /// [clientId] The OAuth 2.0 client ID that was created for the app used for authentication.
  /// [clientSecretSettingName] The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication.
  /// [loginScopes] The list of Login scopes that should be requested as part of Microsoft Account authentication.
  const WindowsWebAppSlotAuthSettingsV2MicrosoftV2({
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

  factory WindowsWebAppSlotAuthSettingsV2MicrosoftV2.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSlotAuthSettingsV2MicrosoftV2(
      allowedAudiences: (() { final guardedValue = map['allowedAudiences']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecretSettingName: pulumi.Input.fromValue(map['clientSecretSettingName'] as String),
      loginScopes: (() { final guardedValue = map['loginScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

