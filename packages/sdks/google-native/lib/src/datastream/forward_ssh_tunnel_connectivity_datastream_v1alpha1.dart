// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Forward SSH Tunnel connectivity.
class ForwardSshTunnelConnectivityDatastreamV1alpha1 {
  /// Hostname for the SSH tunnel.
  final pulumi.Input<String> hostname;
  /// Input only. SSH password.
  final pulumi.Input<String>? password;
  /// Port for the SSH tunnel, default value is 22.
  final pulumi.Input<int>? port;
  /// Input only. SSH private key.
  final pulumi.Input<String>? privateKey;
  /// Username for the SSH tunnel.
  final pulumi.Input<String> username;

  /// Creates a new [ForwardSshTunnelConnectivityDatastreamV1alpha1].
  /// [hostname] Hostname for the SSH tunnel.
  /// [password] Input only. SSH password.
  /// [port] Port for the SSH tunnel, default value is 22.
  /// [privateKey] Input only. SSH private key.
  /// [username] Username for the SSH tunnel.
  ForwardSshTunnelConnectivityDatastreamV1alpha1({
    required this.hostname,
    this.password,
    this.port,
    this.privateKey,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': hostname,
      'password': ?password,
      'port': ?port,
      'privateKey': ?privateKey,
      'username': username,
    };
  }

  factory ForwardSshTunnelConnectivityDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return ForwardSshTunnelConnectivityDatastreamV1alpha1(
      hostname: (map['hostname'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      privateKey: map['privateKey'] == null ? null : (map['privateKey'] as String).input(),
      username: (map['username'] as String).input(),
    );
  }
}

