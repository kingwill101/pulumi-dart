// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_ssl_config_response.dart';

/// MySQL database profile.
class MysqlProfileResponse {
  /// Hostname for the MySQL connection.
  final pulumi.Input<String> hostname;

  /// Input only. Password for the MySQL connection.
  final pulumi.Input<String> password;

  /// Port for the MySQL connection, default value is 3306.
  final pulumi.Input<int> port;

  /// SSL configuration for the MySQL connection.
  final pulumi.Input<MysqlSslConfigResponse> sslConfig;

  /// Username for the MySQL connection.
  final pulumi.Input<String> username;

  /// Creates a new [MysqlProfileResponse].
  /// [hostname] Hostname for the MySQL connection.
  /// [password] Input only. Password for the MySQL connection.
  /// [port] Port for the MySQL connection, default value is 3306.
  /// [sslConfig] SSL configuration for the MySQL connection.
  /// [username] Username for the MySQL connection.
  MysqlProfileResponse({
    required this.hostname,
    required this.password,
    required this.port,
    required this.sslConfig,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': hostname,
      'password': password,
      'port': port,
      'sslConfig':
          pulumi.Input.mapInputValue<
            MysqlSslConfigResponse,
            Map<String, dynamic>
          >(sslConfig, (value) => value.toMap()),
      'username': username,
    };
  }

  factory MysqlProfileResponse.fromMap(Map<String, dynamic> map) {
    return MysqlProfileResponse(
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      sslConfig: pulumi.Input.fromValue(
        MysqlSslConfigResponse.fromMap(
          (map['sslConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
