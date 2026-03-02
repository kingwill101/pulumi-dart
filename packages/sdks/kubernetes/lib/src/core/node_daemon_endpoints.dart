// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'daemon_endpoint.dart';

/// NodeDaemonEndpoints lists ports opened by daemons running on the Node.
class NodeDaemonEndpoints {
  /// Endpoint on which Kubelet is listening.
  final pulumi.Input<DaemonEndpoint>? kubeletEndpoint;

  /// Creates a new [NodeDaemonEndpoints].
  /// [kubeletEndpoint] Endpoint on which Kubelet is listening.
  NodeDaemonEndpoints({
    this.kubeletEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubeletEndpoint': ?pulumi.Input.mapOptionalInputValue<DaemonEndpoint, Map<String, dynamic>>(kubeletEndpoint, (value) => value.toMap()),
    };
  }

  factory NodeDaemonEndpoints.fromMap(Map<String, dynamic> map) {
    return NodeDaemonEndpoints(
      kubeletEndpoint: map['kubeletEndpoint'] == null ? null : (DaemonEndpoint.fromMap((map['kubeletEndpoint'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

