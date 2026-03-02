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
  CloudSqlCredential({
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
      password: map['password'] == null ? null : (map['password']! as String).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

