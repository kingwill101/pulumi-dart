// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A PersistentDirectory backed by a Compute Engine regional persistent disk. The persistent_directories field is repeated, but it may contain only one entry. It creates a [persistent disk](https://cloud.google.com/compute/docs/disks/persistent-disks) that mounts to the workstation VM at `/home` when the session starts and detaches when the session ends. If this field is empty, workstations created with this configuration do not have a persistent home directory.
class GceRegionalPersistentDiskResponse {
  /// Optional. The [type of the persistent disk](https://cloud.google.com/compute/docs/disks#disk-types) for the home directory. Defaults to `"pd-standard"`.
  final pulumi.Input<String> diskType;
  /// Optional. Type of file system that the disk should be formatted with. The workstation image must support this file system type. Must be empty if source_snapshot is set. Defaults to `"ext4"`.
  final pulumi.Input<String> fsType;
  /// Optional. Whether the persistent disk should be deleted when the workstation is deleted. Valid values are `DELETE` and `RETAIN`. Defaults to `DELETE`.
  final pulumi.Input<String> reclaimPolicy;
  /// Optional. The GB capacity of a persistent home directory for each workstation created with this configuration. Must be empty if source_snapshot is set. Valid values are `10`, `50`, `100`, `200`, `500`, or `1000`. Defaults to `200`. If less than `200` GB, the disk_type must be `"pd-balanced"` or `"pd-ssd"`.
  final pulumi.Input<int> sizeGb;
  /// Optional. Name of the snapshot to use as the source for the disk. If set, size_gb and fs_type must be empty.
  final pulumi.Input<String> sourceSnapshot;

  /// Creates a new [GceRegionalPersistentDiskResponse].
  /// [diskType] Optional. The [type of the persistent disk](https://cloud.google.com/compute/docs/disks#disk-types) for the home directory. Defaults to `"pd-standard"`.
  /// [fsType] Optional. Type of file system that the disk should be formatted with. The workstation image must support this file system type. Must be empty if source_snapshot is set. Defaults to `"ext4"`.
  /// [reclaimPolicy] Optional. Whether the persistent disk should be deleted when the workstation is deleted. Valid values are `DELETE` and `RETAIN`. Defaults to `DELETE`.
  /// [sizeGb] Optional. The GB capacity of a persistent home directory for each workstation created with this configuration. Must be empty if source_snapshot is set. Valid values are `10`, `50`, `100`, `200`, `500`, or `1000`. Defaults to `200`. If less than `200` GB, the disk_type must be `"pd-balanced"` or `"pd-ssd"`.
  /// [sourceSnapshot] Optional. Name of the snapshot to use as the source for the disk. If set, size_gb and fs_type must be empty.
  GceRegionalPersistentDiskResponse({
    required this.diskType,
    required this.fsType,
    required this.reclaimPolicy,
    required this.sizeGb,
    required this.sourceSnapshot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskType': diskType,
      'fsType': fsType,
      'reclaimPolicy': reclaimPolicy,
      'sizeGb': sizeGb,
      'sourceSnapshot': sourceSnapshot,
    };
  }

  factory GceRegionalPersistentDiskResponse.fromMap(Map<String, dynamic> map) {
    return GceRegionalPersistentDiskResponse(
      diskType: pulumi.Input.fromValue(map['diskType'] as String),
      fsType: pulumi.Input.fromValue(map['fsType'] as String),
      reclaimPolicy: pulumi.Input.fromValue(map['reclaimPolicy'] as String),
      sizeGb: pulumi.Input.fromValue(map['sizeGb'] as int),
      sourceSnapshot: pulumi.Input.fromValue(map['sourceSnapshot'] as String),
    );
  }
}

