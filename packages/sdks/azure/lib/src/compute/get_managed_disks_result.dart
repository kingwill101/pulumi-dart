// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_disks_disk.dart';

/// Result data returned by getManagedDisks.
class GetManagedDisksResult {
  /// a `disk` block as detailed below.
  final List<GetManagedDisksDisk> disks;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String resourceGroupName;

  /// Creates a new [GetManagedDisksResult].
  /// [disks] a `disk` block as detailed below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [resourceGroupName] Required.
  GetManagedDisksResult({
    required this.disks,
    required this.id,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disks':
          pulumi.Input.encodeList<GetManagedDisksDisk, Map<String, dynamic>>(
            disks,
            (value) => value.toMap(),
          ),
      'id': id,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedDisksResult.fromMap(Map<String, dynamic> map) {
    return GetManagedDisksResult(
      disks: pulumi.Input.decodeList<GetManagedDisksDisk>(
        map['disks']!,
        (value) =>
            GetManagedDisksDisk.fromMap((value as Map).cast<String, dynamic>()),
      ),
      id: map['id'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}
