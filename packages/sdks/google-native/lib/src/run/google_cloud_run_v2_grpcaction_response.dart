// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GRPCAction describes an action involving a GRPC port.
class GoogleCloudRunV2GRPCActionResponse {
  /// Port number of the gRPC service. Number must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  final pulumi.Input<int> port;

  /// Service is the name of the service to place in the gRPC HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md ). If this is not specified, the default behavior is defined by gRPC.
  final pulumi.Input<String> service;

  /// Creates a new [GoogleCloudRunV2GRPCActionResponse].
  /// [port] Port number of the gRPC service. Number must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  /// [service] Service is the name of the service to place in the gRPC HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md ). If this is not specified, the default behavior is defined by gRPC.
  GoogleCloudRunV2GRPCActionResponse({
    required this.port,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'port': port, 'service': service};
  }

  factory GoogleCloudRunV2GRPCActionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2GRPCActionResponse(
      port: pulumi.Input.fromValue(map['port'] as int),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}
