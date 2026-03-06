// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_upgrade_options_response_container_v1beta1.dart';

/// NodeManagement defines the set of node management services turned on for the node pool.
class NodeManagementResponseContainerV1beta1 {
  /// Whether the nodes will be automatically repaired.
  final pulumi.Input<bool> autoRepair;
  /// Whether the nodes will be automatically upgraded.
  final pulumi.Input<bool> autoUpgrade;
  /// Specifies the Auto Upgrade knobs for the node pool.
  final pulumi.Input<AutoUpgradeOptionsResponseContainerV1beta1> upgradeOptions;

  /// Creates a new [NodeManagementResponseContainerV1beta1].
  /// [autoRepair] Whether the nodes will be automatically repaired.
  /// [autoUpgrade] Whether the nodes will be automatically upgraded.
  /// [upgradeOptions] Specifies the Auto Upgrade knobs for the node pool.
  const NodeManagementResponseContainerV1beta1({
    required this.autoRepair,
    required this.autoUpgrade,
    required this.upgradeOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRepair': autoRepair,
      'autoUpgrade': autoUpgrade,
      'upgradeOptions': pulumi.Input.mapInputValue<AutoUpgradeOptionsResponseContainerV1beta1, Map<String, dynamic>>(upgradeOptions, (value) => value.toMap()),
    };
  }

  factory NodeManagementResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NodeManagementResponseContainerV1beta1(
      autoRepair: pulumi.Input.fromValue(map['autoRepair'] as bool),
      autoUpgrade: pulumi.Input.fromValue(map['autoUpgrade'] as bool),
      upgradeOptions: pulumi.Input.fromValue(AutoUpgradeOptionsResponseContainerV1beta1.fromMap((map['upgradeOptions']! as Map).cast<String, dynamic>())),
    );
  }
}

