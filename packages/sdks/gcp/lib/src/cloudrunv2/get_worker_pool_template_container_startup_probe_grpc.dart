// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerPoolTemplateContainerStartupProbeGrpc {
  /// Optional. Port number of the gRPC service. Number must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  final pulumi.Input<int> port;
  /// Optional. Service is the name of the service to place in the gRPC HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md ). If this is not specified, the default behavior is defined by gRPC
  final pulumi.Input<String> service;

  /// Creates a new [GetWorkerPoolTemplateContainerStartupProbeGrpc].
  /// [port] Optional. Port number of the gRPC service. Number must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  /// [service] Optional. Service is the name of the service to place in the gRPC HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md ). If this is not specified, the default behavior is defined by gRPC
  const GetWorkerPoolTemplateContainerStartupProbeGrpc({
    required this.port,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'service': service,
    };
  }

  factory GetWorkerPoolTemplateContainerStartupProbeGrpc.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolTemplateContainerStartupProbeGrpc(
      port: pulumi.Input.fromValue((map['port'] as num).toInt()),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}
