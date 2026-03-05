// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLinuxWebAppAuthSettingsV2FacebookV2 {
  /// The App ID of the Facebook app used for login.
  final pulumi.Input<String> appId;
  /// The app setting name that contains the `app_secret` value used for Facebook login.
  final pulumi.Input<String> appSecretSettingName;
  /// The version of the Facebook API to be used while logging in.
  final pulumi.Input<String> graphApiVersion;
  /// The list of Login scopes that are requested as part of Microsoft Account authentication.
  final pulumi.Input<List<String>> loginScopes;

  /// Creates a new [GetLinuxWebAppAuthSettingsV2FacebookV2].
  /// [appId] The App ID of the Facebook app used for login.
  /// [appSecretSettingName] The app setting name that contains the `app_secret` value used for Facebook login.
  /// [graphApiVersion] The version of the Facebook API to be used while logging in.
  /// [loginScopes] The list of Login scopes that are requested as part of Microsoft Account authentication.
  GetLinuxWebAppAuthSettingsV2FacebookV2({
    required this.appId,
    required this.appSecretSettingName,
    required this.graphApiVersion,
    required this.loginScopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'appSecretSettingName': appSecretSettingName,
      'graphApiVersion': graphApiVersion,
      'loginScopes': loginScopes,
    };
  }

  factory GetLinuxWebAppAuthSettingsV2FacebookV2.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppAuthSettingsV2FacebookV2(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      appSecretSettingName: pulumi.Input.fromValue(map['appSecretSettingName'] as String),
      graphApiVersion: pulumi.Input.fromValue(map['graphApiVersion'] as String),
      loginScopes: pulumi.Input.fromValue((map['loginScopes'] as List).cast<String>()),
    );
  }
}

