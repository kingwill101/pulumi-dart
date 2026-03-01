// ignore_for_file: unused_element, unnecessary_cast


class OrchestratedVirtualMachineScaleSetSkuProfile {
  /// Specifies the allocation strategy for the virtual machine scale set based on which the VMs will be allocated. Possible values are `CapacityOptimized`, `LowestPrice` and `Prioritized`.
  final String allocationStrategy;
  /// Specifies the VM sizes for the virtual machine scale set.
  final List<String> vmSizes;

  /// Creates a new [OrchestratedVirtualMachineScaleSetSkuProfile].
  /// [allocationStrategy] Specifies the allocation strategy for the virtual machine scale set based on which the VMs will be allocated. Possible values are `CapacityOptimized`, `LowestPrice` and `Prioritized`.
  /// [vmSizes] Specifies the VM sizes for the virtual machine scale set.
  OrchestratedVirtualMachineScaleSetSkuProfile({
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
      allocationStrategy: map['allocationStrategy'] as String,
      vmSizes: (map['vmSizes'] as List).cast<String>(),
    );
  }
}

