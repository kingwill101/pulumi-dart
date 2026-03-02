// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfigAutoscaling {
  /// The maximum number of nodes in the node pool. Must be >= minNodeCount, and must be > 0.
  final pulumi.Input<int>? maxNodeCount;
  /// The minimum number of nodes in the node pool. Must be >= 0 and <= maxNodeCount.
  final pulumi.Input<int>? minNodeCount;

  /// Creates a new [ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfigAutoscaling].
  /// [maxNodeCount] The maximum number of nodes in the node pool. Must be >= minNodeCount, and must be > 0.
  /// [minNodeCount] The minimum number of nodes in the node pool. Must be >= 0 and <= maxNodeCount.
  ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfigAutoscaling({
    this.maxNodeCount,
    this.minNodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNodeCount': ?maxNodeCount,
      'minNodeCount': ?minNodeCount,
    };
  }

  factory ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfigAutoscaling.fromMap(Map<String, dynamic> map) {
    return ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfigAutoscaling(
      maxNodeCount: map['maxNodeCount'] == null ? null : (map['maxNodeCount'] as int).input(),
      minNodeCount: map['minNodeCount'] == null ? null : (map['minNodeCount'] as int).input(),
    );
  }
}

