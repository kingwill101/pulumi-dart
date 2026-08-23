// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiReasoningEngineSpecDeploymentSpecKeepAliveProbeHttpGet {
  /// Required. Specifies the path of the HTTP GET request (e.g., `"/is_busy"`).
  final pulumi.Input<String> path;
  /// Optional. Specifies the port number on the container to which the request is sent.
  final pulumi.Input<int>? port;

  /// Creates a new [AiReasoningEngineSpecDeploymentSpecKeepAliveProbeHttpGet].
  /// [path] Required. Specifies the path of the HTTP GET request (e.g., `"/is_busy"`).
  /// [port] Optional. Specifies the port number on the container to which the request is sent.
  const AiReasoningEngineSpecDeploymentSpecKeepAliveProbeHttpGet({
    required this.path,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'port': ?port,
    };
  }

  factory AiReasoningEngineSpecDeploymentSpecKeepAliveProbeHttpGet.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineSpecDeploymentSpecKeepAliveProbeHttpGet(
      path: pulumi.Input.fromValue(map['path'] as String),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
