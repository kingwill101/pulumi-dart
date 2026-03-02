// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GRPCAction describes an action involving a GRPC port.
class GRPCAction {
  /// Port number of the gRPC service. Number must be in the range 1 to 65535.
  final pulumi.Input<int>? port;
  /// Service is the name of the service to place in the gRPC HealthCheckRequest. If this is not specified, the default behavior is defined by gRPC.
  final pulumi.Input<String>? service;

  /// Creates a new [GRPCAction].
  /// [port] Port number of the gRPC service. Number must be in the range 1 to 65535.
  /// [service] Service is the name of the service to place in the gRPC HealthCheckRequest. If this is not specified, the default behavior is defined by gRPC.
  GRPCAction({
    this.port,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'service': ?service,
    };
  }

  factory GRPCAction.fromMap(Map<String, dynamic> map) {
    return GRPCAction(
      port: map['port'] == null ? null : (map['port'] as int).input(),
      service: map['service'] == null ? null : (map['service'] as String).input(),
    );
  }
}

