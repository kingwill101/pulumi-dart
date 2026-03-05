// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterDefaultNodePoolUpgradeSettings {
  /// The amount of time in minutes to wait on eviction of pods and graceful termination per node. This eviction wait time honors pod disruption budgets for upgrades. If this time is exceeded, the upgrade fails. Unsetting this after configuring it will force a new resource to be created.
  final pulumi.Input<int>? drainTimeoutInMinutes;
  /// The maximum number or percentage of nodes which will be added to the Node Pool size during an upgrade.
  ///
  /// &gt; **Note:** If a percentage is provided, the number of surge nodes is calculated from the `node_count` value on the current cluster. Node surge can allow a cluster to have more nodes than `max_count` during an upgrade. Ensure that your cluster has enough [IP space](https://docs.microsoft.com/azure/aks/upgrade-cluster#customize-node-surge-upgrade) during an upgrade.
  final pulumi.Input<String> maxSurge;
  /// The amount of time in minutes to wait after draining a node and before reimaging and moving on to next node.
  ///
  /// &gt; **Note:** The default value for `node_soak_duration_in_minutes` is `0`. &lt;!-- The 0 default happens in code, not in Schema --&gt;.
  final pulumi.Input<int>? nodeSoakDurationInMinutes;
  /// Specifies the action when a node is undrainable during upgrade. Possible values are `Cordon` and `Schedule`. Unsetting this after configuring it will force a new resource to be created.
  final pulumi.Input<String>? undrainableNodeBehavior;

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
      drainTimeoutInMinutes: (() { final guardedValue = map['drainTimeoutInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxSurge: pulumi.Input.fromValue(map['maxSurge'] as String),
      nodeSoakDurationInMinutes: (() { final guardedValue = map['nodeSoakDurationInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      undrainableNodeBehavior: (() { final guardedValue = map['undrainableNodeBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

