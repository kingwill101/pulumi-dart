// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeGrpc {
  /// Port number of the gRPC service. Number must be in the range 1 to 65535.
  final pulumi.Input<int>? port;
  /// Service is the name of the service to place in the gRPC
  /// HealthCheckRequest. See
  /// https://github.com/grpc/grpc/blob/master/doc/health-checking.md.
  /// If this is not specified, the default behavior is defined by gRPC.
  final pulumi.Input<String>? service;

  /// Creates a new [AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeGrpc].
  /// [port] Port number of the gRPC service. Number must be in the range 1 to 65535.
  /// [service] Service is the name of the service to place in the gRPC
  const AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeGrpc({
    this.port,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'service': ?service,
    };
  }

  factory AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeGrpc.fromMap(Map<String, dynamic> map) {
    return AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbeGrpc(
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

