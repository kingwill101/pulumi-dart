// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionHttpConfigBasicAuthentication {
  /// The password SecretManager secret version to authenticate as.
  final pulumi.Input<String?>? passwordSecretVersion;
  /// The username to authenticate as.
  final pulumi.Input<String> username;

  /// Creates a new [ConnectionHttpConfigBasicAuthentication].
  /// [passwordSecretVersion] The password SecretManager secret version to authenticate as.
  /// [username] The username to authenticate as.
  const ConnectionHttpConfigBasicAuthentication({
    this.passwordSecretVersion,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passwordSecretVersion': ?passwordSecretVersion,
      'username': username,
    };
  }

  factory ConnectionHttpConfigBasicAuthentication.fromMap(Map<String, dynamic> map) {
    return ConnectionHttpConfigBasicAuthentication(
      passwordSecretVersion: (() { final guardedValue = map['passwordSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
