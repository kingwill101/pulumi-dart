// ignore_for_file: unused_element, unnecessary_cast


class KubernetesClusterDefaultNodePoolUpgradeSettings {
  /// The amount of time in minutes to wait on eviction of pods and graceful termination per node. This eviction wait time honors pod disruption budgets for upgrades. If this time is exceeded, the upgrade fails. Unsetting this after configuring it will force a new resource to be created.
  final int? drainTimeoutInMinutes;
  /// The maximum number or percentage of nodes which will be added to the Node Pool size during an upgrade.
  ///
  /// > **Note:** If a percentage is provided, the number of surge nodes is calculated from the `node_count` value on the current cluster. Node surge can allow a cluster to have more nodes than `max_count` during an upgrade. Ensure that your cluster has enough [IP space](https://docs.microsoft.com/azure/aks/upgrade-cluster#customize-node-surge-upgrade) during an upgrade.
  final String maxSurge;
  /// The amount of time in minutes to wait after draining a node and before reimaging and moving on to next node.
  ///
  /// > **Note:** The default value for `node_soak_duration_in_minutes` is `0`. <!-- The 0 default happens in code, not in Schema -->.
  final int? nodeSoakDurationInMinutes;
  /// Specifies the action when a node is undrainable during upgrade. Possible values are `Cordon` and `Schedule`. Unsetting this after configuring it will force a new resource to be created.
  final String? undrainableNodeBehavior;

  /// Creates a new [KubernetesClusterDefaultNodePoolUpgradeSettings].
  /// [drainTimeoutInMinutes] The amount of time in minutes to wait on eviction of pods and graceful termination per node. This eviction wait time honors pod disruption budgets for upgrades. If this time is exceeded, the upgrade fails. Unsetting this after configuring it will force a new resource to be created.
  /// [maxSurge] The maximum number or percentage of nodes which will be added to the Node Pool size during an upgrade.
  /// [nodeSoakDurationInMinutes] The amount of time in minutes to wait after draining a node and before reimaging and moving on to next node.
  /// [undrainableNodeBehavior] Specifies the action when a node is undrainable during upgrade. Possible values are `Cordon` and `Schedule`. Unsetting this after configuring it will force a new resource to be created.
  KubernetesClusterDefaultNodePoolUpgradeSettings({
    this.drainTimeoutInMinutes,
    required this.maxSurge,
    this.nodeSoakDurationInMinutes,
    this.undrainableNodeBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'drainTimeoutInMinutes': ?drainTimeoutInMinutes,
      'maxSurge': maxSurge,
      'nodeSoakDurationInMinutes': ?nodeSoakDurationInMinutes,
      'undrainableNodeBehavior': ?undrainableNodeBehavior,
    };
  }

  factory KubernetesClusterDefaultNodePoolUpgradeSettings.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterDefaultNodePoolUpgradeSettings(
      drainTimeoutInMinutes: map['drainTimeoutInMinutes'] == null ? null : map['drainTimeoutInMinutes'] as int,
      maxSurge: map['maxSurge'] as String,
      nodeSoakDurationInMinutes: map['nodeSoakDurationInMinutes'] == null ? null : map['nodeSoakDurationInMinutes'] as int,
      undrainableNodeBehavior: map['undrainableNodeBehavior'] == null ? null : map['undrainableNodeBehavior'] as String,
    );
  }
}

