// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLinuxWebAppAuthSettingsV2GoogleV2 {
  /// The list of Allowed Audiences that are be requested as part of Microsoft Sign-In authentication.
  final pulumi.Input<List<String>> allowedAudiences;
  /// The OAuth 2.0 client ID used by the app for authentication.
  final pulumi.Input<String> clientId;
  /// The app setting name containing the OAuth 2.0 client secret used by the app for authentication.
  final pulumi.Input<String> clientSecretSettingName;
  /// The list of Login scopes that are requested as part of Microsoft Account authentication.
  final pulumi.Input<List<String>> loginScopes;

  /// Creates a new [GetLinuxWebAppAuthSettingsV2GoogleV2].
  /// [allowedAudiences] The list of Allowed Audiences that are be requested as part of Microsoft Sign-In authentication.
  /// [clientId] The OAuth 2.0 client ID used by the app for authentication.
  /// [clientSecretSettingName] The app setting name containing the OAuth 2.0 client secret used by the app for authentication.
  /// [loginScopes] The list of Login scopes that are requested as part of Microsoft Account authentication.
  const GetLinuxWebAppAuthSettingsV2GoogleV2({
    required this.allowedAudiences,
    required this.clientId,
    required this.clientSecretSettingName,
    required this.loginScopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAudiences': allowedAudiences,
      'clientId': clientId,
      'clientSecretSettingName': clientSecretSettingName,
      'loginScopes': loginScopes,
    };
  }

  factory GetLinuxWebAppAuthSettingsV2GoogleV2.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppAuthSettingsV2GoogleV2(
      allowedAudiences: pulumi.Input.fromValue((map['allowedAudiences'] as List).cast<String>()),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecretSettingName: pulumi.Input.fromValue(map['clientSecretSettingName'] as String),
      loginScopes: pulumi.Input.fromValue((map['loginScopes'] as List).cast<String>()),
    );
  }
}
