// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterControlPlaneLocal {
  /// Only machines matching this filter will be allowed to host control
  /// plane nodes. The filtering language accepts strings like "name=&lt;name&gt;",
  /// and is documented here: [AIP-160](https://google.aip.dev/160).
  final pulumi.Input<String>? machineFilter;
  /// The number of nodes to serve as replicas of the Control Plane.
  /// Only 1 and 3 are supported.
  final pulumi.Input<int>? nodeCount;
  /// Name of the Google Distributed Cloud Edge zones where this node pool
  /// will be created. For example: `us-central1-edge-customer-a`.
  final pulumi.Input<String>? nodeLocation;
  /// Policy configuration about how user applications are deployed.
  /// Possible values are: `SHARED_DEPLOYMENT_POLICY_UNSPECIFIED`, `ALLOWED`, `DISALLOWED`.
  final pulumi.Input<String>? sharedDeploymentPolicy;

  /// Creates a new [ClusterControlPlaneLocal].
  /// [machineFilter] Only machines matching this filter will be allowed to host control
  /// [nodeCount] The number of nodes to serve as replicas of the Control Plane.
  /// [nodeLocation] Name of the Google Distributed Cloud Edge zones where this node pool
  /// [sharedDeploymentPolicy] Policy configuration about how user applications are deployed.
  ClusterControlPlaneLocal({
    this.machineFilter,
    this.nodeCount,
    this.nodeLocation,
    this.sharedDeploymentPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'machineFilter': ?machineFilter,
      'nodeCount': ?nodeCount,
      'nodeLocation': ?nodeLocation,
      'sharedDeploymentPolicy': ?sharedDeploymentPolicy,
    };
  }

  factory ClusterControlPlaneLocal.fromMap(Map<String, dynamic> map) {
    return ClusterControlPlaneLocal(
      machineFilter: (() { final guardedValue = map['machineFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nodeLocation: (() { final guardedValue = map['nodeLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedDeploymentPolicy: (() { final guardedValue = map['sharedDeploymentPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

