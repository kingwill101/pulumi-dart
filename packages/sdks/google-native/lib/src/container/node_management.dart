// ignore_for_file: unused_element, unnecessary_cast


/// NodeManagement defines the set of node management services turned on for the node pool.
class NodeManagement {
  /// A flag that specifies whether the node auto-repair is enabled for the node pool. If enabled, the nodes in this node pool will be monitored and, if they fail health checks too many times, an automatic repair action will be triggered.
  final bool? autoRepair;
  /// A flag that specifies whether node auto-upgrade is enabled for the node pool. If enabled, node auto-upgrade helps keep the nodes in your node pool up to date with the latest release version of Kubernetes.
  final bool? autoUpgrade;
  /// Specifies the Auto Upgrade knobs for the node pool.
  final Map<String, dynamic>? upgradeOptions;

  /// Creates a new [NodeManagement].
  /// [autoRepair] A flag that specifies whether the node auto-repair is enabled for the node pool. If enabled, the nodes in this node pool will be monitored and, if they fail health checks too many times, an automatic repair action will be triggered.
  /// [autoUpgrade] A flag that specifies whether node auto-upgrade is enabled for the node pool. If enabled, node auto-upgrade helps keep the nodes in your node pool up to date with the latest release version of Kubernetes.
  /// [upgradeOptions] Specifies the Auto Upgrade knobs for the node pool.
  NodeManagement({
    this.autoRepair,
    this.autoUpgrade,
    this.upgradeOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRepair': ?autoRepair,
      'autoUpgrade': ?autoUpgrade,
      'upgradeOptions': ?upgradeOptions,
    };
  }

  factory NodeManagement.fromMap(Map<String, dynamic> map) {
    return NodeManagement(
      autoRepair: map['autoRepair'] == null ? null : map['autoRepair'] as bool,
      autoUpgrade: map['autoUpgrade'] == null ? null : map['autoUpgrade'] as bool,
      upgradeOptions: map['upgradeOptions'] == null ? null : (map['upgradeOptions'] as Map).cast<String, dynamic>(),
    );
  }
}

