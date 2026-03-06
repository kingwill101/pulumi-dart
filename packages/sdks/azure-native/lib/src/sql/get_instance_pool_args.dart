// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_instance_pool_args_doc}
/// Arguments for getInstancePool.
/// {@endtemplate}
/// {@macro pulumi_sql_get_instance_pool_args_doc}
class GetInstancePoolArgs {
  /// The name of the instance pool to be retrieved.
  final pulumi.Input<String> instancePoolName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetInstancePoolArgs].
  /// [instancePoolName] The name of the instance pool to be retrieved.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  const GetInstancePoolArgs({
    required this.instancePoolName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instancePoolName': instancePoolName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetInstancePoolArgs.fromMap(Map<String, dynamic> map) {
    return GetInstancePoolArgs(
      instancePoolName: pulumi.Input.fromValue(map['instancePoolName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

