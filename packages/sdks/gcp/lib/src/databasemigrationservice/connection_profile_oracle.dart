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
  ConnectionProfileOracle({
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
      databaseService: (map['databaseService'] as String).input(),
      forwardSshConnectivity: map['forwardSshConnectivity'] == null ? null : (ConnectionProfileOracleForwardSshConnectivity.fromMap((map['forwardSshConnectivity']! as Map).cast<String, dynamic>())).input(),
      host: (map['host'] as String).input(),
      password: (map['password'] as String).input(),
      passwordSet: map['passwordSet'] == null ? null : (map['passwordSet']! as bool).input(),
      port: (map['port'] as int).input(),
      privateConnectivity: map['privateConnectivity'] == null ? null : (ConnectionProfileOraclePrivateConnectivity.fromMap((map['privateConnectivity']! as Map).cast<String, dynamic>())).input(),
      ssl: map['ssl'] == null ? null : (ConnectionProfileOracleSsl.fromMap((map['ssl']! as Map).cast<String, dynamic>())).input(),
      staticServiceIpConnectivity: map['staticServiceIpConnectivity'] == null ? null : ((map['staticServiceIpConnectivity']! as Map).cast<String, dynamic>()).input(),
      username: (map['username'] as String).input(),
    );
  }
}

