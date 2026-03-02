// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_profile_postgresql_profile_ssl_config.dart';

class ConnectionProfilePostgresqlProfile {
  /// Database for the PostgreSQL connection.
  final pulumi.Input<String> database;
  /// Hostname for the PostgreSQL connection.
  final pulumi.Input<String> hostname;
  /// Password for the PostgreSQL connection.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? password;
  /// Port for the PostgreSQL connection.
  final pulumi.Input<int>? port;
  /// A reference to a Secret Manager resource name storing the user's password.
  final pulumi.Input<String>? secretManagerStoredPassword;
  /// SSL configuration for the PostgreSQL connection.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfilePostgresqlProfileSslConfig>? sslConfig;
  /// Username for the PostgreSQL connection.
  final pulumi.Input<String> username;

  /// Creates a new [ConnectionProfilePostgresqlProfile].
  /// [database] Database for the PostgreSQL connection.
  /// [hostname] Hostname for the PostgreSQL connection.
  /// [password] Password for the PostgreSQL connection.
  /// [port] Port for the PostgreSQL connection.
  /// [secretManagerStoredPassword] A reference to a Secret Manager resource name storing the user's password.
  /// [sslConfig] SSL configuration for the PostgreSQL connection.
  /// [username] Username for the PostgreSQL connection.
  ConnectionProfilePostgresqlProfile({
    required this.database,
    required this.hostname,
    this.password,
    this.port,
    this.secretManagerStoredPassword,
    this.sslConfig,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'hostname': hostname,
      'password': ?password,
      'port': ?port,
      'secretManagerStoredPassword': ?secretManagerStoredPassword,
      'sslConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionProfilePostgresqlProfileSslConfig, Map<String, dynamic>>(sslConfig, (value) => value.toMap()),
      'username': username,
    };
  }

  factory ConnectionProfilePostgresqlProfile.fromMap(Map<String, dynamic> map) {
    return ConnectionProfilePostgresqlProfile(
      database: (map['database'] as String).input(),
      hostname: (map['hostname'] as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      secretManagerStoredPassword: map['secretManagerStoredPassword'] == null ? null : (map['secretManagerStoredPassword']! as String).input(),
      sslConfig: map['sslConfig'] == null ? null : (ConnectionProfilePostgresqlProfileSslConfig.fromMap((map['sslConfig']! as Map).cast<String, dynamic>())).input(),
      username: (map['username'] as String).input(),
    );
  }
}

