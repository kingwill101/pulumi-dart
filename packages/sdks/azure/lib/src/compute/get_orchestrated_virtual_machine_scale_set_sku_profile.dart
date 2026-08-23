// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_orchestrated_virtual_machine_scale_set_sku_profile_virtual_machine_size.dart';

class GetOrchestratedVirtualMachineScaleSetSkuProfile {
  /// The allocation strategy used by this Orchestrated Virtual Machine Scale Set.
  final pulumi.Input<String> allocationStrategy;
  /// A list of `virtualMachineSize` blocks as defined below.
  final pulumi.Input<List<GetOrchestratedVirtualMachineScaleSetSkuProfileVirtualMachineSize>> virtualMachineSizes;

  /// Creates a new [GetOrchestratedVirtualMachineScaleSetSkuProfile].
  /// [allocationStrategy] The allocation strategy used by this Orchestrated Virtual Machine Scale Set.
  /// [virtualMachineSizes] A list of `virtualMachineSize` blocks as defined below.
  const GetOrchestratedVirtualMachineScaleSetSkuProfile({
    required this.allocationStrategy,
    required this.virtualMachineSizes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationStrategy': allocationStrategy,
      'virtualMachineSizes': pulumi.Input.mapInputValue<List<GetOrchestratedVirtualMachineScaleSetSkuProfileVirtualMachineSize>, List<Map<String, dynamic>>>(virtualMachineSizes, (value) => pulumi.Input.encodeList<GetOrchestratedVirtualMachineScaleSetSkuProfileVirtualMachineSize, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetOrchestratedVirtualMachineScaleSetSkuProfile.fromMap(Map<String, dynamic> map) {
    return GetOrchestratedVirtualMachineScaleSetSkuProfile(
      allocationStrategy: pulumi.Input.fromValue(map['allocationStrategy'] as String),
      virtualMachineSizes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetOrchestratedVirtualMachineScaleSetSkuProfileVirtualMachineSize>(map['virtualMachineSizes']!, (value) => GetOrchestratedVirtualMachineScaleSetSkuProfileVirtualMachineSize.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
