// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redhatopenshift_machine_pool_args_doc}
/// The set of arguments for MachinePool.
/// {@endtemplate}
/// {@macro pulumi_redhatopenshift_machine_pool_args_doc}
class MachinePoolArgs {
  /// The name of the MachinePool resource.
  final pulumi.Input<String>? childResourceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the OpenShift cluster resource.
  final pulumi.Input<String> resourceName;
  final pulumi.Input<String>? resources;

  /// Creates a new [MachinePoolArgs].
  /// [childResourceName] The name of the MachinePool resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the OpenShift cluster resource.
  /// [resources] Optional.
  MachinePoolArgs({
    pulumi.Output<String>? childResourceName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
    pulumi.Output<String>? resources,
  }) :
      childResourceName = pulumi.Input.asOptionalInput<String>(childResourceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      resources = pulumi.Input.asOptionalInput<String>(resources);

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
      childResourceName: map['childResourceName'] == null ? null : pulumi.Output.create<String>(map['childResourceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
      resources: map['resources'] == null ? null : pulumi.Output.create<String>(map['resources'] as String),
    );
  }
}

