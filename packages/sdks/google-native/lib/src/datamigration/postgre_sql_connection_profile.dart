// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_service_connect_connectivity.dart';
import 'ssl_config.dart';

/// Specifies connection parameters required specifically for PostgreSQL databases.
class PostgreSqlConnectionProfile {
  /// Optional. If the destination is an AlloyDB database, use this field to provide the AlloyDB cluster ID.
  final pulumi.Input<String>? alloydbClusterId;
  /// If the source is a Cloud SQL database, use this field to provide the Cloud SQL instance ID of the source.
  final pulumi.Input<String>? cloudSqlId;
  /// The IP or hostname of the source PostgreSQL database.
  final pulumi.Input<String> host;
  /// Input only. The password for the user that Database Migration Service will be using to connect to the database. This field is not returned on request, and the value is encrypted when stored in Database Migration Service.
  final pulumi.Input<String> password;
  /// The network port of the source PostgreSQL database.
  final pulumi.Input<int> port;
  /// Private service connect connectivity.
  final pulumi.Input<PrivateServiceConnectConnectivity>? privateServiceConnectConnectivity;
  /// SSL configuration for the destination to connect to the source database.
  final pulumi.Input<SslConfig>? ssl;
  /// Static ip connectivity data (default, no additional details needed).
  final pulumi.Input<Map<String, dynamic>>? staticIpConnectivity;
  /// The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  final pulumi.Input<String> username;

  /// Creates a new [PostgreSqlConnectionProfile].
  /// [alloydbClusterId] Optional. If the destination is an AlloyDB database, use this field to provide the AlloyDB cluster ID.
  /// [cloudSqlId] If the source is a Cloud SQL database, use this field to provide the Cloud SQL instance ID of the source.
  /// [host] The IP or hostname of the source PostgreSQL database.
  /// [password] Input only. The password for the user that Database Migration Service will be using to connect to the database. This field is not returned on request, and the value is encrypted when stored in Database Migration Service.
  /// [port] The network port of the source PostgreSQL database.
  /// [privateServiceConnectConnectivity] Private service connect connectivity.
  /// [ssl] SSL configuration for the destination to connect to the source database.
  /// [staticIpConnectivity] Static ip connectivity data (default, no additional details needed).
  /// [username] The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  PostgreSqlConnectionProfile({
    this.alloydbClusterId,
    this.cloudSqlId,
    required this.host,
    required this.password,
    required this.port,
    this.privateServiceConnectConnectivity,
    this.ssl,
    this.staticIpConnectivity,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alloydbClusterId': ?alloydbClusterId,
      'cloudSqlId': ?cloudSqlId,
      'host': host,
      'password': password,
      'port': port,
      'privateServiceConnectConnectivity': ?pulumi.Input.mapOptionalInputValue<PrivateServiceConnectConnectivity, Map<String, dynamic>>(privateServiceConnectConnectivity, (value) => value.toMap()),
      'ssl': ?pulumi.Input.mapOptionalInputValue<SslConfig, Map<String, dynamic>>(ssl, (value) => value.toMap()),
      'staticIpConnectivity': ?staticIpConnectivity,
      'username': username,
    };
  }

  factory PostgreSqlConnectionProfile.fromMap(Map<String, dynamic> map) {
    return PostgreSqlConnectionProfile(
      alloydbClusterId: map['alloydbClusterId'] == null ? null : (map['alloydbClusterId'] as String).input(),
      cloudSqlId: map['cloudSqlId'] == null ? null : (map['cloudSqlId'] as String).input(),
      host: (map['host'] as String).input(),
      password: (map['password'] as String).input(),
      port: (map['port'] as int).input(),
      privateServiceConnectConnectivity: map['privateServiceConnectConnectivity'] == null ? null : (PrivateServiceConnectConnectivity.fromMap((map['privateServiceConnectConnectivity'] as Map).cast<String, dynamic>())).input(),
      ssl: map['ssl'] == null ? null : (SslConfig.fromMap((map['ssl'] as Map).cast<String, dynamic>())).input(),
      staticIpConnectivity: map['staticIpConnectivity'] == null ? null : ((map['staticIpConnectivity'] as Map).cast<String, dynamic>()).input(),
      username: (map['username'] as String).input(),
    );
  }
}

