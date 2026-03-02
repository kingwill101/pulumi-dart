// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oracle_ssl_config_response.dart';

/// Oracle database profile.
class OracleProfileResponse {
  /// Connection string attributes
  final pulumi.Input<Map<String, String>> connectionAttributes;
  /// Database for the Oracle connection.
  final pulumi.Input<String> databaseService;
  /// Hostname for the Oracle connection.
  final pulumi.Input<String> hostname;
  /// Optional. SSL configuration for the Oracle connection.
  final pulumi.Input<OracleSslConfigResponse> oracleSslConfig;
  /// Password for the Oracle connection.
  final pulumi.Input<String> password;
  /// Port for the Oracle connection, default value is 1521.
  final pulumi.Input<int> port;
  /// Username for the Oracle connection.
  final pulumi.Input<String> username;

  /// Creates a new [OracleProfileResponse].
  /// [connectionAttributes] Connection string attributes
  /// [databaseService] Database for the Oracle connection.
  /// [hostname] Hostname for the Oracle connection.
  /// [oracleSslConfig] Optional. SSL configuration for the Oracle connection.
  /// [password] Password for the Oracle connection.
  /// [port] Port for the Oracle connection, default value is 1521.
  /// [username] Username for the Oracle connection.
  OracleProfileResponse({
    required this.connectionAttributes,
    required this.databaseService,
    required this.hostname,
    required this.oracleSslConfig,
    required this.password,
    required this.port,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionAttributes': connectionAttributes,
      'databaseService': databaseService,
      'hostname': hostname,
      'oracleSslConfig': pulumi.Input.mapInputValue<OracleSslConfigResponse, Map<String, dynamic>>(oracleSslConfig, (value) => value.toMap()),
      'password': password,
      'port': port,
      'username': username,
    };
  }

  factory OracleProfileResponse.fromMap(Map<String, dynamic> map) {
    return OracleProfileResponse(
      connectionAttributes: ((map['connectionAttributes'] as Map).cast<String, String>()).input(),
      databaseService: (map['databaseService'] as String).input(),
      hostname: (map['hostname'] as String).input(),
      oracleSslConfig: (OracleSslConfigResponse.fromMap((map['oracleSslConfig'] as Map).cast<String, dynamic>())).input(),
      password: (map['password'] as String).input(),
      port: (map['port'] as int).input(),
      username: (map['username'] as String).input(),
    );
  }
}

