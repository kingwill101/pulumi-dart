// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Forward SSH Tunnel connectivity.
class ForwardSshTunnelConnectivityResponse {
  /// Hostname for the SSH tunnel.
  final pulumi.Input<String> hostname;
  /// Input only. SSH password.
  final pulumi.Input<String> password;
  /// Port for the SSH tunnel, default value is 22.
  final pulumi.Input<int> port;
  /// Input only. SSH private key.
  final pulumi.Input<String> privateKey;
  /// Username for the SSH tunnel.
  final pulumi.Input<String> username;

  /// Creates a new [ForwardSshTunnelConnectivityResponse].
  /// [hostname] Hostname for the SSH tunnel.
  /// [password] Input only. SSH password.
  /// [port] Port for the SSH tunnel, default value is 22.
  /// [privateKey] Input only. SSH private key.
  /// [username] Username for the SSH tunnel.
  ForwardSshTunnelConnectivityResponse({
    required this.hostname,
    required this.password,
    required this.port,
    required this.privateKey,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': hostname,
      'password': password,
      'port': port,
      'privateKey': privateKey,
      'username': username,
    };
  }

  factory ForwardSshTunnelConnectivityResponse.fromMap(Map<String, dynamic> map) {
    return ForwardSshTunnelConnectivityResponse(
      hostname: (map['hostname'] as String).input(),
      password: (map['password'] as String).input(),
      port: (map['port'] as int).input(),
      privateKey: (map['privateKey'] as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

