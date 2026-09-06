// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The environment authentication details
class AccessTokenAuthentication {
  /// The access token that will be used while authenticating with the onboarded environment
  final pulumi.Input<String?>? accessToken;
  /// The authentication type
  /// Expected value is 'AccessToken'.
  final pulumi.Input<String> authenticationType;
  /// The user name that will be used while authenticating with the onboarded environment
  final pulumi.Input<String?>? username;

  /// Creates a new [AccessTokenAuthentication].
  /// [accessToken] The access token that will be used while authenticating with the onboarded environment
  /// [authenticationType] The authentication type
  /// [username] The user name that will be used while authenticating with the onboarded environment
  const AccessTokenAuthentication({
    this.accessToken,
    required this.authenticationType,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'authenticationType': authenticationType,
      'username': ?username,
    };
  }

  factory AccessTokenAuthentication.fromMap(Map<String, dynamic> map) {
    return AccessTokenAuthentication(
      accessToken: (() { final guardedValue = map['accessToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authenticationType: pulumi.Input.fromValue(map['authenticationType'] as String),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
