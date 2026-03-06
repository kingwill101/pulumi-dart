// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redhatopenshift_get_machine_pool_args_doc}
/// Arguments for getMachinePool.
/// {@endtemplate}
/// {@macro pulumi_redhatopenshift_get_machine_pool_args_doc}
class GetMachinePoolArgs {
  /// The name of the MachinePool resource.
  final pulumi.Input<String> childResourceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the OpenShift cluster resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetMachinePoolArgs].
  /// [childResourceName] The name of the MachinePool resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the OpenShift cluster resource.
  const GetMachinePoolArgs({
    required this.childResourceName,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childResourceName': childResourceName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetMachinePoolArgs.fromMap(Map<String, dynamic> map) {
    return GetMachinePoolArgs(
      childResourceName: pulumi.Input.fromValue(map['childResourceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}

