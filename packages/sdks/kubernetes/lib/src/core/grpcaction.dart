// ignore_for_file: unused_element, unnecessary_cast


/// GRPCAction specifies an action involving a GRPC service.
class GRPCAction {
  /// Port number of the gRPC service. Number must be in the range 1 to 65535.
  final int port;
  /// Service is the name of the service to place in the gRPC HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md).
  ///
  /// If this is not specified, the default behavior is defined by gRPC.
  final String? service;

  /// Creates a new [GRPCAction].
  /// [port] Port number of the gRPC service. Number must be in the range 1 to 65535.
  /// [service] Service is the name of the service to place in the gRPC HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md).
  GRPCAction({
    required this.port,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'service': ?service,
    };
  }

  factory GRPCAction.fromMap(Map<String, dynamic> map) {
    return GRPCAction(
      port: map['port'] as int,
      service: map['service'] == null ? null : map['service'] as String,
    );
  }
}

