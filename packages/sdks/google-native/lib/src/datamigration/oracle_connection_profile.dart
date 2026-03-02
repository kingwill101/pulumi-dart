// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'forward_ssh_tunnel_connectivity.dart';
import 'private_connectivity.dart';
import 'ssl_config.dart';

/// Specifies connection parameters required specifically for Oracle databases.
class OracleConnectionProfile {
  /// Database service for the Oracle connection.
  final pulumi.Input<String> databaseService;
  /// Forward SSH tunnel connectivity.
  final pulumi.Input<ForwardSshTunnelConnectivity>? forwardSshConnectivity;
  /// The IP or hostname of the source Oracle database.
  final pulumi.Input<String> host;
  /// Input only. The password for the user that Database Migration Service will be using to connect to the database. This field is not returned on request, and the value is encrypted when stored in Database Migration Service.
  final pulumi.Input<String> password;
  /// The network port of the source Oracle database.
  final pulumi.Input<int> port;
  /// Private connectivity.
  final pulumi.Input<PrivateConnectivity>? privateConnectivity;
  /// SSL configuration for the connection to the source Oracle database. * Only `SERVER_ONLY` configuration is supported for Oracle SSL. * SSL is supported for Oracle versions 12 and above.
  final pulumi.Input<SslConfig>? ssl;
  /// Static Service IP connectivity.
  final pulumi.Input<Map<String, dynamic>>? staticServiceIpConnectivity;
  /// The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  final pulumi.Input<String> username;

  /// Creates a new [OracleConnectionProfile].
  /// [databaseService] Database service for the Oracle connection.
  /// [forwardSshConnectivity] Forward SSH tunnel connectivity.
  /// [host] The IP or hostname of the source Oracle database.
  /// [password] Input only. The password for the user that Database Migration Service will be using to connect to the database. This field is not returned on request, and the value is encrypted when stored in Database Migration Service.
  /// [port] The network port of the source Oracle database.
  /// [privateConnectivity] Private connectivity.
  /// [ssl] SSL configuration for the connection to the source Oracle database. * Only `SERVER_ONLY` configuration is supported for Oracle SSL. * SSL is supported for Oracle versions 12 and above.
  /// [staticServiceIpConnectivity] Static Service IP connectivity.
  /// [username] The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  OracleConnectionProfile({
    required this.databaseService,
    this.forwardSshConnectivity,
    required this.host,
    required this.password,
    required this.port,
    this.privateConnectivity,
    this.ssl,
    this.staticServiceIpConnectivity,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseService': databaseService,
      'forwardSshConnectivity': ?pulumi.Input.mapOptionalInputValue<ForwardSshTunnelConnectivity, Map<String, dynamic>>(forwardSshConnectivity, (value) => value.toMap()),
      'host': host,
      'password': password,
      'port': port,
      'privateConnectivity': ?pulumi.Input.mapOptionalInputValue<PrivateConnectivity, Map<String, dynamic>>(privateConnectivity, (value) => value.toMap()),
      'ssl': ?pulumi.Input.mapOptionalInputValue<SslConfig, Map<String, dynamic>>(ssl, (value) => value.toMap()),
      'staticServiceIpConnectivity': ?staticServiceIpConnectivity,
      'username': username,
    };
  }

  factory OracleConnectionProfile.fromMap(Map<String, dynamic> map) {
    return OracleConnectionProfile(
      databaseService: (map['databaseService'] as String).input(),
      forwardSshConnectivity: map['forwardSshConnectivity'] == null ? null : (ForwardSshTunnelConnectivity.fromMap((map['forwardSshConnectivity'] as Map).cast<String, dynamic>())).input(),
      host: (map['host'] as String).input(),
      password: (map['password'] as String).input(),
      port: (map['port'] as int).input(),
      privateConnectivity: map['privateConnectivity'] == null ? null : (PrivateConnectivity.fromMap((map['privateConnectivity'] as Map).cast<String, dynamic>())).input(),
      ssl: map['ssl'] == null ? null : (SslConfig.fromMap((map['ssl'] as Map).cast<String, dynamic>())).input(),
      staticServiceIpConnectivity: map['staticServiceIpConnectivity'] == null ? null : ((map['staticServiceIpConnectivity'] as Map).cast<String, dynamic>()).input(),
      username: (map['username'] as String).input(),
    );
  }
}

