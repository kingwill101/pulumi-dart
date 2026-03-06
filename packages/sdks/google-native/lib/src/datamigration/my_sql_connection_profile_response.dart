// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_config_response.dart';

/// Specifies connection parameters required specifically for MySQL databases.
class MySqlConnectionProfileResponse {
  /// If the source is a Cloud SQL database, use this field to provide the Cloud SQL instance ID of the source.
  final pulumi.Input<String> cloudSqlId;
  /// The IP or hostname of the source MySQL database.
  final pulumi.Input<String> host;
  /// Input only. The password for the user that Database Migration Service will be using to connect to the database. This field is not returned on request, and the value is encrypted when stored in Database Migration Service.
  final pulumi.Input<String> password;
  /// Indicates If this connection profile password is stored.
  final pulumi.Input<bool> passwordSet;
  /// The network port of the source MySQL database.
  final pulumi.Input<int> port;
  /// SSL configuration for the destination to connect to the source database.
  final pulumi.Input<SslConfigResponse> ssl;
  /// The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  final pulumi.Input<String> username;

  /// Creates a new [MySqlConnectionProfileResponse].
  /// [cloudSqlId] If the source is a Cloud SQL database, use this field to provide the Cloud SQL instance ID of the source.
  /// [host] The IP or hostname of the source MySQL database.
  /// [password] Input only. The password for the user that Database Migration Service will be using to connect to the database. This field is not returned on request, and the value is encrypted when stored in Database Migration Service.
  /// [passwordSet] Indicates If this connection profile password is stored.
  /// [port] The network port of the source MySQL database.
  /// [ssl] SSL configuration for the destination to connect to the source database.
  /// [username] The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  const MySqlConnectionProfileResponse({
    required this.cloudSqlId,
    required this.host,
    required this.password,
    required this.passwordSet,
    required this.port,
    required this.ssl,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudSqlId': cloudSqlId,
      'host': host,
      'password': password,
      'passwordSet': passwordSet,
      'port': port,
      'ssl': pulumi.Input.mapInputValue<SslConfigResponse, Map<String, dynamic>>(ssl, (value) => value.toMap()),
      'username': username,
    };
  }

  factory MySqlConnectionProfileResponse.fromMap(Map<String, dynamic> map) {
    return MySqlConnectionProfileResponse(
      cloudSqlId: pulumi.Input.fromValue(map['cloudSqlId'] as String),
      host: pulumi.Input.fromValue(map['host'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      passwordSet: pulumi.Input.fromValue(map['passwordSet'] as bool),
      port: pulumi.Input.fromValue(map['port'] as int),
      ssl: pulumi.Input.fromValue(SslConfigResponse.fromMap((map['ssl']! as Map).cast<String, dynamic>())),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

