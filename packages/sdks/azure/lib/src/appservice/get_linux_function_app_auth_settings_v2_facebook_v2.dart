// ignore_for_file: unused_element, unnecessary_cast


class GetLinuxFunctionAppAuthSettingsV2FacebookV2 {
  /// The App ID of the Facebook app used for login.
  final String appId;
  /// The app setting name that contains the `app_secret` value used for Facebook login.
  final String appSecretSettingName;
  /// The version of the Facebook API to be used while logging in.
  final String graphApiVersion;
  /// The list of Login scopes that are requested as part of Microsoft Account authentication.
  final List<String> loginScopes;

  /// Creates a new [GetLinuxFunctionAppAuthSettingsV2FacebookV2].
  /// [appId] The App ID of the Facebook app used for login.
  /// [appSecretSettingName] The app setting name that contains the `app_secret` value used for Facebook login.
  /// [graphApiVersion] The version of the Facebook API to be used while logging in.
  /// [loginScopes] The list of Login scopes that are requested as part of Microsoft Account authentication.
  GetLinuxFunctionAppAuthSettingsV2FacebookV2({
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

  factory GetLinuxFunctionAppAuthSettingsV2FacebookV2.fromMap(Map<String, dynamic> map) {
    return GetLinuxFunctionAppAuthSettingsV2FacebookV2(
      appId: map['appId'] as String,
      appSecretSettingName: map['appSecretSettingName'] as String,
      graphApiVersion: map['graphApiVersion'] as String,
      loginScopes: (map['loginScopes'] as List).cast<String>(),
    );
  }
}

