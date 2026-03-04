// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxVirtualMachineScaleSetAutomaticOsUpgradePolicy {
  /// Should automatic rollbacks be disabled?
  final pulumi.Input<bool> disableAutomaticRollback;

  /// Should OS Upgrades automatically be applied to Scale Set instances in a rolling fashion when a newer version of the OS Image becomes available?
  final pulumi.Input<bool> enableAutomaticOsUpgrade;

  /// Creates a new [LinuxVirtualMachineScaleSetAutomaticOsUpgradePolicy].
  /// [disableAutomaticRollback] Should automatic rollbacks be disabled?
  /// [enableAutomaticOsUpgrade] Should OS Upgrades automatically be applied to Scale Set instances in a rolling fashion when a newer version of the OS Image becomes available?
  LinuxVirtualMachineScaleSetAutomaticOsUpgradePolicy({
    required this.disableAutomaticRollback,
    required this.enableAutomaticOsUpgrade,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableAutomaticRollback': disableAutomaticRollback,
      'enableAutomaticOsUpgrade': enableAutomaticOsUpgrade,
    };
  }

  factory LinuxVirtualMachineScaleSetAutomaticOsUpgradePolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return LinuxVirtualMachineScaleSetAutomaticOsUpgradePolicy(
      disableAutomaticRollback: pulumi.Input.fromValue(
        map['disableAutomaticRollback'] as bool,
      ),
      enableAutomaticOsUpgrade: pulumi.Input.fromValue(
        map['enableAutomaticOsUpgrade'] as bool,
      ),
    );
  }
}
