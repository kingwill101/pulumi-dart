// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTemplateContainerReadinessProbeGrpc {
  /// Port number to access on the container. Number must be in the range 1 to 65535.
  /// If not specified, defaults to the same value as container.ports[0].containerPort.
  final pulumi.Input<int?>? port;
  /// The name of the service to place in the gRPC HealthCheckRequest
  /// (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md).
  /// If this is not specified, the default behavior is defined by gRPC.
  ///
  /// &lt;a name="nestedTemplateContainersBuildInfo"&gt;&lt;/a&gt;The `buildInfo` block contains:
  final pulumi.Input<String?>? service;

  /// Creates a new [ServiceTemplateContainerReadinessProbeGrpc].
  /// [port] Port number to access on the container. Number must be in the range 1 to 65535.
  /// [service] The name of the service to place in the gRPC HealthCheckRequest
  const ServiceTemplateContainerReadinessProbeGrpc({
    this.port,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'service': ?service,
    };
  }

  factory ServiceTemplateContainerReadinessProbeGrpc.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateContainerReadinessProbeGrpc(
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
