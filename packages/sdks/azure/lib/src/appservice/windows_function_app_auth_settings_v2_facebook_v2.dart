// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsFunctionAppAuthSettingsV2FacebookV2 {
  /// The App ID of the Facebook app used for login.
  final pulumi.Input<String> appId;
  /// The app setting name that contains the `appSecret` value used for Facebook Login.
  ///
  /// &gt; **Note:** A setting with this name must exist in `appSettings` to function correctly.
  final pulumi.Input<String> appSecretSettingName;
  /// The version of the Facebook API to be used while logging in.
  final pulumi.Input<String?>? graphApiVersion;
  /// The list of scopes that should be requested as part of Facebook Login authentication.
  final pulumi.Input<List<String>?>? loginScopes;

  /// Creates a new [WindowsFunctionAppAuthSettingsV2FacebookV2].
  /// [appId] The App ID of the Facebook app used for login.
  /// [appSecretSettingName] The app setting name that contains the `appSecret` value used for Facebook Login.
  /// [graphApiVersion] The version of the Facebook API to be used while logging in.
  /// [loginScopes] The list of scopes that should be requested as part of Facebook Login authentication.
  const WindowsFunctionAppAuthSettingsV2FacebookV2({
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

  factory WindowsFunctionAppAuthSettingsV2FacebookV2.fromMap(Map<String, dynamic> map) {
    return WindowsFunctionAppAuthSettingsV2FacebookV2(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      appSecretSettingName: pulumi.Input.fromValue(map['appSecretSettingName'] as String),
      graphApiVersion: (() { final guardedValue = map['graphApiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loginScopes: (() { final guardedValue = map['loginScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
