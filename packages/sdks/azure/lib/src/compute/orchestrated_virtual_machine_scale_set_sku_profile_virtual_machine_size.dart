// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrchestratedVirtualMachineScaleSetSkuProfileVirtualMachineSize {
  /// The name of the VM SKU which should be used for this Virtual Machine Scale Set, such as `Standard_B1ls` or `Standard_B2s`.
  ///
  /// &gt; **Note:** `skuProfile` currently supports `Standard_` VM size names from the general-purpose `A`, `B`, `D`, `E`, and `F` families. Specialized families such as `L`, `DC`, and `EC` are not supported. Additional Azure service compatibility limitations may still apply to valid-looking VM size combinations.
  final pulumi.Input<String> name;
  /// Specifies the priority rank of the VM size. Possible values are integers between `1` and `3`, inclusive. Lower values represent higher priority.
  ///
  /// &gt; **Note:** `rank` can only be set when the parent `skuProfile` block sets `allocationStrategy` to `Prioritized`.
  final pulumi.Input<int?>? rank;

  /// Creates a new [OrchestratedVirtualMachineScaleSetSkuProfileVirtualMachineSize].
  /// [name] The name of the VM SKU which should be used for this Virtual Machine Scale Set, such as `Standard_B1ls` or `Standard_B2s`.
  /// [rank] Specifies the priority rank of the VM size. Possible values are integers between `1` and `3`, inclusive. Lower values represent higher priority.
  const OrchestratedVirtualMachineScaleSetSkuProfileVirtualMachineSize({
    required this.name,
    this.rank,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'rank': ?rank,
    };
  }

  factory OrchestratedVirtualMachineScaleSetSkuProfileVirtualMachineSize.fromMap(Map<String, dynamic> map) {
    return OrchestratedVirtualMachineScaleSetSkuProfileVirtualMachineSize(
      name: pulumi.Input.fromValue(map['name'] as String),
      rank: (() { final guardedValue = map['rank']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
