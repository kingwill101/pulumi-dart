// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_dedicated_host_group_get_dedicated_host_group_args_doc}
/// Arguments for getDedicatedHostGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_get_dedicated_host_group_get_dedicated_host_group_args_doc}
class GetDedicatedHostGroupArgs {
  /// Specifies the name of the Dedicated Host Group.
  final pulumi.Input<String> name;
  /// Specifies the name of the resource group the Dedicated Host Group is located in.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDedicatedHostGroupArgs].
  /// [name] Specifies the name of the Dedicated Host Group.
  /// [resourceGroupName] Specifies the name of the resource group the Dedicated Host Group is located in.
  const GetDedicatedHostGroupArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDedicatedHostGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostGroupArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

