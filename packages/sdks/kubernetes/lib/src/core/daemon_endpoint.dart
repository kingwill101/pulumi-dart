// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DaemonEndpoint contains information about a single Daemon endpoint.
class DaemonEndpoint {
  /// Port number of the given endpoint.
  final pulumi.Input<int> port;

  /// Creates a new [DaemonEndpoint].
  /// [port] Port number of the given endpoint.
  DaemonEndpoint({
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'Port': port,
    };
  }

  factory DaemonEndpoint.fromMap(Map<String, dynamic> map) {
    return DaemonEndpoint(
      port: pulumi.Input.fromValue(map['Port'] as int),
    );
  }
}

