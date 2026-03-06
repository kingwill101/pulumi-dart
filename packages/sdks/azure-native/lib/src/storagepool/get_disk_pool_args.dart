// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagepool_get_disk_pool_args_doc}
/// Arguments for getDiskPool.
/// {@endtemplate}
/// {@macro pulumi_storagepool_get_disk_pool_args_doc}
class GetDiskPoolArgs {
  /// The name of the Disk Pool.
  final pulumi.Input<String> diskPoolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDiskPoolArgs].
  /// [diskPoolName] The name of the Disk Pool.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetDiskPoolArgs({
    required this.diskPoolName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskPoolName': diskPoolName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDiskPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetDiskPoolArgs(
      diskPoolName: pulumi.Input.fromValue(map['diskPoolName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

