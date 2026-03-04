// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_disk_access_get_disk_access_args_doc}
/// Arguments for getDiskAccess.
/// {@endtemplate}
/// {@macro pulumi_compute_get_disk_access_get_disk_access_args_doc}
class GetDiskAccessArgs {
  /// The name of this Disk Access.
  final pulumi.Input<String> name;

  /// The name of the Resource Group where the Disk Access exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDiskAccessArgs].
  /// [name] The name of this Disk Access.
  /// [resourceGroupName] The name of the Resource Group where the Disk Access exists.
  GetDiskAccessArgs({required this.name, required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDiskAccessArgs.fromMap(Map<String, dynamic> map) {
    return GetDiskAccessArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
