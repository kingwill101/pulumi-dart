// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrchestratedVirtualMachineScaleSetSkuProfile {
  /// Specifies the allocation strategy for the virtual machine scale set based on which the VMs will be allocated. Possible values are `CapacityOptimized`, `LowestPrice` and `Prioritized`.
  final pulumi.Input<String> allocationStrategy;
  /// Specifies the VM sizes for the virtual machine scale set.
  final pulumi.Input<List<String>> vmSizes;

  /// Creates a new [OrchestratedVirtualMachineScaleSetSkuProfile].
  /// [allocationStrategy] Specifies the allocation strategy for the virtual machine scale set based on which the VMs will be allocated. Possible values are `CapacityOptimized`, `LowestPrice` and `Prioritized`.
  /// [vmSizes] Specifies the VM sizes for the virtual machine scale set.
  const OrchestratedVirtualMachineScaleSetSkuProfile({
    required this.allocationStrategy,
    required this.vmSizes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationStrategy': allocationStrategy,
      'vmSizes': vmSizes,
    };
  }

  factory OrchestratedVirtualMachineScaleSetSkuProfile.fromMap(Map<String, dynamic> map) {
    return OrchestratedVirtualMachineScaleSetSkuProfile(
      allocationStrategy: pulumi.Input.fromValue(map['allocationStrategy'] as String),
      vmSizes: pulumi.Input.fromValue((map['vmSizes'] as List).cast<String>()),
    );
  }
}

