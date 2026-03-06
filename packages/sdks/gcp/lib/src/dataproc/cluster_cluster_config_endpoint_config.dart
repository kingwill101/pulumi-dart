// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterClusterConfigEndpointConfig {
  /// The flag to enable http access to specific ports
  /// on the cluster from external sources (aka Component Gateway). Defaults to false.
  final pulumi.Input<bool> enableHttpPortAccess;
  /// The map of port descriptions to URLs. Will only be populated if
  /// `enable_http_port_access` is true.
  final pulumi.Input<Map<String, String>>? httpPorts;

  /// Creates a new [ClusterClusterConfigEndpointConfig].
  /// [enableHttpPortAccess] The flag to enable http access to specific ports
  /// [httpPorts] The map of port descriptions to URLs. Will only be populated if
  const ClusterClusterConfigEndpointConfig({
    required this.enableHttpPortAccess,
    this.httpPorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableHttpPortAccess': enableHttpPortAccess,
      'httpPorts': ?httpPorts,
    };
  }

  factory ClusterClusterConfigEndpointConfig.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigEndpointConfig(
      enableHttpPortAccess: pulumi.Input.fromValue(map['enableHttpPortAccess'] as bool),
      httpPorts: (() { final guardedValue = map['httpPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

