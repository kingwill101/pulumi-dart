// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkcloud_get_bare_metal_machine_args_doc}
/// Arguments for getBareMetalMachine.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_get_bare_metal_machine_args_doc}
class GetBareMetalMachineArgs {
  /// The name of the bare metal machine.
  final pulumi.Input<String> bareMetalMachineName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetBareMetalMachineArgs].
  /// [bareMetalMachineName] The name of the bare metal machine.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetBareMetalMachineArgs({
    required this.bareMetalMachineName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bareMetalMachineName': bareMetalMachineName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBareMetalMachineArgs.fromMap(Map<String, dynamic> map) {
    return GetBareMetalMachineArgs(
      bareMetalMachineName: pulumi.Input.fromValue(map['bareMetalMachineName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
