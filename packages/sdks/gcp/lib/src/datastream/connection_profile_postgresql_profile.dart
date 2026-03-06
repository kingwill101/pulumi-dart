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
  const ConnectionProfilePostgresqlProfile({
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
      database: pulumi.Input.fromValue(map['database'] as String),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      secretManagerStoredPassword: (() { final guardedValue = map['secretManagerStoredPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslConfig: (() { final guardedValue = map['sslConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfilePostgresqlProfileSslConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

