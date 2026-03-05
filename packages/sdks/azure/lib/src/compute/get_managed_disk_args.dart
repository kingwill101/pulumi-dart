// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_managed_disk_get_managed_disk_args_doc}
/// Arguments for getManagedDisk.
/// {@endtemplate}
/// {@macro pulumi_compute_get_managed_disk_get_managed_disk_args_doc}
class GetManagedDiskArgs {
  /// Specifies the name of the Managed Disk.
  final pulumi.Input<String> name;
  /// Specifies the name of the Resource Group where this Managed Disk exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagedDiskArgs].
  /// [name] Specifies the name of the Managed Disk.
  /// [resourceGroupName] Specifies the name of the Resource Group where this Managed Disk exists.
  GetManagedDiskArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedDiskArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedDiskArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

