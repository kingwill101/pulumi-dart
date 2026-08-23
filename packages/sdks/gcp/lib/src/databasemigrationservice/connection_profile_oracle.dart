// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_profile_oracle_forward_ssh_connectivity.dart';
import 'connection_profile_oracle_private_connectivity.dart';
import 'connection_profile_oracle_ssl.dart';

class ConnectionProfileOracle {
  /// Required. Database service for the Oracle connection.
  final pulumi.Input<String> databaseService;
  /// SSL configuration for the destination to connect to the source database.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileOracleForwardSshConnectivity>? forwardSshConnectivity;
  /// Required. The IP or hostname of the source Oracle database.
  final pulumi.Input<String> host;
  /// Required. Input only. The password for the user that Database Migration Service will be using to connect to the database.
  /// This field is not returned on request, and the value is encrypted when stored in Database Migration Service.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> password;
  /// (Output)
  /// Output only. Indicates If this connection profile password is stored.
  final pulumi.Input<bool>? passwordSet;
  /// Required. The network port of the source Oracle database.
  final pulumi.Input<int> port;
  /// Configuration for using a private network to communicate with the source database
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileOraclePrivateConnectivity>? privateConnectivity;
  /// SSL configuration for the destination to connect to the source database.
  /// Structure is documented below.
  final pulumi.Input<ConnectionProfileOracleSsl>? ssl;
  /// This object has no nested fields.
  /// Static IP address connectivity configured on service project.
  final pulumi.Input<Map<String, dynamic>>? staticServiceIpConnectivity;
  /// Required. The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  final pulumi.Input<String> username;

  /// Creates a new [ConnectionProfileOracle].
  /// [databaseService] Required. Database service for the Oracle connection.
  /// [forwardSshConnectivity] SSL configuration for the destination to connect to the source database.
  /// [host] Required. The IP or hostname of the source Oracle database.
  /// [password] Required. Input only. The password for the user that Database Migration Service will be using to connect to the database.
  /// [passwordSet] (Output)
  /// [port] Required. The network port of the source Oracle database.
  /// [privateConnectivity] Configuration for using a private network to communicate with the source database
  /// [ssl] SSL configuration for the destination to connect to the source database.
  /// [staticServiceIpConnectivity] This object has no nested fields.
  /// [username] Required. The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  const ConnectionProfileOracle({
    required this.databaseService,
    this.forwardSshConnectivity,
    required this.host,
    required this.password,
    this.passwordSet,
    required this.port,
    this.privateConnectivity,
    this.ssl,
    this.staticServiceIpConnectivity,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseService': databaseService,
      'forwardSshConnectivity': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileOracleForwardSshConnectivity, Map<String, dynamic>>(forwardSshConnectivity, (value) => value.toMap()),
      'host': host,
      'password': password,
      'passwordSet': ?passwordSet,
      'port': port,
      'privateConnectivity': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileOraclePrivateConnectivity, Map<String, dynamic>>(privateConnectivity, (value) => value.toMap()),
      'ssl': ?pulumi.Input.mapOptionalInputValue<ConnectionProfileOracleSsl, Map<String, dynamic>>(ssl, (value) => value.toMap()),
      'staticServiceIpConnectivity': ?staticServiceIpConnectivity,
      'username': username,
    };
  }

  factory ConnectionProfileOracle.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileOracle(
      databaseService: pulumi.Input.fromValue(map['databaseService'] as String),
      forwardSshConnectivity: (() { final guardedValue = map['forwardSshConnectivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfileOracleForwardSshConnectivity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      host: pulumi.Input.fromValue(map['host'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      passwordSet: (() { final guardedValue = map['passwordSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      port: pulumi.Input.fromValue(map['port'] as int),
      privateConnectivity: (() { final guardedValue = map['privateConnectivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfileOraclePrivateConnectivity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ssl: (() { final guardedValue = map['ssl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfileOracleSsl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      staticServiceIpConnectivity: (() { final guardedValue = map['staticServiceIpConnectivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
