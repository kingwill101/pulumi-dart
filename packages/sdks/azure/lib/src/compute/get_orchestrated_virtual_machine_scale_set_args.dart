// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_orchestrated_virtual_machine_scale_set_get_orchestrated_virtual_machine_scale_set_args_doc}
/// Arguments for getOrchestratedVirtualMachineScaleSet.
/// {@endtemplate}
/// {@macro pulumi_compute_get_orchestrated_virtual_machine_scale_set_get_orchestrated_virtual_machine_scale_set_args_doc}
class GetOrchestratedVirtualMachineScaleSetArgs {
  /// The name of this Orchestrated Virtual Machine Scale Set.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Orchestrated Virtual Machine Scale Set exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetOrchestratedVirtualMachineScaleSetArgs].
  /// [name] The name of this Orchestrated Virtual Machine Scale Set.
  /// [resourceGroupName] The name of the Resource Group where the Orchestrated Virtual Machine Scale Set exists.
  const GetOrchestratedVirtualMachineScaleSetArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetOrchestratedVirtualMachineScaleSetArgs.fromMap(Map<String, dynamic> map) {
    return GetOrchestratedVirtualMachineScaleSetArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

