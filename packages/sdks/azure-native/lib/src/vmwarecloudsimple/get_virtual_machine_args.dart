// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwarecloudsimple_get_virtual_machine_args_doc}
/// Arguments for getVirtualMachine.
/// {@endtemplate}
/// {@macro pulumi_vmwarecloudsimple_get_virtual_machine_args_doc}
class GetVirtualMachineArgs {
  /// The name of the resource group
  final pulumi.Input<String> resourceGroupName;
  /// virtual machine name
  final pulumi.Input<String> virtualMachineName;

  /// Creates a new [GetVirtualMachineArgs].
  /// [resourceGroupName] The name of the resource group
  /// [virtualMachineName] virtual machine name
  GetVirtualMachineArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> virtualMachineName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualMachineName = pulumi.Input.asInput<String>(virtualMachineName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'virtualMachineName': virtualMachineName,
    };
  }

  factory GetVirtualMachineArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      virtualMachineName: pulumi.Output.create<String>(map['virtualMachineName'] as String),
    );
  }
}

