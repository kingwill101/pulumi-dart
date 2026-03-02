// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsWebAppSlotAuthSettingsFacebook {
  /// The App ID of the Facebook app used for login.
  final pulumi.Input<String> appId;
  /// The App Secret of the Facebook app used for Facebook login. Cannot be specified with `app_secret_setting_name`.
  final pulumi.Input<String>? appSecret;
  /// The app setting name that contains the `app_secret` value used for Facebook login. Cannot be specified with `app_secret`.
  final pulumi.Input<String>? appSecretSettingName;
  /// Specifies a list of OAuth 2.0 scopes to be requested as part of Facebook login authentication.
  final pulumi.Input<List<String>>? oauthScopes;

  /// Creates a new [WindowsWebAppSlotAuthSettingsFacebook].
  /// [appId] The App ID of the Facebook app used for login.
  /// [appSecret] The App Secret of the Facebook app used for Facebook login. Cannot be specified with `app_secret_setting_name`.
  /// [appSecretSettingName] The app setting name that contains the `app_secret` value used for Facebook login. Cannot be specified with `app_secret`.
  /// [oauthScopes] Specifies a list of OAuth 2.0 scopes to be requested as part of Facebook login authentication.
  WindowsWebAppSlotAuthSettingsFacebook({
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

  factory WindowsWebAppSlotAuthSettingsFacebook.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSlotAuthSettingsFacebook(
      appId: (map['appId'] as String).input(),
      appSecret: map['appSecret'] == null ? null : (map['appSecret'] as String).input(),
      appSecretSettingName: map['appSecretSettingName'] == null ? null : (map['appSecretSettingName'] as String).input(),
      oauthScopes: map['oauthScopes'] == null ? null : ((map['oauthScopes'] as List).cast<String>()).input(),
    );
  }
}

