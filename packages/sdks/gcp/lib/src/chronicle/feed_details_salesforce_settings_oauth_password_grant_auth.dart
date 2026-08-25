// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsSalesforceSettingsOauthPasswordGrantAuth {
  /// Client ID.
  final pulumi.Input<String?>? clientId;
  /// Client secret.
  final pulumi.Input<String?>? clientSecret;
  /// Password.
  final pulumi.Input<String?>? password;
  /// Token endpoint to get the OAuth token from.
  final pulumi.Input<String?>? tokenEndpoint;
  /// Username.
  final pulumi.Input<String?>? user;

  /// Creates a new [FeedDetailsSalesforceSettingsOauthPasswordGrantAuth].
  /// [clientId] Client ID.
  /// [clientSecret] Client secret.
  /// [password] Password.
  /// [tokenEndpoint] Token endpoint to get the OAuth token from.
  /// [user] Username.
  const FeedDetailsSalesforceSettingsOauthPasswordGrantAuth({
    this.clientId,
    this.clientSecret,
    this.password,
    this.tokenEndpoint,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'password': ?password,
      'tokenEndpoint': ?tokenEndpoint,
      'user': ?user,
    };
  }

  factory FeedDetailsSalesforceSettingsOauthPasswordGrantAuth.fromMap(Map<String, dynamic> map) {
    return FeedDetailsSalesforceSettingsOauthPasswordGrantAuth(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenEndpoint: (() { final guardedValue = map['tokenEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
