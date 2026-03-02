// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionProfileSqlServerProfile {
  /// Database for the SQL Server connection.
  final pulumi.Input<String> database;
  /// Hostname for the SQL Server connection.
  final pulumi.Input<String> hostname;
  /// Password for the SQL Server connection.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? password;
  /// Port for the SQL Server connection.
  final pulumi.Input<int>? port;
  /// A reference to a Secret Manager resource name storing the user's password.
  final pulumi.Input<String>? secretManagerStoredPassword;
  /// Username for the SQL Server connection.
  final pulumi.Input<String> username;

  /// Creates a new [ConnectionProfileSqlServerProfile].
  /// [database] Database for the SQL Server connection.
  /// [hostname] Hostname for the SQL Server connection.
  /// [password] Password for the SQL Server connection.
  /// [port] Port for the SQL Server connection.
  /// [secretManagerStoredPassword] A reference to a Secret Manager resource name storing the user's password.
  /// [username] Username for the SQL Server connection.
  ConnectionProfileSqlServerProfile({
    required this.database,
    required this.hostname,
    this.password,
    this.port,
    this.secretManagerStoredPassword,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'hostname': hostname,
      'password': ?password,
      'port': ?port,
      'secretManagerStoredPassword': ?secretManagerStoredPassword,
      'username': username,
    };
  }

  factory ConnectionProfileSqlServerProfile.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileSqlServerProfile(
      database: (map['database'] as String).input(),
      hostname: (map['hostname'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      secretManagerStoredPassword: map['secretManagerStoredPassword'] == null ? null : (map['secretManagerStoredPassword'] as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

