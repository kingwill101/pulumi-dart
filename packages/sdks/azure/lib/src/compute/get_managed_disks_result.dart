// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_disks_disk.dart';

/// Result data returned by getManagedDisks.
class GetManagedDisksResult {
  /// a `disk` block as detailed below.
  final List<GetManagedDisksDisk>? disks;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? resourceGroupName;

  /// Creates a new [GetManagedDisksResult].
  /// [disks] a `disk` block as detailed below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [resourceGroupName] Optional.
  const GetManagedDisksResult({
    this.disks,
    this.id,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disks': ?(() { final guardedValue = disks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetManagedDisksDisk, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory GetManagedDisksResult.fromMap(Map<String, dynamic> map) {
    return GetManagedDisksResult(
      disks: (() { final guardedValue = map['disks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetManagedDisksDisk>(guardedValue, (value) => GetManagedDisksDisk.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
