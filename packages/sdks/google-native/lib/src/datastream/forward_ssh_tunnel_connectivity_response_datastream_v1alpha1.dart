// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Forward SSH Tunnel connectivity.
class ForwardSshTunnelConnectivityResponseDatastreamV1alpha1 {
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

  /// Creates a new [ForwardSshTunnelConnectivityResponseDatastreamV1alpha1].
  /// [hostname] Hostname for the SSH tunnel.
  /// [password] Input only. SSH password.
  /// [port] Port for the SSH tunnel, default value is 22.
  /// [privateKey] Input only. SSH private key.
  /// [username] Username for the SSH tunnel.
  const ForwardSshTunnelConnectivityResponseDatastreamV1alpha1({
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

  factory ForwardSshTunnelConnectivityResponseDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return ForwardSshTunnelConnectivityResponseDatastreamV1alpha1(
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      privateKey: pulumi.Input.fromValue(map['privateKey'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
