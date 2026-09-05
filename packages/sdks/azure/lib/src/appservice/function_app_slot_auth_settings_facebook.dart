// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionAppSlotAuthSettingsFacebook {
  /// The App ID of the Facebook app used for login
  final pulumi.Input<String> appId;
  /// The App Secret of the Facebook app used for Facebook login.
  final pulumi.Input<String> appSecret;
  /// The OAuth 2.0 scopes that will be requested as part of Facebook login authentication. &lt;https://developers.facebook.com/docs/facebook-login&gt;
  final pulumi.Input<List<String>?>? oauthScopes;

  /// Creates a new [FunctionAppSlotAuthSettingsFacebook].
  /// [appId] The App ID of the Facebook app used for login
  /// [appSecret] The App Secret of the Facebook app used for Facebook login.
  /// [oauthScopes] The OAuth 2.0 scopes that will be requested as part of Facebook login authentication. &lt;https://developers.facebook.com/docs/facebook-login&gt;
  const FunctionAppSlotAuthSettingsFacebook({
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
      appId: pulumi.Input.fromValue(map['appId'] as String),
      appSecret: pulumi.Input.fromValue(map['appSecret'] as String),
      oauthScopes: (() { final guardedValue = map['oauthScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
