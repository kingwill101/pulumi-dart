// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeTcpSocket {
  /// Optional: Host name to connect to, defaults to the model serving
  /// container's IP.
  final pulumi.Input<String>? host;
  /// Number of the port to access on the container.
  /// Number must be in the range 1 to 65535.
  final pulumi.Input<int>? port;

  /// Creates a new [AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeTcpSocket].
  /// [host] Optional: Host name to connect to, defaults to the model serving
  /// [port] Number of the port to access on the container.
  AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeTcpSocket({
    this.host,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'port': ?port,
    };
  }

  factory AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeTcpSocket.fromMap(Map<String, dynamic> map) {
    return AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeTcpSocket(
      host: map['host'] == null ? null : (map['host'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
    );
  }
}

