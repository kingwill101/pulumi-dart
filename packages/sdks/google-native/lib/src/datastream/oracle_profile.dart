// ignore_for_file: unused_element, unnecessary_cast

import 'oracle_ssl_config.dart';

/// Oracle database profile.
class OracleProfile {
  /// Connection string attributes
  final Map<String, String>? connectionAttributes;
  /// Database for the Oracle connection.
  final String databaseService;
  /// Hostname for the Oracle connection.
  final String hostname;
  /// Optional. SSL configuration for the Oracle connection.
  final OracleSslConfig? oracleSslConfig;
  /// Password for the Oracle connection.
  final String password;
  /// Port for the Oracle connection, default value is 1521.
  final int? port;
  /// Username for the Oracle connection.
  final String username;

  /// Creates a new [OracleProfile].
  /// [connectionAttributes] Connection string attributes
  /// [databaseService] Database for the Oracle connection.
  /// [hostname] Hostname for the Oracle connection.
  /// [oracleSslConfig] Optional. SSL configuration for the Oracle connection.
  /// [password] Password for the Oracle connection.
  /// [port] Port for the Oracle connection, default value is 1521.
  /// [username] Username for the Oracle connection.
  OracleProfile({
    this.connectionAttributes,
    required this.databaseService,
    required this.hostname,
    this.oracleSslConfig,
    required this.password,
    this.port,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionAttributes': ?connectionAttributes,
      'databaseService': databaseService,
      'hostname': hostname,
      'oracleSslConfig': ?oracleSslConfig == null ? null : oracleSslConfig!.toMap(),
      'password': password,
      'port': ?port,
      'username': username,
    };
  }

  factory OracleProfile.fromMap(Map<String, dynamic> map) {
    return OracleProfile(
      connectionAttributes: map['connectionAttributes'] == null ? null : (map['connectionAttributes'] as Map).cast<String, String>(),
      databaseService: map['databaseService'] as String,
      hostname: map['hostname'] as String,
      oracleSslConfig: map['oracleSslConfig'] == null ? null : OracleSslConfig.fromMap((map['oracleSslConfig'] as Map).cast<String, dynamic>()),
      password: map['password'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      username: map['username'] as String,
    );
  }
}

