// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsVirtualMachineScaleSetScaleIn {
  /// Should the virtual machines chosen for removal be force deleted when the virtual machine scale set is being scaled-in? Possible values are `true` or `false`. Defaults to `false`.
  final pulumi.Input<bool?>? forceDeletionEnabled;
  /// The scale-in policy rule that decides which virtual machines are chosen for removal when a Virtual Machine Scale Set is scaled in. Possible values for the scale-in policy rules are `Default`, `NewestVM` and `OldestVM`, defaults to `Default`. For more information about scale in policy, please [refer to this doc](https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-scale-in-policy).
  final pulumi.Input<String?>? rule;

  /// Creates a new [WindowsVirtualMachineScaleSetScaleIn].
  /// [forceDeletionEnabled] Should the virtual machines chosen for removal be force deleted when the virtual machine scale set is being scaled-in? Possible values are `true` or `false`. Defaults to `false`.
  /// [rule] The scale-in policy rule that decides which virtual machines are chosen for removal when a Virtual Machine Scale Set is scaled in. Possible values for the scale-in policy rules are `Default`, `NewestVM` and `OldestVM`, defaults to `Default`. For more information about scale in policy, please [refer to this doc](https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-scale-in-policy).
  const WindowsVirtualMachineScaleSetScaleIn({
    this.forceDeletionEnabled,
    this.rule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forceDeletionEnabled': ?forceDeletionEnabled,
      'rule': ?rule,
    };
  }

  factory WindowsVirtualMachineScaleSetScaleIn.fromMap(Map<String, dynamic> map) {
    return WindowsVirtualMachineScaleSetScaleIn(
      forceDeletionEnabled: (() { final guardedValue = map['forceDeletionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rule: (() { final guardedValue = map['rule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
