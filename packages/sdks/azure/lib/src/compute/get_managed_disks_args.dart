// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_managed_disks_get_managed_disks_args_doc}
/// Arguments for getManagedDisks.
/// {@endtemplate}
/// {@macro pulumi_compute_get_managed_disks_get_managed_disks_args_doc}
class GetManagedDisksArgs {
  /// Specifies the name of the Resource Group where this Managed Disk exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagedDisksArgs].
  /// [resourceGroupName] Specifies the name of the Resource Group where this Managed Disk exists.
  const GetManagedDisksArgs({
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedDisksArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedDisksArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

