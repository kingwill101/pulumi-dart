// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_profile_mongodb_profile_host_address.dart';
import 'connection_profile_mongodb_profile_ssl_config.dart';
import 'connection_profile_mongodb_profile_standard_connection_format.dart';

class ConnectionProfileMongodbProfile {
  /// A map of additional options for the MongoDB connection.
  /// Keys are case-sensitive and should match the official
  /// MongoDB connection string options: https://www.mongodb.com/docs/manual/reference/connection-string-options/
  final pulumi.Input<Map<String, String>>? additionalOptions;
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
  /// [additionalOptions] A map of additional options for the MongoDB connection.
  /// [hostAddresses] List of host addresses for a MongoDB cluster.
  /// [password] Password for the MongoDB connection. Mutually exclusive with
  /// [replicaSet] Name of the replica set.
  /// [secretManagerStoredPassword] A reference to a Secret Manager resource name storing the MongoDB
  /// [srvConnectionFormat] Srv connection format. Mutually exclusive with
  /// [sslConfig] SSL configuration for the MongoDB connection.
  /// [standardConnectionFormat] Standard connection format. Mutually exclusive with
  /// [username] Username for the MongoDB connection.
  const ConnectionProfileMongodbProfile({
    this.additionalOptions,
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
      'additionalOptions': ?additionalOptions,
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
      additionalOptions: (() { final guardedValue = map['additionalOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      hostAddresses: pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectionProfileMongodbProfileHostAddress>(map['hostAddresses']!, (value) => ConnectionProfileMongodbProfileHostAddress.fromMap((value as Map).cast<String, dynamic>()))),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicaSet: (() { final guardedValue = map['replicaSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretManagerStoredPassword: (() { final guardedValue = map['secretManagerStoredPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      srvConnectionFormat: (() { final guardedValue = map['srvConnectionFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      sslConfig: (() { final guardedValue = map['sslConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfileMongodbProfileSslConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      standardConnectionFormat: (() { final guardedValue = map['standardConnectionFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfileMongodbProfileStandardConnectionFormat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
