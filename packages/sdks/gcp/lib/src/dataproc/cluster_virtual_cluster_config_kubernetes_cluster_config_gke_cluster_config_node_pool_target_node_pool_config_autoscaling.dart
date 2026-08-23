// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfigAutoscaling {
  /// The maximum number of nodes in the node pool. Must be &gt;= minNodeCount, and must be &gt; 0.
  final pulumi.Input<int>? maxNodeCount;
  /// The minimum number of nodes in the node pool. Must be &gt;= 0 and &lt;= maxNodeCount.
  final pulumi.Input<int>? minNodeCount;

  /// Creates a new [ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfigAutoscaling].
  /// [maxNodeCount] The maximum number of nodes in the node pool. Must be &gt;= minNodeCount, and must be &gt; 0.
  /// [minNodeCount] The minimum number of nodes in the node pool. Must be &gt;= 0 and &lt;= maxNodeCount.
  const ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfigAutoscaling({
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
      maxNodeCount: (() { final guardedValue = map['maxNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minNodeCount: (() { final guardedValue = map['minNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
