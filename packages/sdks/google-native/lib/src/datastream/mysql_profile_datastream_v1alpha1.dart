// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_ssl_config_datastream_v1alpha1.dart';

/// MySQL database profile.
class MysqlProfileDatastreamV1alpha1 {
  /// Hostname for the MySQL connection.
  final pulumi.Input<String> hostname;
  /// Input only. Password for the MySQL connection.
  final pulumi.Input<String> password;
  /// Port for the MySQL connection, default value is 3306.
  final pulumi.Input<int>? port;
  /// SSL configuration for the MySQL connection.
  final pulumi.Input<MysqlSslConfigDatastreamV1alpha1>? sslConfig;
  /// Username for the MySQL connection.
  final pulumi.Input<String> username;

  /// Creates a new [MysqlProfileDatastreamV1alpha1].
  /// [hostname] Hostname for the MySQL connection.
  /// [password] Input only. Password for the MySQL connection.
  /// [port] Port for the MySQL connection, default value is 3306.
  /// [sslConfig] SSL configuration for the MySQL connection.
  /// [username] Username for the MySQL connection.
  MysqlProfileDatastreamV1alpha1({
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
      'sslConfig': ?pulumi.Input.mapOptionalInputValue<MysqlSslConfigDatastreamV1alpha1, Map<String, dynamic>>(sslConfig, (value) => value.toMap()),
      'username': username,
    };
  }

  factory MysqlProfileDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return MysqlProfileDatastreamV1alpha1(
      hostname: (map['hostname'] as String).input(),
      password: (map['password'] as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      sslConfig: map['sslConfig'] == null ? null : (MysqlSslConfigDatastreamV1alpha1.fromMap((map['sslConfig']! as Map).cast<String, dynamic>())).input(),
      username: (map['username'] as String).input(),
    );
  }
}

