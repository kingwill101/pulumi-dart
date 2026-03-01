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
  GetMachinePoolArgs({
    required pulumi.Output<String> childResourceName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      childResourceName = pulumi.Input.asInput<String>(childResourceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childResourceName': childResourceName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetMachinePoolArgs.fromMap(Map<String, dynamic> map) {
    return GetMachinePoolArgs(
      childResourceName: pulumi.Output.create<String>(map['childResourceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

