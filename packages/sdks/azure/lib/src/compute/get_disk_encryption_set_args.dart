// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_disk_encryption_set_get_disk_encryption_set_args_doc}
/// Arguments for getDiskEncryptionSet.
/// {@endtemplate}
/// {@macro pulumi_compute_get_disk_encryption_set_get_disk_encryption_set_args_doc}
class GetDiskEncryptionSetArgs {
  /// The name of the existing Disk Encryption Set.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Disk Encryption Set exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDiskEncryptionSetArgs].
  /// [name] The name of the existing Disk Encryption Set.
  /// [resourceGroupName] The name of the Resource Group where the Disk Encryption Set exists.
  const GetDiskEncryptionSetArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDiskEncryptionSetArgs.fromMap(Map<String, dynamic> map) {
    return GetDiskEncryptionSetArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

