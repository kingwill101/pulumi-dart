// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_service_connect_connectivity_response.dart';
import 'ssl_config_response.dart';

/// Specifies connection parameters required specifically for PostgreSQL databases.
class PostgreSqlConnectionProfileResponse {
  /// Optional. If the destination is an AlloyDB database, use this field to provide the AlloyDB cluster ID.
  final pulumi.Input<String> alloydbClusterId;
  /// If the source is a Cloud SQL database, use this field to provide the Cloud SQL instance ID of the source.
  final pulumi.Input<String> cloudSqlId;
  /// The IP or hostname of the source PostgreSQL database.
  final pulumi.Input<String> host;
  /// If the source is a Cloud SQL database, this field indicates the network architecture it's associated with.
  final pulumi.Input<String> networkArchitecture;
  /// Input only. The password for the user that Database Migration Service will be using to connect to the database. This field is not returned on request, and the value is encrypted when stored in Database Migration Service.
  final pulumi.Input<String> password;
  /// Indicates If this connection profile password is stored.
  final pulumi.Input<bool> passwordSet;
  /// The network port of the source PostgreSQL database.
  final pulumi.Input<int> port;
  /// Private service connect connectivity.
  final pulumi.Input<PrivateServiceConnectConnectivityResponse> privateServiceConnectConnectivity;
  /// SSL configuration for the destination to connect to the source database.
  final pulumi.Input<SslConfigResponse> ssl;
  /// Static ip connectivity data (default, no additional details needed).
  final pulumi.Input<Map<String, dynamic>> staticIpConnectivity;
  /// The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  final pulumi.Input<String> username;

  /// Creates a new [PostgreSqlConnectionProfileResponse].
  /// [alloydbClusterId] Optional. If the destination is an AlloyDB database, use this field to provide the AlloyDB cluster ID.
  /// [cloudSqlId] If the source is a Cloud SQL database, use this field to provide the Cloud SQL instance ID of the source.
  /// [host] The IP or hostname of the source PostgreSQL database.
  /// [networkArchitecture] If the source is a Cloud SQL database, this field indicates the network architecture it's associated with.
  /// [password] Input only. The password for the user that Database Migration Service will be using to connect to the database. This field is not returned on request, and the value is encrypted when stored in Database Migration Service.
  /// [passwordSet] Indicates If this connection profile password is stored.
  /// [port] The network port of the source PostgreSQL database.
  /// [privateServiceConnectConnectivity] Private service connect connectivity.
  /// [ssl] SSL configuration for the destination to connect to the source database.
  /// [staticIpConnectivity] Static ip connectivity data (default, no additional details needed).
  /// [username] The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  PostgreSqlConnectionProfileResponse({
    required this.alloydbClusterId,
    required this.cloudSqlId,
    required this.host,
    required this.networkArchitecture,
    required this.password,
    required this.passwordSet,
    required this.port,
    required this.privateServiceConnectConnectivity,
    required this.ssl,
    required this.staticIpConnectivity,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alloydbClusterId': alloydbClusterId,
      'cloudSqlId': cloudSqlId,
      'host': host,
      'networkArchitecture': networkArchitecture,
      'password': password,
      'passwordSet': passwordSet,
      'port': port,
      'privateServiceConnectConnectivity': pulumi.Input.mapInputValue<PrivateServiceConnectConnectivityResponse, Map<String, dynamic>>(privateServiceConnectConnectivity, (value) => value.toMap()),
      'ssl': pulumi.Input.mapInputValue<SslConfigResponse, Map<String, dynamic>>(ssl, (value) => value.toMap()),
      'staticIpConnectivity': staticIpConnectivity,
      'username': username,
    };
  }

  factory PostgreSqlConnectionProfileResponse.fromMap(Map<String, dynamic> map) {
    return PostgreSqlConnectionProfileResponse(
      alloydbClusterId: pulumi.Input.fromValue(map['alloydbClusterId'] as String),
      cloudSqlId: pulumi.Input.fromValue(map['cloudSqlId'] as String),
      host: pulumi.Input.fromValue(map['host'] as String),
      networkArchitecture: pulumi.Input.fromValue(map['networkArchitecture'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      passwordSet: pulumi.Input.fromValue(map['passwordSet'] as bool),
      port: pulumi.Input.fromValue(map['port'] as int),
      privateServiceConnectConnectivity: pulumi.Input.fromValue(PrivateServiceConnectConnectivityResponse.fromMap((map['privateServiceConnectConnectivity']! as Map).cast<String, dynamic>())),
      ssl: pulumi.Input.fromValue(SslConfigResponse.fromMap((map['ssl']! as Map).cast<String, dynamic>())),
      staticIpConnectivity: pulumi.Input.fromValue((map['staticIpConnectivity']! as Map).cast<String, dynamic>()),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

