// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxFunctionAppAuthSettingsV2FacebookV2 {
  /// The App ID of the Facebook app used for login.
  final pulumi.Input<String> appId;
  /// The app setting name that contains the `app_secret` value used for Facebook Login.
  ///
  /// !> **Note:** A setting with this name must exist in `app_settings` to function correctly.
  final pulumi.Input<String> appSecretSettingName;
  /// The version of the Facebook API to be used while logging in.
  final pulumi.Input<String>? graphApiVersion;
  /// The list of scopes that should be requested as part of Facebook Login authentication.
  final pulumi.Input<List<String>>? loginScopes;

  /// Creates a new [LinuxFunctionAppAuthSettingsV2FacebookV2].
  /// [appId] The App ID of the Facebook app used for login.
  /// [appSecretSettingName] The app setting name that contains the `app_secret` value used for Facebook Login.
  /// [graphApiVersion] The version of the Facebook API to be used while logging in.
  /// [loginScopes] The list of scopes that should be requested as part of Facebook Login authentication.
  LinuxFunctionAppAuthSettingsV2FacebookV2({
    required this.appId,
    required this.appSecretSettingName,
    this.graphApiVersion,
    this.loginScopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'appSecretSettingName': appSecretSettingName,
      'graphApiVersion': ?graphApiVersion,
      'loginScopes': ?loginScopes,
    };
  }

  factory LinuxFunctionAppAuthSettingsV2FacebookV2.fromMap(Map<String, dynamic> map) {
    return LinuxFunctionAppAuthSettingsV2FacebookV2(
      appId: (map['appId'] as String).input(),
      appSecretSettingName: (map['appSecretSettingName'] as String).input(),
      graphApiVersion: map['graphApiVersion'] == null ? null : (map['graphApiVersion'] as String).input(),
      loginScopes: map['loginScopes'] == null ? null : ((map['loginScopes'] as List).cast<String>()).input(),
    );
  }
}

