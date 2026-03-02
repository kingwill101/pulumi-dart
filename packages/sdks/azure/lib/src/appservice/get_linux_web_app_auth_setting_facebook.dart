// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLinuxWebAppAuthSettingFacebook {
  /// The App ID of the Facebook app used for login.
  final pulumi.Input<String> appId;
  /// The App Secret of the Facebook app used for Facebook login.
  final pulumi.Input<String> appSecret;
  /// The app setting name that contains the `app_secret` value used for Facebook login.
  final pulumi.Input<String> appSecretSettingName;
  /// A list of OAuth 2.0 scopes requested as part of Microsoft Account authentication.
  final pulumi.Input<List<String>> oauthScopes;

  /// Creates a new [GetLinuxWebAppAuthSettingFacebook].
  /// [appId] The App ID of the Facebook app used for login.
  /// [appSecret] The App Secret of the Facebook app used for Facebook login.
  /// [appSecretSettingName] The app setting name that contains the `app_secret` value used for Facebook login.
  /// [oauthScopes] A list of OAuth 2.0 scopes requested as part of Microsoft Account authentication.
  GetLinuxWebAppAuthSettingFacebook({
    required this.appId,
    required this.appSecret,
    required this.appSecretSettingName,
    required this.oauthScopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'appSecret': appSecret,
      'appSecretSettingName': appSecretSettingName,
      'oauthScopes': oauthScopes,
    };
  }

  factory GetLinuxWebAppAuthSettingFacebook.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppAuthSettingFacebook(
      appId: (map['appId'] as String).input(),
      appSecret: (map['appSecret'] as String).input(),
      appSecretSettingName: (map['appSecretSettingName'] as String).input(),
      oauthScopes: ((map['oauthScopes'] as List).cast<String>()).input(),
    );
  }
}

