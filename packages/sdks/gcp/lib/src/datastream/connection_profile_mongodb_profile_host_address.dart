// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionProfileMongodbProfileHostAddress {
  /// Hostname for the connection.
  final pulumi.Input<String> hostname;
  /// Port for the connection.
  final pulumi.Input<int>? port;

  /// Creates a new [ConnectionProfileMongodbProfileHostAddress].
  /// [hostname] Hostname for the connection.
  /// [port] Port for the connection.
  const ConnectionProfileMongodbProfileHostAddress({
    required this.hostname,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': hostname,
      'port': ?port,
    };
  }

  factory ConnectionProfileMongodbProfileHostAddress.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileMongodbProfileHostAddress(
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
