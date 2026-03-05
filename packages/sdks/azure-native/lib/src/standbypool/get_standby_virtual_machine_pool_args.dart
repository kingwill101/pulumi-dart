// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_standbypool_get_standby_virtual_machine_pool_args_doc}
/// Arguments for getStandbyVirtualMachinePool.
/// {@endtemplate}
/// {@macro pulumi_standbypool_get_standby_virtual_machine_pool_args_doc}
class GetStandbyVirtualMachinePoolArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the standby virtual machine pool
  final pulumi.Input<String> standbyVirtualMachinePoolName;

  /// Creates a new [GetStandbyVirtualMachinePoolArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [standbyVirtualMachinePoolName] Name of the standby virtual machine pool
  GetStandbyVirtualMachinePoolArgs({
    required this.resourceGroupName,
    required this.standbyVirtualMachinePoolName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'standbyVirtualMachinePoolName': standbyVirtualMachinePoolName,
    };
  }

  factory GetStandbyVirtualMachinePoolArgs.fromMap(Map<String, dynamic> map) {
    return GetStandbyVirtualMachinePoolArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      standbyVirtualMachinePoolName: pulumi.Input.fromValue(map['standbyVirtualMachinePoolName'] as String),
    );
  }
}

