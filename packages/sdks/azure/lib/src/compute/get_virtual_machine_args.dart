// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_virtual_machine_get_virtual_machine_args_doc}
/// Arguments for getVirtualMachine.
/// {@endtemplate}
/// {@macro pulumi_compute_get_virtual_machine_get_virtual_machine_args_doc}
class GetVirtualMachineArgs {
  /// Specifies the name of the Virtual Machine.
  final pulumi.Input<String> name;
  /// Specifies the name of the resource group the Virtual Machine is located in.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetVirtualMachineArgs].
  /// [name] Specifies the name of the Virtual Machine.
  /// [resourceGroupName] Specifies the name of the resource group the Virtual Machine is located in.
  const GetVirtualMachineArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetVirtualMachineArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
