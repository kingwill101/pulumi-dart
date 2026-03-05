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
      databaseService: pulumi.Input.fromValue(map['databaseService'] as String),
      forwardSshConnectivity: (() { final guardedValue = map['forwardSshConnectivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ForwardSshTunnelConnectivity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      host: pulumi.Input.fromValue(map['host'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      privateConnectivity: (() { final guardedValue = map['privateConnectivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateConnectivity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ssl: (() { final guardedValue = map['ssl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SslConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      staticServiceIpConnectivity: (() { final guardedValue = map['staticServiceIpConnectivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

