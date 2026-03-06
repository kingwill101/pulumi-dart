// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegistryTaskSourceTriggerAuthentication {
  /// Time in seconds that the token remains valid.
  final pulumi.Input<int>? expireInSeconds;
  /// The refresh token used to refresh the access token.
  final pulumi.Input<String>? refreshToken;
  /// The scope of the access token.
  final pulumi.Input<String>? scope;
  /// The access token used to access the source control provider.
  final pulumi.Input<String> token;
  /// The type of the token. Possible values are `PAT` (personal access token) and `OAuth`.
  final pulumi.Input<String> tokenType;

  /// Creates a new [RegistryTaskSourceTriggerAuthentication].
  /// [expireInSeconds] Time in seconds that the token remains valid.
  /// [refreshToken] The refresh token used to refresh the access token.
  /// [scope] The scope of the access token.
  /// [token] The access token used to access the source control provider.
  /// [tokenType] The type of the token. Possible values are `PAT` (personal access token) and `OAuth`.
  const RegistryTaskSourceTriggerAuthentication({
    this.expireInSeconds,
    this.refreshToken,
    this.scope,
    required this.token,
    required this.tokenType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expireInSeconds': ?expireInSeconds,
      'refreshToken': ?refreshToken,
      'scope': ?scope,
      'token': token,
      'tokenType': tokenType,
    };
  }

  factory RegistryTaskSourceTriggerAuthentication.fromMap(Map<String, dynamic> map) {
    return RegistryTaskSourceTriggerAuthentication(
      expireInSeconds: (() { final guardedValue = map['expireInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      refreshToken: (() { final guardedValue = map['refreshToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      token: pulumi.Input.fromValue(map['token'] as String),
      tokenType: pulumi.Input.fromValue(map['tokenType'] as String),
    );
  }
}

