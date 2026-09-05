// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'daemon_endpoint_patch.dart';

/// NodeDaemonEndpoints lists ports opened by daemons running on the Node.
class NodeDaemonEndpointsPatch {
  /// Endpoint on which Kubelet is listening.
  final pulumi.Input<DaemonEndpointPatch?>? kubeletEndpoint;

  /// Creates a new [NodeDaemonEndpointsPatch].
  /// [kubeletEndpoint] Endpoint on which Kubelet is listening.
  const NodeDaemonEndpointsPatch({
    this.kubeletEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubeletEndpoint': ?pulumi.Input.mapOptionalInputValue<DaemonEndpointPatch, Map<String, dynamic>>(kubeletEndpoint, (value) => value.toMap()),
    };
  }

  factory NodeDaemonEndpointsPatch.fromMap(Map<String, dynamic> map) {
    return NodeDaemonEndpointsPatch(
      kubeletEndpoint: (() { final guardedValue = map['kubeletEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DaemonEndpointPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
