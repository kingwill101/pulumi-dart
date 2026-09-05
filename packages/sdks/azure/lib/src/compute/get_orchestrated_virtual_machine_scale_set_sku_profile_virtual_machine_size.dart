// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOrchestratedVirtualMachineScaleSetSkuProfileVirtualMachineSize {
  /// The name of this Orchestrated Virtual Machine Scale Set.
  final pulumi.Input<String> name;
  /// The rank of the VM size when `allocationStrategy` is set to `Prioritized`.
  final pulumi.Input<int> rank;

  /// Creates a new [GetOrchestratedVirtualMachineScaleSetSkuProfileVirtualMachineSize].
  /// [name] The name of this Orchestrated Virtual Machine Scale Set.
  /// [rank] The rank of the VM size when `allocationStrategy` is set to `Prioritized`.
  const GetOrchestratedVirtualMachineScaleSetSkuProfileVirtualMachineSize({
    required this.name,
    required this.rank,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'rank': rank,
    };
  }

  factory GetOrchestratedVirtualMachineScaleSetSkuProfileVirtualMachineSize.fromMap(Map<String, dynamic> map) {
    return GetOrchestratedVirtualMachineScaleSetSkuProfileVirtualMachineSize(
      name: pulumi.Input.fromValue(map['name'] as String),
      rank: pulumi.Input.fromValue((map['rank'] as num).toInt()),
    );
  }
}
