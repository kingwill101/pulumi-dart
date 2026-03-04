// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_ssl_config_response_datastream_v1alpha1.dart';

/// MySQL database profile.
class MysqlProfileResponseDatastreamV1alpha1 {
  /// Hostname for the MySQL connection.
  final pulumi.Input<String> hostname;

  /// Input only. Password for the MySQL connection.
  final pulumi.Input<String> password;

  /// Port for the MySQL connection, default value is 3306.
  final pulumi.Input<int> port;

  /// SSL configuration for the MySQL connection.
  final pulumi.Input<MysqlSslConfigResponseDatastreamV1alpha1> sslConfig;

  /// Username for the MySQL connection.
  final pulumi.Input<String> username;

  /// Creates a new [MysqlProfileResponseDatastreamV1alpha1].
  /// [hostname] Hostname for the MySQL connection.
  /// [password] Input only. Password for the MySQL connection.
  /// [port] Port for the MySQL connection, default value is 3306.
  /// [sslConfig] SSL configuration for the MySQL connection.
  /// [username] Username for the MySQL connection.
  MysqlProfileResponseDatastreamV1alpha1({
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
            MysqlSslConfigResponseDatastreamV1alpha1,
            Map<String, dynamic>
          >(sslConfig, (value) => value.toMap()),
      'username': username,
    };
  }

  factory MysqlProfileResponseDatastreamV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return MysqlProfileResponseDatastreamV1alpha1(
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      sslConfig: pulumi.Input.fromValue(
        MysqlSslConfigResponseDatastreamV1alpha1.fromMap(
          (map['sslConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
