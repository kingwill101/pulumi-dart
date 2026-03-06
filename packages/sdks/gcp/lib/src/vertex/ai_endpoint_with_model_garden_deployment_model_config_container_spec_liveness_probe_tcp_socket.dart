// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeTcpSocket {
  /// Optional: Host name to connect to, defaults to the model serving
  /// container's IP.
  final pulumi.Input<String>? host;
  /// Number of the port to access on the container.
  /// Number must be in the range 1 to 65535.
  final pulumi.Input<int>? port;

  /// Creates a new [AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeTcpSocket].
  /// [host] Optional: Host name to connect to, defaults to the model serving
  /// [port] Number of the port to access on the container.
  const AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeTcpSocket({
    this.host,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'port': ?port,
    };
  }

  factory AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeTcpSocket.fromMap(Map<String, dynamic> map) {
    return AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeTcpSocket(
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

