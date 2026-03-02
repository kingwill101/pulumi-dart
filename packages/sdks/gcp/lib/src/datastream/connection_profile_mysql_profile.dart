// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_profile_mysql_profile_ssl_config.dart';

class ConnectionProfileMysqlProfile {
  /// Hostname for the MySQL connection.
  final pulumi.Input<String> hostname;
  /// Password for the MySQL connection.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? password;
  /// Port for the MySQL connection.
  final pulumi.Input<int>? port;
  /// A reference to a Secret Manager resource name storing the user's password.
  final pulumi.Input<String>? secretManagerStoredPassword;
  /// SSL configuration for the MySQL connection.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileMysqlProfileSslConfig>? sslConfig;
  /// Username for the MySQL connection.
  final pulumi.Input<String> username;

  /// Creates a new [ConnectionProfileMysqlProfile].
  /// [hostname] Hostname for the MySQL connection.
  /// [password] Password for the MySQL connection.
  /// [port] Port for the MySQL connection.
  /// [secretManagerStoredPassword] A reference to a Secret Manager resource name storing the user's password.
  /// [sslConfig] SSL configuration for the MySQL connection.
  /// [username] Username for the MySQL connection.
  ConnectionProfileMysqlProfile({
    required this.hostname,
    this.password,
    this.port,
    this.secretManagerStoredPassword,
    this.sslConfig,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': hostname,
      'password': ?password,
      'port': ?port,
      'secretManagerStoredPassword': ?secretManagerStoredPassword,
      'sslConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileMysqlProfileSslConfig, Map<String, dynamic>>(sslConfig, (value) => value.toMap()),
      'username': username,
    };
  }

  factory ConnectionProfileMysqlProfile.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileMysqlProfile(
      hostname: (map['hostname'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      secretManagerStoredPassword: map['secretManagerStoredPassword'] == null ? null : (map['secretManagerStoredPassword'] as String).input(),
      sslConfig: map['sslConfig'] == null ? null : (ConnectionProfileMysqlProfileSslConfig.fromMap((map['sslConfig'] as Map).cast<String, dynamic>())).input(),
      username: (map['username'] as String).input(),
    );
  }
}

