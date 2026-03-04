// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GRPCAction describes an action involving a GRPC port.
class GRPCActionResponse {
  /// Port number of the gRPC service. Number must be in the range 1 to 65535.
  final pulumi.Input<int> port;

  /// Service is the name of the service to place in the gRPC HealthCheckRequest. If this is not specified, the default behavior is defined by gRPC.
  final pulumi.Input<String> service;

  /// Creates a new [GRPCActionResponse].
  /// [port] Port number of the gRPC service. Number must be in the range 1 to 65535.
  /// [service] Service is the name of the service to place in the gRPC HealthCheckRequest. If this is not specified, the default behavior is defined by gRPC.
  GRPCActionResponse({required this.port, required this.service});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'port': port, 'service': service};
  }

  factory GRPCActionResponse.fromMap(Map<String, dynamic> map) {
    return GRPCActionResponse(
      port: pulumi.Input.fromValue(map['port'] as int),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}
