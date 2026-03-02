// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionAppAuthSettingsFacebook {
  /// The App ID of the Facebook app used for login
  final pulumi.Input<String> appId;
  /// The App Secret of the Facebook app used for Facebook login.
  final pulumi.Input<String> appSecret;
  /// The OAuth 2.0 scopes that will be requested as part of Facebook login authentication. <https://developers.facebook.com/docs/facebook-login>
  final pulumi.Input<List<String>>? oauthScopes;

  /// Creates a new [FunctionAppAuthSettingsFacebook].
  /// [appId] The App ID of the Facebook app used for login
  /// [appSecret] The App Secret of the Facebook app used for Facebook login.
  /// [oauthScopes] The OAuth 2.0 scopes that will be requested as part of Facebook login authentication. <https://developers.facebook.com/docs/facebook-login>
  FunctionAppAuthSettingsFacebook({
    required this.appId,
    required this.appSecret,
    this.oauthScopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'appSecret': appSecret,
      'oauthScopes': ?oauthScopes,
    };
  }

  factory FunctionAppAuthSettingsFacebook.fromMap(Map<String, dynamic> map) {
    return FunctionAppAuthSettingsFacebook(
      appId: (map['appId'] as String).input(),
      appSecret: (map['appSecret'] as String).input(),
      oauthScopes: map['oauthScopes'] == null ? null : ((map['oauthScopes'] as List).cast<String>()).input(),
    );
  }
}

