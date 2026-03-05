// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTemplateSpecContainerReadinessProbeGrpc {
  /// Port number to access on the container. Number must be in the range 1 to 65535.
  /// If not specified, defaults to the same value as container.ports[0].containerPort.
  final pulumi.Input<int> port;
  /// The name of the service to place in the gRPC HealthCheckRequest
  /// (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md).
  /// If this is not specified, the default behavior is defined by gRPC.
  final pulumi.Input<String> service;

  /// Creates a new [GetServiceTemplateSpecContainerReadinessProbeGrpc].
  /// [port] Port number to access on the container. Number must be in the range 1 to 65535.
  /// [service] The name of the service to place in the gRPC HealthCheckRequest
  GetServiceTemplateSpecContainerReadinessProbeGrpc({
    required this.port,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'service': service,
    };
  }

  factory GetServiceTemplateSpecContainerReadinessProbeGrpc.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateSpecContainerReadinessProbeGrpc(
      port: pulumi.Input.fromValue(map['port'] as int),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}

