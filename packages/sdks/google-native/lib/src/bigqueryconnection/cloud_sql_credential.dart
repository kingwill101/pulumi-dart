// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Credential info for the Cloud SQL.
class CloudSqlCredential {
  /// The password for the credential.
  final pulumi.Input<String>? password;
  /// The username for the credential.
  final pulumi.Input<String>? username;

  /// Creates a new [CloudSqlCredential].
  /// [password] The password for the credential.
  /// [username] The username for the credential.
  const CloudSqlCredential({
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'username': ?username,
    };
  }

  factory CloudSqlCredential.fromMap(Map<String, dynamic> map) {
    return CloudSqlCredential(
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
