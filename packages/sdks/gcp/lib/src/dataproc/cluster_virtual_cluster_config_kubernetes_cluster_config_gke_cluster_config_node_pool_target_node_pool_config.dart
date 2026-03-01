// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_virtual_cluster_config_kubernetes_cluster_config_gke_cluster_config_node_pool_target_node_pool_config_autoscaling.dart';
import 'cluster_virtual_cluster_config_kubernetes_cluster_config_gke_cluster_config_node_pool_target_node_pool_config_config.dart';

class ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfig {
  /// The autoscaler configuration for this node pool.
  /// The autoscaler is enabled only when a valid configuration is present.
  final ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfigAutoscaling? autoscaling;
  /// The node pool configuration.
  final ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfigConfig? config;
  /// The list of Compute Engine zones where node pool nodes associated
  /// with a Dataproc on GKE virtual cluster will be located.
  /// - - -
  final List<String> locations;

  /// Creates a new [ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfig].
  /// [autoscaling] The autoscaler configuration for this node pool.
  /// [config] The node pool configuration.
  /// [locations] The list of Compute Engine zones where node pool nodes associated
  ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfig({
    this.autoscaling,
    this.config,
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscaling': ?autoscaling == null ? null : autoscaling!.toMap(),
      'config': ?config == null ? null : config!.toMap(),
      'locations': locations,
    };
  }

  factory ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfig.fromMap(Map<String, dynamic> map) {
    return ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfig(
      autoscaling: map['autoscaling'] == null ? null : ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfigAutoscaling.fromMap((map['autoscaling'] as Map).cast<String, dynamic>()),
      config: map['config'] == null ? null : ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfigConfig.fromMap((map['config'] as Map).cast<String, dynamic>()),
      locations: (map['locations'] as List).cast<String>(),
    );
  }
}

