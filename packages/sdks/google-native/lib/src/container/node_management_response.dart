// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_upgrade_options_response.dart';

/// NodeManagement defines the set of node management services turned on for the node pool.
class NodeManagementResponse {
  /// A flag that specifies whether the node auto-repair is enabled for the node pool. If enabled, the nodes in this node pool will be monitored and, if they fail health checks too many times, an automatic repair action will be triggered.
  final pulumi.Input<bool> autoRepair;

  /// A flag that specifies whether node auto-upgrade is enabled for the node pool. If enabled, node auto-upgrade helps keep the nodes in your node pool up to date with the latest release version of Kubernetes.
  final pulumi.Input<bool> autoUpgrade;

  /// Specifies the Auto Upgrade knobs for the node pool.
  final pulumi.Input<AutoUpgradeOptionsResponse> upgradeOptions;

  /// Creates a new [NodeManagementResponse].
  /// [autoRepair] A flag that specifies whether the node auto-repair is enabled for the node pool. If enabled, the nodes in this node pool will be monitored and, if they fail health checks too many times, an automatic repair action will be triggered.
  /// [autoUpgrade] A flag that specifies whether node auto-upgrade is enabled for the node pool. If enabled, node auto-upgrade helps keep the nodes in your node pool up to date with the latest release version of Kubernetes.
  /// [upgradeOptions] Specifies the Auto Upgrade knobs for the node pool.
  NodeManagementResponse({
    required this.autoRepair,
    required this.autoUpgrade,
    required this.upgradeOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRepair': autoRepair,
      'autoUpgrade': autoUpgrade,
      'upgradeOptions':
          pulumi.Input.mapInputValue<
            AutoUpgradeOptionsResponse,
            Map<String, dynamic>
          >(upgradeOptions, (value) => value.toMap()),
    };
  }

  factory NodeManagementResponse.fromMap(Map<String, dynamic> map) {
    return NodeManagementResponse(
      autoRepair: pulumi.Input.fromValue(map['autoRepair'] as bool),
      autoUpgrade: pulumi.Input.fromValue(map['autoUpgrade'] as bool),
      upgradeOptions: pulumi.Input.fromValue(
        AutoUpgradeOptionsResponse.fromMap(
          (map['upgradeOptions']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
