// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NodeManagement defines the set of node management services turned on for the node pool.
class NodeManagementContainerV1beta1 {
  /// Whether the nodes will be automatically repaired.
  final pulumi.Input<bool>? autoRepair;
  /// Whether the nodes will be automatically upgraded.
  final pulumi.Input<bool>? autoUpgrade;
  /// Specifies the Auto Upgrade knobs for the node pool.
  final pulumi.Input<Map<String, dynamic>>? upgradeOptions;

  /// Creates a new [NodeManagementContainerV1beta1].
  /// [autoRepair] Whether the nodes will be automatically repaired.
  /// [autoUpgrade] Whether the nodes will be automatically upgraded.
  /// [upgradeOptions] Specifies the Auto Upgrade knobs for the node pool.
  const NodeManagementContainerV1beta1({
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

  factory NodeManagementContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NodeManagementContainerV1beta1(
      autoRepair: (() { final guardedValue = map['autoRepair']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoUpgrade: (() { final guardedValue = map['autoUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      upgradeOptions: (() { final guardedValue = map['upgradeOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
