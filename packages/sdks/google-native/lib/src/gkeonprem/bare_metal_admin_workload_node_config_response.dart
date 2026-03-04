// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// BareMetalAdminWorkloadNodeConfig specifies the workload node configurations.
class BareMetalAdminWorkloadNodeConfigResponse {
  /// The maximum number of pods a node can run. The size of the CIDR range assigned to the node will be derived from this parameter. By default 110 Pods are created per Node. Upper bound is 250 for both HA and non-HA admin cluster. Lower bound is 64 for non-HA admin cluster and 32 for HA admin cluster.
  final pulumi.Input<String> maxPodsPerNode;

  /// Creates a new [BareMetalAdminWorkloadNodeConfigResponse].
  /// [maxPodsPerNode] The maximum number of pods a node can run. The size of the CIDR range assigned to the node will be derived from this parameter. By default 110 Pods are created per Node. Upper bound is 250 for both HA and non-HA admin cluster. Lower bound is 64 for non-HA admin cluster and 32 for HA admin cluster.
  BareMetalAdminWorkloadNodeConfigResponse({required this.maxPodsPerNode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'maxPodsPerNode': maxPodsPerNode};
  }

  factory BareMetalAdminWorkloadNodeConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return BareMetalAdminWorkloadNodeConfigResponse(
      maxPodsPerNode: pulumi.Input.fromValue(map['maxPodsPerNode'] as String),
    );
  }
}
