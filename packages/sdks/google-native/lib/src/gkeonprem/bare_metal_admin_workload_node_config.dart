// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// BareMetalAdminWorkloadNodeConfig specifies the workload node configurations.
class BareMetalAdminWorkloadNodeConfig {
  /// The maximum number of pods a node can run. The size of the CIDR range assigned to the node will be derived from this parameter. By default 110 Pods are created per Node. Upper bound is 250 for both HA and non-HA admin cluster. Lower bound is 64 for non-HA admin cluster and 32 for HA admin cluster.
  final pulumi.Input<String>? maxPodsPerNode;

  /// Creates a new [BareMetalAdminWorkloadNodeConfig].
  /// [maxPodsPerNode] The maximum number of pods a node can run. The size of the CIDR range assigned to the node will be derived from this parameter. By default 110 Pods are created per Node. Upper bound is 250 for both HA and non-HA admin cluster. Lower bound is 64 for non-HA admin cluster and 32 for HA admin cluster.
  BareMetalAdminWorkloadNodeConfig({this.maxPodsPerNode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'maxPodsPerNode': ?maxPodsPerNode};
  }

  factory BareMetalAdminWorkloadNodeConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminWorkloadNodeConfig(
      maxPodsPerNode: (() {
        final guardedValue = map['maxPodsPerNode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
