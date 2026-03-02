// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxWebAppSlotAuthSettingsV2MicrosoftV2 {
  /// Specifies a list of Allowed Audiences that will be requested as part of Microsoft Sign-In authentication.
  final pulumi.Input<List<String>>? allowedAudiences;
  /// The OAuth 2.0 client ID that was created for the app used for authentication.
  final pulumi.Input<String> clientId;
  /// The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication.
  ///
  /// !> **Note:** A setting with this name must exist in `app_settings` to function correctly.
  final pulumi.Input<String> clientSecretSettingName;
  /// The list of Login scopes that should be requested as part of Microsoft Account authentication.
  final pulumi.Input<List<String>>? loginScopes;

  /// Creates a new [LinuxWebAppSlotAuthSettingsV2MicrosoftV2].
  /// [allowedAudiences] Specifies a list of Allowed Audiences that will be requested as part of Microsoft Sign-In authentication.
  /// [clientId] The OAuth 2.0 client ID that was created for the app used for authentication.
  /// [clientSecretSettingName] The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication.
  /// [loginScopes] The list of Login scopes that should be requested as part of Microsoft Account authentication.
  LinuxWebAppSlotAuthSettingsV2MicrosoftV2({
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

  factory LinuxWebAppSlotAuthSettingsV2MicrosoftV2.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSlotAuthSettingsV2MicrosoftV2(
      allowedAudiences: map['allowedAudiences'] == null ? null : ((map['allowedAudiences']! as List).cast<String>()).input(),
      clientId: (map['clientId'] as String).input(),
      clientSecretSettingName: (map['clientSecretSettingName'] as String).input(),
      loginScopes: map['loginScopes'] == null ? null : ((map['loginScopes']! as List).cast<String>()).input(),
    );
  }
}

