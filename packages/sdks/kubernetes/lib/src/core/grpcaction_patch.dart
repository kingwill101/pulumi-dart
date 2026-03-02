// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GRPCAction specifies an action involving a GRPC service.
class GRPCActionPatch {
  /// Port number of the gRPC service. Number must be in the range 1 to 65535.
  final pulumi.Input<int>? port;
  /// Service is the name of the service to place in the gRPC HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md).
  ///
  /// If this is not specified, the default behavior is defined by gRPC.
  final pulumi.Input<String>? service;

  /// Creates a new [GRPCActionPatch].
  /// [port] Port number of the gRPC service. Number must be in the range 1 to 65535.
  /// [service] Service is the name of the service to place in the gRPC HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md).
  GRPCActionPatch({
    this.port,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'service': ?service,
    };
  }

  factory GRPCActionPatch.fromMap(Map<String, dynamic> map) {
    return GRPCActionPatch(
      port: map['port'] == null ? null : (map['port'] as int).input(),
      service: map['service'] == null ? null : (map['service'] as String).input(),
    );
  }
}

