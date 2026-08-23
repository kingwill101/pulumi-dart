// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsFunctionAppAuthSettingsFacebook {
  /// The App ID of the Facebook app used for login.
  final pulumi.Input<String> appId;
  /// The App Secret of the Facebook app used for Facebook login. Cannot be specified with `appSecretSettingName`.
  final pulumi.Input<String>? appSecret;
  /// The app setting name that contains the `appSecret` value used for Facebook login. Cannot be specified with `appSecret`.
  final pulumi.Input<String>? appSecretSettingName;
  /// Specifies a list of OAuth 2.0 scopes to be requested as part of Facebook login authentication.
  final pulumi.Input<List<String>>? oauthScopes;

  /// Creates a new [WindowsFunctionAppAuthSettingsFacebook].
  /// [appId] The App ID of the Facebook app used for login.
  /// [appSecret] The App Secret of the Facebook app used for Facebook login. Cannot be specified with `appSecretSettingName`.
  /// [appSecretSettingName] The app setting name that contains the `appSecret` value used for Facebook login. Cannot be specified with `appSecret`.
  /// [oauthScopes] Specifies a list of OAuth 2.0 scopes to be requested as part of Facebook login authentication.
  const WindowsFunctionAppAuthSettingsFacebook({
    required this.appId,
    this.appSecret,
    this.appSecretSettingName,
    this.oauthScopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'appSecret': ?appSecret,
      'appSecretSettingName': ?appSecretSettingName,
      'oauthScopes': ?oauthScopes,
    };
  }

  factory WindowsFunctionAppAuthSettingsFacebook.fromMap(Map<String, dynamic> map) {
    return WindowsFunctionAppAuthSettingsFacebook(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      appSecret: (() { final guardedValue = map['appSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appSecretSettingName: (() { final guardedValue = map['appSecretSettingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauthScopes: (() { final guardedValue = map['oauthScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
