// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_virtual_cluster_config_kubernetes_cluster_config_gke_cluster_config_node_pool_target_node_pool_config_autoscaling.dart';
import 'cluster_virtual_cluster_config_kubernetes_cluster_config_gke_cluster_config_node_pool_target_node_pool_config_config.dart';

class ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfig {
  /// The autoscaler configuration for this node pool.
  /// The autoscaler is enabled only when a valid configuration is present.
  final pulumi.Input<ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfigAutoscaling>? autoscaling;
  /// The node pool configuration.
  final pulumi.Input<ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfigConfig>? config;
  /// The list of Compute Engine zones where node pool nodes associated
  /// with a Dataproc on GKE virtual cluster will be located.
  /// - - -
  final pulumi.Input<List<String>> locations;

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
      'autoscaling': ?pulumi.Input.mapOptionalInputValue<ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfigAutoscaling, Map<String, dynamic>>(autoscaling, (value) => value.toMap()),
      'config': ?pulumi.Input.mapOptionalInputValue<ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfigConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'locations': locations,
    };
  }

  factory ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfig.fromMap(Map<String, dynamic> map) {
    return ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfig(
      autoscaling: (() { final guardedValue = map['autoscaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfigAutoscaling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfigConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      locations: pulumi.Input.fromValue((map['locations'] as List).cast<String>()),
    );
  }
}

