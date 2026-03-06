// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionProfileForwardSshConnectivity {
  /// Hostname for the SSH tunnel.
  final pulumi.Input<String> hostname;
  /// SSH password.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? password;
  /// Port for the SSH tunnel.
  final pulumi.Input<int>? port;
  /// SSH private key.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? privateKey;
  /// Username for the SSH tunnel.
  final pulumi.Input<String> username;

  /// Creates a new [ConnectionProfileForwardSshConnectivity].
  /// [hostname] Hostname for the SSH tunnel.
  /// [password] SSH password.
  /// [port] Port for the SSH tunnel.
  /// [privateKey] SSH private key.
  /// [username] Username for the SSH tunnel.
  const ConnectionProfileForwardSshConnectivity({
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

  factory ConnectionProfileForwardSshConnectivity.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileForwardSshConnectivity(
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

