// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redhatopenshift_machine_pool_args_doc}
/// The set of arguments for MachinePool.
/// {@endtemplate}
/// {@macro pulumi_redhatopenshift_machine_pool_args_doc}
class MachinePoolArgs {
  /// The name of the MachinePool resource.
  final pulumi.Input<String?>? childResourceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the OpenShift cluster resource.
  final pulumi.Input<String> resourceName;
  final pulumi.Input<String?>? resources;

  /// Creates a new [MachinePoolArgs].
  /// [childResourceName] The name of the MachinePool resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the OpenShift cluster resource.
  /// [resources] Optional.
  const MachinePoolArgs({
    this.childResourceName,
    required this.resourceGroupName,
    required this.resourceName,
    this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childResourceName': ?childResourceName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'resources': ?resources,
    };
  }

  factory MachinePoolArgs.fromMap(Map<String, dynamic> map) {
    return MachinePoolArgs(
      childResourceName: (() { final guardedValue = map['childResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
