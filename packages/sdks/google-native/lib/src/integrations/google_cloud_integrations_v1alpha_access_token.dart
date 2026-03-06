// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The access token represents the authorization of a specific application to access specific parts of a user’s data.
class GoogleCloudIntegrationsV1alphaAccessToken {
  /// The access token encapsulating the security identity of a process or thread.
  final pulumi.Input<String>? accessToken;
  /// The approximate time until the access token retrieved is valid.
  final pulumi.Input<String> accessTokenExpireTime;
  /// If the access token will expire, use the refresh token to obtain another access token.
  final pulumi.Input<String>? refreshToken;
  /// The approximate time until the refresh token retrieved is valid.
  final pulumi.Input<String>? refreshTokenExpireTime;
  /// Only support "bearer" token in v1 as bearer token is the predominant type used with OAuth 2.0.
  final pulumi.Input<String>? tokenType;

  /// Creates a new [GoogleCloudIntegrationsV1alphaAccessToken].
  /// [accessToken] The access token encapsulating the security identity of a process or thread.
  /// [accessTokenExpireTime] The approximate time until the access token retrieved is valid.
  /// [refreshToken] If the access token will expire, use the refresh token to obtain another access token.
  /// [refreshTokenExpireTime] The approximate time until the refresh token retrieved is valid.
  /// [tokenType] Only support "bearer" token in v1 as bearer token is the predominant type used with OAuth 2.0.
  const GoogleCloudIntegrationsV1alphaAccessToken({
    this.accessToken,
    required this.accessTokenExpireTime,
    this.refreshToken,
    this.refreshTokenExpireTime,
    this.tokenType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'accessTokenExpireTime': accessTokenExpireTime,
      'refreshToken': ?refreshToken,
      'refreshTokenExpireTime': ?refreshTokenExpireTime,
      'tokenType': ?tokenType,
    };
  }

  factory GoogleCloudIntegrationsV1alphaAccessToken.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaAccessToken(
      accessToken: (() { final guardedValue = map['accessToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accessTokenExpireTime: pulumi.Input.fromValue(map['accessTokenExpireTime'] as String),
      refreshToken: (() { final guardedValue = map['refreshToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      refreshTokenExpireTime: (() { final guardedValue = map['refreshTokenExpireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenType: (() { final guardedValue = map['tokenType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

