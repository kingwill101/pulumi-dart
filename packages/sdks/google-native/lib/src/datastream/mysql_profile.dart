// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_ssl_config.dart';

/// MySQL database profile.
class MysqlProfile {
  /// Hostname for the MySQL connection.
  final pulumi.Input<String> hostname;
  /// Input only. Password for the MySQL connection.
  final pulumi.Input<String> password;
  /// Port for the MySQL connection, default value is 3306.
  final pulumi.Input<int>? port;
  /// SSL configuration for the MySQL connection.
  final pulumi.Input<MysqlSslConfig>? sslConfig;
  /// Username for the MySQL connection.
  final pulumi.Input<String> username;

  /// Creates a new [MysqlProfile].
  /// [hostname] Hostname for the MySQL connection.
  /// [password] Input only. Password for the MySQL connection.
  /// [port] Port for the MySQL connection, default value is 3306.
  /// [sslConfig] SSL configuration for the MySQL connection.
  /// [username] Username for the MySQL connection.
  MysqlProfile({
    required this.hostname,
    required this.password,
    this.port,
    this.sslConfig,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': hostname,
      'password': password,
      'port': ?port,
      'sslConfig': ?pulumi.Input.mapOptionalInputValue<MysqlSslConfig, Map<String, dynamic>>(sslConfig, (value) => value.toMap()),
      'username': username,
    };
  }

  factory MysqlProfile.fromMap(Map<String, dynamic> map) {
    return MysqlProfile(
      hostname: (map['hostname'] as String).input(),
      password: (map['password'] as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      sslConfig: map['sslConfig'] == null ? null : (MysqlSslConfig.fromMap((map['sslConfig']! as Map).cast<String, dynamic>())).input(),
      username: (map['username'] as String).input(),
    );
  }
}

