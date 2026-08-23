// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_managed_dev_ops_pool_get_managed_dev_ops_pool_args_doc}
/// Arguments for getManagedDevOpsPool.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_managed_dev_ops_pool_get_managed_dev_ops_pool_args_doc}
class GetManagedDevOpsPoolArgs {
  /// The name of this Managed DevOps Pool.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Managed DevOps Pool exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagedDevOpsPoolArgs].
  /// [name] The name of this Managed DevOps Pool.
  /// [resourceGroupName] The name of the Resource Group where the Managed DevOps Pool exists.
  const GetManagedDevOpsPoolArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedDevOpsPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedDevOpsPoolArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
