// ignore_for_file: unused_element, unnecessary_cast


class FunctionAppSlotAuthSettingsFacebook {
  /// The App ID of the Facebook app used for login
  final String appId;
  /// The App Secret of the Facebook app used for Facebook login.
  final String appSecret;
  /// The OAuth 2.0 scopes that will be requested as part of Facebook login authentication. <https://developers.facebook.com/docs/facebook-login>
  final List<String>? oauthScopes;

  /// Creates a new [FunctionAppSlotAuthSettingsFacebook].
  /// [appId] The App ID of the Facebook app used for login
  /// [appSecret] The App Secret of the Facebook app used for Facebook login.
  /// [oauthScopes] The OAuth 2.0 scopes that will be requested as part of Facebook login authentication. <https://developers.facebook.com/docs/facebook-login>
  FunctionAppSlotAuthSettingsFacebook({
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

  factory FunctionAppSlotAuthSettingsFacebook.fromMap(Map<String, dynamic> map) {
    return FunctionAppSlotAuthSettingsFacebook(
      appId: map['appId'] as String,
      appSecret: map['appSecret'] as String,
      oauthScopes: map['oauthScopes'] == null ? null : (map['oauthScopes'] as List).cast<String>(),
    );
  }
}

