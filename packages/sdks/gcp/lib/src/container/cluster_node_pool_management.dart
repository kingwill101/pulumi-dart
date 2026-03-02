// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolManagement {
  /// Specifies whether the node auto-repair is enabled for the node pool. If enabled, the nodes in this node pool will be monitored and, if they fail health checks too many times, an automatic repair action will be triggered.
  ///
  /// This block also contains several computed attributes, documented below.
  final pulumi.Input<bool>? autoRepair;
  /// Specifies whether node auto-upgrade is enabled for the node pool. If enabled, node auto-upgrade helps keep the nodes in your node pool up to date with the latest release version of Kubernetes.
  final pulumi.Input<bool>? autoUpgrade;

  /// Creates a new [ClusterNodePoolManagement].
  /// [autoRepair] Specifies whether the node auto-repair is enabled for the node pool. If enabled, the nodes in this node pool will be monitored and, if they fail health checks too many times, an automatic repair action will be triggered.
  /// [autoUpgrade] Specifies whether node auto-upgrade is enabled for the node pool. If enabled, node auto-upgrade helps keep the nodes in your node pool up to date with the latest release version of Kubernetes.
  ClusterNodePoolManagement({
    this.autoRepair,
    this.autoUpgrade,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRepair': ?autoRepair,
      'autoUpgrade': ?autoUpgrade,
    };
  }

  factory ClusterNodePoolManagement.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolManagement(
      autoRepair: map['autoRepair'] == null ? null : (map['autoRepair'] as bool).input(),
      autoUpgrade: map['autoUpgrade'] == null ? null : (map['autoUpgrade'] as bool).input(),
    );
  }
}

