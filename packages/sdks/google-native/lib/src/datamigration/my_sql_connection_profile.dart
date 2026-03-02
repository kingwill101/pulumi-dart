// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_config.dart';

/// Specifies connection parameters required specifically for MySQL databases.
class MySqlConnectionProfile {
  /// If the source is a Cloud SQL database, use this field to provide the Cloud SQL instance ID of the source.
  final pulumi.Input<String>? cloudSqlId;
  /// The IP or hostname of the source MySQL database.
  final pulumi.Input<String> host;
  /// Input only. The password for the user that Database Migration Service will be using to connect to the database. This field is not returned on request, and the value is encrypted when stored in Database Migration Service.
  final pulumi.Input<String> password;
  /// The network port of the source MySQL database.
  final pulumi.Input<int> port;
  /// SSL configuration for the destination to connect to the source database.
  final pulumi.Input<SslConfig>? ssl;
  /// The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  final pulumi.Input<String> username;

  /// Creates a new [MySqlConnectionProfile].
  /// [cloudSqlId] If the source is a Cloud SQL database, use this field to provide the Cloud SQL instance ID of the source.
  /// [host] The IP or hostname of the source MySQL database.
  /// [password] Input only. The password for the user that Database Migration Service will be using to connect to the database. This field is not returned on request, and the value is encrypted when stored in Database Migration Service.
  /// [port] The network port of the source MySQL database.
  /// [ssl] SSL configuration for the destination to connect to the source database.
  /// [username] The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  MySqlConnectionProfile({
    this.cloudSqlId,
    required this.host,
    required this.password,
    required this.port,
    this.ssl,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudSqlId': ?cloudSqlId,
      'host': host,
      'password': password,
      'port': port,
      'ssl': ?pulumi.Input.mapOptionalInputValue<SslConfig, Map<String, dynamic>>(ssl, (value) => value.toMap()),
      'username': username,
    };
  }

  factory MySqlConnectionProfile.fromMap(Map<String, dynamic> map) {
    return MySqlConnectionProfile(
      cloudSqlId: map['cloudSqlId'] == null ? null : (map['cloudSqlId'] as String).input(),
      host: (map['host'] as String).input(),
      password: (map['password'] as String).input(),
      port: (map['port'] as int).input(),
      ssl: map['ssl'] == null ? null : (SslConfig.fromMap((map['ssl'] as Map).cast<String, dynamic>())).input(),
      username: (map['username'] as String).input(),
    );
  }
}

