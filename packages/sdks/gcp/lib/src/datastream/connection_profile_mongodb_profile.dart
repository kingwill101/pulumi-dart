// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_profile_mongodb_profile_host_address.dart';
import 'connection_profile_mongodb_profile_ssl_config.dart';
import 'connection_profile_mongodb_profile_standard_connection_format.dart';

class ConnectionProfileMongodbProfile {
  /// List of host addresses for a MongoDB cluster.
  /// Structure is documented below.
  final pulumi.Input<List<ConnectionProfileMongodbProfileHostAddress>> hostAddresses;
  /// Password for the MongoDB connection. Mutually exclusive with
  /// secretManagerStoredPassword.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? password;
  /// Name of the replica set.
  final pulumi.Input<String>? replicaSet;
  /// A reference to a Secret Manager resource name storing the MongoDB
  /// connection password. Mutually exclusive with password.
  final pulumi.Input<String>? secretManagerStoredPassword;
  /// Srv connection format. Mutually exclusive with
  /// standard_connection_Format.
  final pulumi.Input<Map<String, dynamic>>? srvConnectionFormat;
  /// SSL configuration for the MongoDB connection.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileMongodbProfileSslConfig>? sslConfig;
  /// Standard connection format. Mutually exclusive with
  /// srv_connection_format.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileMongodbProfileStandardConnectionFormat>? standardConnectionFormat;
  /// Username for the MongoDB connection.
  final pulumi.Input<String> username;

  /// Creates a new [ConnectionProfileMongodbProfile].
  /// [hostAddresses] List of host addresses for a MongoDB cluster.
  /// [password] Password for the MongoDB connection. Mutually exclusive with
  /// [replicaSet] Name of the replica set.
  /// [secretManagerStoredPassword] A reference to a Secret Manager resource name storing the MongoDB
  /// [srvConnectionFormat] Srv connection format. Mutually exclusive with
  /// [sslConfig] SSL configuration for the MongoDB connection.
  /// [standardConnectionFormat] Standard connection format. Mutually exclusive with
  /// [username] Username for the MongoDB connection.
  ConnectionProfileMongodbProfile({
    required this.hostAddresses,
    this.password,
    this.replicaSet,
    this.secretManagerStoredPassword,
    this.srvConnectionFormat,
    this.sslConfig,
    this.standardConnectionFormat,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostAddresses': pulumi.Input.mapInputValue<List<ConnectionProfileMongodbProfileHostAddress>, List<Map<String, dynamic>>>(hostAddresses, (value) => pulumi.Input.encodeList<ConnectionProfileMongodbProfileHostAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?password,
      'replicaSet': ?replicaSet,
      'secretManagerStoredPassword': ?secretManagerStoredPassword,
      'srvConnectionFormat': ?srvConnectionFormat,
      'sslConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileMongodbProfileSslConfig, Map<String, dynamic>>(sslConfig, (value) => value.toMap()),
      'standardConnectionFormat': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileMongodbProfileStandardConnectionFormat, Map<String, dynamic>>(standardConnectionFormat, (value) => value.toMap()),
      'username': username,
    };
  }

  factory ConnectionProfileMongodbProfile.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileMongodbProfile(
      hostAddresses: (pulumi.Input.decodeList<ConnectionProfileMongodbProfileHostAddress>(map['hostAddresses'], (value) => ConnectionProfileMongodbProfileHostAddress.fromMap((value as Map).cast<String, dynamic>()))).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      replicaSet: map['replicaSet'] == null ? null : (map['replicaSet']! as String).input(),
      secretManagerStoredPassword: map['secretManagerStoredPassword'] == null ? null : (map['secretManagerStoredPassword']! as String).input(),
      srvConnectionFormat: map['srvConnectionFormat'] == null ? null : ((map['srvConnectionFormat']! as Map).cast<String, dynamic>()).input(),
      sslConfig: map['sslConfig'] == null ? null : (ConnectionProfileMongodbProfileSslConfig.fromMap((map['sslConfig']! as Map).cast<String, dynamic>())).input(),
      standardConnectionFormat: map['standardConnectionFormat'] == null ? null : (ConnectionProfileMongodbProfileStandardConnectionFormat.fromMap((map['standardConnectionFormat']! as Map).cast<String, dynamic>())).input(),
      username: (map['username'] as String).input(),
    );
  }
}

