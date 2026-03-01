// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_desktopvirtualization_get_host_pool_get_host_pool_args_doc}
/// Arguments for getHostPool.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_get_host_pool_get_host_pool_args_doc}
class GetHostPoolArgs {
  /// The name of the Virtual Desktop Host Pool to retrieve.
  final pulumi.Input<String> name;
  /// The name of the resource group where the Virtual Desktop Host Pool exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetHostPoolArgs].
  /// [name] The name of the Virtual Desktop Host Pool to retrieve.
  /// [resourceGroupName] The name of the resource group where the Virtual Desktop Host Pool exists.
  GetHostPoolArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetHostPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetHostPoolArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

