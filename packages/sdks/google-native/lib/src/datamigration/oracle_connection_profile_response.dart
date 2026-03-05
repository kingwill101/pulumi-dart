// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'forward_ssh_tunnel_connectivity_response.dart';
import 'private_connectivity_response.dart';
import 'ssl_config_response.dart';

/// Specifies connection parameters required specifically for Oracle databases.
class OracleConnectionProfileResponse {
  /// Database service for the Oracle connection.
  final pulumi.Input<String> databaseService;
  /// Forward SSH tunnel connectivity.
  final pulumi.Input<ForwardSshTunnelConnectivityResponse> forwardSshConnectivity;
  /// The IP or hostname of the source Oracle database.
  final pulumi.Input<String> host;
  /// Input only. The password for the user that Database Migration Service will be using to connect to the database. This field is not returned on request, and the value is encrypted when stored in Database Migration Service.
  final pulumi.Input<String> password;
  /// Indicates whether a new password is included in the request.
  final pulumi.Input<bool> passwordSet;
  /// The network port of the source Oracle database.
  final pulumi.Input<int> port;
  /// Private connectivity.
  final pulumi.Input<PrivateConnectivityResponse> privateConnectivity;
  /// SSL configuration for the connection to the source Oracle database. * Only `SERVER_ONLY` configuration is supported for Oracle SSL. * SSL is supported for Oracle versions 12 and above.
  final pulumi.Input<SslConfigResponse> ssl;
  /// Static Service IP connectivity.
  final pulumi.Input<Map<String, dynamic>> staticServiceIpConnectivity;
  /// The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  final pulumi.Input<String> username;

  /// Creates a new [OracleConnectionProfileResponse].
  /// [databaseService] Database service for the Oracle connection.
  /// [forwardSshConnectivity] Forward SSH tunnel connectivity.
  /// [host] The IP or hostname of the source Oracle database.
  /// [password] Input only. The password for the user that Database Migration Service will be using to connect to the database. This field is not returned on request, and the value is encrypted when stored in Database Migration Service.
  /// [passwordSet] Indicates whether a new password is included in the request.
  /// [port] The network port of the source Oracle database.
  /// [privateConnectivity] Private connectivity.
  /// [ssl] SSL configuration for the connection to the source Oracle database. * Only `SERVER_ONLY` configuration is supported for Oracle SSL. * SSL is supported for Oracle versions 12 and above.
  /// [staticServiceIpConnectivity] Static Service IP connectivity.
  /// [username] The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  OracleConnectionProfileResponse({
    required this.databaseService,
    required this.forwardSshConnectivity,
    required this.host,
    required this.password,
    required this.passwordSet,
    required this.port,
    required this.privateConnectivity,
    required this.ssl,
    required this.staticServiceIpConnectivity,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseService': databaseService,
      'forwardSshConnectivity': pulumi.Input.mapInputValue<ForwardSshTunnelConnectivityResponse, Map<String, dynamic>>(forwardSshConnectivity, (value) => value.toMap()),
      'host': host,
      'password': password,
      'passwordSet': passwordSet,
      'port': port,
      'privateConnectivity': pulumi.Input.mapInputValue<PrivateConnectivityResponse, Map<String, dynamic>>(privateConnectivity, (value) => value.toMap()),
      'ssl': pulumi.Input.mapInputValue<SslConfigResponse, Map<String, dynamic>>(ssl, (value) => value.toMap()),
      'staticServiceIpConnectivity': staticServiceIpConnectivity,
      'username': username,
    };
  }

  factory OracleConnectionProfileResponse.fromMap(Map<String, dynamic> map) {
    return OracleConnectionProfileResponse(
      databaseService: pulumi.Input.fromValue(map['databaseService'] as String),
      forwardSshConnectivity: pulumi.Input.fromValue(ForwardSshTunnelConnectivityResponse.fromMap((map['forwardSshConnectivity']! as Map).cast<String, dynamic>())),
      host: pulumi.Input.fromValue(map['host'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      passwordSet: pulumi.Input.fromValue(map['passwordSet'] as bool),
      port: pulumi.Input.fromValue(map['port'] as int),
      privateConnectivity: pulumi.Input.fromValue(PrivateConnectivityResponse.fromMap((map['privateConnectivity']! as Map).cast<String, dynamic>())),
      ssl: pulumi.Input.fromValue(SslConfigResponse.fromMap((map['ssl']! as Map).cast<String, dynamic>())),
      staticServiceIpConnectivity: pulumi.Input.fromValue((map['staticServiceIpConnectivity']! as Map).cast<String, dynamic>()),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

