// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTemplateContainerLivenessProbeGrpc {
  /// Port number to access on the container. Number must be in the range 1 to 65535.
  /// If not specified, defaults to the same value as container.ports[0].containerPort.
  final pulumi.Input<int>? port;
  /// The name of the service to place in the gRPC HealthCheckRequest
  /// (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md).
  /// If this is not specified, the default behavior is defined by gRPC.
  ///
  /// <a name="nested_template_containers_build_info"></a>The `build_info` block contains:
  final pulumi.Input<String>? service;

  /// Creates a new [ServiceTemplateContainerLivenessProbeGrpc].
  /// [port] Port number to access on the container. Number must be in the range 1 to 65535.
  /// [service] The name of the service to place in the gRPC HealthCheckRequest
  ServiceTemplateContainerLivenessProbeGrpc({
    this.port,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'service': ?service,
    };
  }

  factory ServiceTemplateContainerLivenessProbeGrpc.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateContainerLivenessProbeGrpc(
      port: map['port'] == null ? null : (map['port'] as int).input(),
      service: map['service'] == null ? null : (map['service'] as String).input(),
    );
  }
}

