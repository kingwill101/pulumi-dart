// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagemover_get_storage_mover_args_doc}
/// Arguments for getStorageMover.
/// {@endtemplate}
/// {@macro pulumi_storagemover_get_storage_mover_args_doc}
class GetStorageMoverArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Storage Mover resource.
  final pulumi.Input<String> storageMoverName;

  /// Creates a new [GetStorageMoverArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageMoverName] The name of the Storage Mover resource.
  const GetStorageMoverArgs({
    required this.resourceGroupName,
    required this.storageMoverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'storageMoverName': storageMoverName,
    };
  }

  factory GetStorageMoverArgs.fromMap(Map<String, dynamic> map) {
    return GetStorageMoverArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      storageMoverName: pulumi.Input.fromValue(map['storageMoverName'] as String),
    );
  }
}
