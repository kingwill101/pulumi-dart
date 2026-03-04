// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_standbypool_get_standby_container_group_pool_args_doc}
/// Arguments for getStandbyContainerGroupPool.
/// {@endtemplate}
/// {@macro pulumi_standbypool_get_standby_container_group_pool_args_doc}
class GetStandbyContainerGroupPoolArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Name of the standby container group pool
  final pulumi.Input<String> standbyContainerGroupPoolName;

  /// Creates a new [GetStandbyContainerGroupPoolArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [standbyContainerGroupPoolName] Name of the standby container group pool
  GetStandbyContainerGroupPoolArgs({
    required this.resourceGroupName,
    required this.standbyContainerGroupPoolName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'standbyContainerGroupPoolName': standbyContainerGroupPoolName,
    };
  }

  factory GetStandbyContainerGroupPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetStandbyContainerGroupPoolArgs(
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      standbyContainerGroupPoolName: pulumi.Input.fromValue(
        map['standbyContainerGroupPoolName'] as String,
      ),
    );
  }
}
