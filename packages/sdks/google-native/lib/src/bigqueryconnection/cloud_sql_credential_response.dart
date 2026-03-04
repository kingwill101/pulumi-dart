// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Credential info for the Cloud SQL.
class CloudSqlCredentialResponse {
  /// The password for the credential.
  final pulumi.Input<String> password;

  /// The username for the credential.
  final pulumi.Input<String> username;

  /// Creates a new [CloudSqlCredentialResponse].
  /// [password] The password for the credential.
  /// [username] The username for the credential.
  CloudSqlCredentialResponse({required this.password, required this.username});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'password': password, 'username': username};
  }

  factory CloudSqlCredentialResponse.fromMap(Map<String, dynamic> map) {
    return CloudSqlCredentialResponse(
      password: pulumi.Input.fromValue(map['password'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
