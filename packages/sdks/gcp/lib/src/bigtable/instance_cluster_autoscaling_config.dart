// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceClusterAutoscalingConfig {
  /// The target CPU utilization for autoscaling, in percentage. Must be between 10 and 80.
  final pulumi.Input<int> cpuTarget;
  /// The maximum number of nodes for autoscaling.
  final pulumi.Input<int> maxNodes;
  /// The minimum number of nodes for autoscaling.
  final pulumi.Input<int> minNodes;
  /// The target storage utilization for autoscaling, in GB, for each node in a cluster. This number is limited between 2560 (2.5TiB) and 5120 (5TiB) for a SSD cluster and between 8192 (8TiB) and 16384 (16 TiB) for an HDD cluster. If not set, whatever is already set for the cluster will not change, or if the cluster is just being created, it will use the default value of 2560 for SSD clusters and 8192 for HDD clusters.
  ///
  /// !&gt; **Warning**: Only one of `autoscaling_config` or `num_nodes` should be set for a cluster. If both are set, `num_nodes` is ignored. If none is set, autoscaling will be disabled and sized to the current node count.
  final pulumi.Input<int>? storageTarget;

  /// Creates a new [InstanceClusterAutoscalingConfig].
  /// [cpuTarget] The target CPU utilization for autoscaling, in percentage. Must be between 10 and 80.
  /// [maxNodes] The maximum number of nodes for autoscaling.
  /// [minNodes] The minimum number of nodes for autoscaling.
  /// [storageTarget] The target storage utilization for autoscaling, in GB, for each node in a cluster. This number is limited between 2560 (2.5TiB) and 5120 (5TiB) for a SSD cluster and between 8192 (8TiB) and 16384 (16 TiB) for an HDD cluster. If not set, whatever is already set for the cluster will not change, or if the cluster is just being created, it will use the default value of 2560 for SSD clusters and 8192 for HDD clusters.
  InstanceClusterAutoscalingConfig({
    required this.cpuTarget,
    required this.maxNodes,
    required this.minNodes,
    this.storageTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuTarget': cpuTarget,
      'maxNodes': maxNodes,
      'minNodes': minNodes,
      'storageTarget': ?storageTarget,
    };
  }

  factory InstanceClusterAutoscalingConfig.fromMap(Map<String, dynamic> map) {
    return InstanceClusterAutoscalingConfig(
      cpuTarget: pulumi.Input.fromValue(map['cpuTarget'] as int),
      maxNodes: pulumi.Input.fromValue(map['maxNodes'] as int),
      minNodes: pulumi.Input.fromValue(map['minNodes'] as int),
      storageTarget: (() { final guardedValue = map['storageTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

