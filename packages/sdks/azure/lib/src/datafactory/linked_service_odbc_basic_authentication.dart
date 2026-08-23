// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinkedServiceOdbcBasicAuthentication {
  /// The password associated with the username, which can be used to authenticate to the ODBC endpoint.
  final pulumi.Input<String> password;
  /// The username which can be used to authenticate to the ODBC endpoint.
  final pulumi.Input<String> username;

  /// Creates a new [LinkedServiceOdbcBasicAuthentication].
  /// [password] The password associated with the username, which can be used to authenticate to the ODBC endpoint.
  /// [username] The username which can be used to authenticate to the ODBC endpoint.
  const LinkedServiceOdbcBasicAuthentication({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory LinkedServiceOdbcBasicAuthentication.fromMap(Map<String, dynamic> map) {
    return LinkedServiceOdbcBasicAuthentication(
      password: pulumi.Input.fromValue(map['password'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
