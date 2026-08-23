// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'orchestrated_virtual_machine_scale_set_sku_profile_virtual_machine_size.dart';

class OrchestratedVirtualMachineScaleSetSkuProfile {
  /// Specifies the allocation strategy for the virtual machine scale set based on which the VMs will be allocated. Possible values are `LowestPrice`, `Prioritized`, and `CapacityOptimized`.
  final pulumi.Input<String> allocationStrategy;
  /// One or more `virtualMachineSize` blocks as defined below.
  ///
  /// &gt; **Note:** When `allocationStrategy` is set to `Prioritized`, you must use the `virtualMachineSize` block to specify rank values.
  final pulumi.Input<List<OrchestratedVirtualMachineScaleSetSkuProfileVirtualMachineSize>>? virtualMachineSizes;
  final pulumi.Input<List<String>>? vmSizes;

  /// Creates a new [OrchestratedVirtualMachineScaleSetSkuProfile].
  /// [allocationStrategy] Specifies the allocation strategy for the virtual machine scale set based on which the VMs will be allocated. Possible values are `LowestPrice`, `Prioritized`, and `CapacityOptimized`.
  /// [virtualMachineSizes] One or more `virtualMachineSize` blocks as defined below.
  /// [vmSizes] Optional.
  const OrchestratedVirtualMachineScaleSetSkuProfile({
    required this.allocationStrategy,
    this.virtualMachineSizes,
    this.vmSizes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationStrategy': allocationStrategy,
      'virtualMachineSizes': ?pulumi.Input.mapOptionalInputValue<List<OrchestratedVirtualMachineScaleSetSkuProfileVirtualMachineSize>, List<Map<String, dynamic>>>(virtualMachineSizes, (value) => pulumi.Input.encodeList<OrchestratedVirtualMachineScaleSetSkuProfileVirtualMachineSize, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vmSizes': ?vmSizes,
    };
  }

  factory OrchestratedVirtualMachineScaleSetSkuProfile.fromMap(Map<String, dynamic> map) {
    return OrchestratedVirtualMachineScaleSetSkuProfile(
      allocationStrategy: pulumi.Input.fromValue(map['allocationStrategy'] as String),
      virtualMachineSizes: (() { final guardedValue = map['virtualMachineSizes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OrchestratedVirtualMachineScaleSetSkuProfileVirtualMachineSize>(guardedValue, (value) => OrchestratedVirtualMachineScaleSetSkuProfileVirtualMachineSize.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vmSizes: (() { final guardedValue = map['vmSizes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
