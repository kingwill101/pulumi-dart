// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWindowsWebAppAuthSettingFacebook {
  /// The App ID of the Facebook app used for login.
  final pulumi.Input<String> appId;
  /// The App Secret of the Facebook app used for Facebook login.
  final pulumi.Input<String> appSecret;
  /// The app setting name that contains the `appSecret` value used for Facebook login.
  final pulumi.Input<String> appSecretSettingName;
  /// A list of OAuth 2.0 scopes requested as part of Microsoft Account authentication.
  final pulumi.Input<List<String>> oauthScopes;

  /// Creates a new [GetWindowsWebAppAuthSettingFacebook].
  /// [appId] The App ID of the Facebook app used for login.
  /// [appSecret] The App Secret of the Facebook app used for Facebook login.
  /// [appSecretSettingName] The app setting name that contains the `appSecret` value used for Facebook login.
  /// [oauthScopes] A list of OAuth 2.0 scopes requested as part of Microsoft Account authentication.
  const GetWindowsWebAppAuthSettingFacebook({
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

  factory GetWindowsWebAppAuthSettingFacebook.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppAuthSettingFacebook(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      appSecret: pulumi.Input.fromValue(map['appSecret'] as String),
      appSecretSettingName: pulumi.Input.fromValue(map['appSecretSettingName'] as String),
      oauthScopes: pulumi.Input.fromValue((map['oauthScopes'] as List).cast<String>()),
    );
  }
}
