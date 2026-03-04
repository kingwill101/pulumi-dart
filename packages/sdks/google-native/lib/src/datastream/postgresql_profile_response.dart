// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PostgreSQL database profile.
class PostgresqlProfileResponse {
  /// Database for the PostgreSQL connection.
  final pulumi.Input<String> database;

  /// Hostname for the PostgreSQL connection.
  final pulumi.Input<String> hostname;

  /// Password for the PostgreSQL connection.
  final pulumi.Input<String> password;

  /// Port for the PostgreSQL connection, default value is 5432.
  final pulumi.Input<int> port;

  /// Username for the PostgreSQL connection.
  final pulumi.Input<String> username;

  /// Creates a new [PostgresqlProfileResponse].
  /// [database] Database for the PostgreSQL connection.
  /// [hostname] Hostname for the PostgreSQL connection.
  /// [password] Password for the PostgreSQL connection.
  /// [port] Port for the PostgreSQL connection, default value is 5432.
  /// [username] Username for the PostgreSQL connection.
  PostgresqlProfileResponse({
    required this.database,
    required this.hostname,
    required this.password,
    required this.port,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'hostname': hostname,
      'password': password,
      'port': port,
      'username': username,
    };
  }

  factory PostgresqlProfileResponse.fromMap(Map<String, dynamic> map) {
    return PostgresqlProfileResponse(
      database: pulumi.Input.fromValue(map['database'] as String),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
