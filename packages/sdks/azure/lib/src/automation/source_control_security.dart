// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SourceControlSecurity {
  /// The refresh token of specified rpeo.
  final pulumi.Input<String>? refreshToken;
  /// The access token of specified repo.
  final pulumi.Input<String> token;
  /// Specify the token type, possible values are `PersonalAccessToken` and `Oauth`.
  final pulumi.Input<String> tokenType;

  /// Creates a new [SourceControlSecurity].
  /// [refreshToken] The refresh token of specified rpeo.
  /// [token] The access token of specified repo.
  /// [tokenType] Specify the token type, possible values are `PersonalAccessToken` and `Oauth`.
  SourceControlSecurity({
    this.refreshToken,
    required this.token,
    required this.tokenType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'refreshToken': ?refreshToken,
      'token': token,
      'tokenType': tokenType,
    };
  }

  factory SourceControlSecurity.fromMap(Map<String, dynamic> map) {
    return SourceControlSecurity(
      refreshToken: (() { final guardedValue = map['refreshToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      token: pulumi.Input.fromValue(map['token'] as String),
      tokenType: pulumi.Input.fromValue(map['tokenType'] as String),
    );
  }
}

