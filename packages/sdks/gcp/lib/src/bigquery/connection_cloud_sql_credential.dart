// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionCloudSqlCredential {
  /// Password for database.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> password;

  /// Username for database.
  final pulumi.Input<String> username;

  /// Creates a new [ConnectionCloudSqlCredential].
  /// [password] Password for database.
  /// [username] Username for database.
  ConnectionCloudSqlCredential({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'password': password, 'username': username};
  }

  factory ConnectionCloudSqlCredential.fromMap(Map<String, dynamic> map) {
    return ConnectionCloudSqlCredential(
      password: pulumi.Input.fromValue(map['password'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
