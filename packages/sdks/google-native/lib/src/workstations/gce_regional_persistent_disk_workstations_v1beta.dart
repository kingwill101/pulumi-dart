// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gce_regional_persistent_disk_reclaim_policy_workstations_v1beta.dart';

/// A PersistentDirectory backed by a Compute Engine regional persistent disk. The persistent_directories field is repeated, but it may contain only one entry. It creates a [persistent disk](https://cloud.google.com/compute/docs/disks/persistent-disks) that mounts to the workstation VM at `/home` when the session starts and detaches when the session ends. If this field is empty, workstations created with this configuration do not have a persistent home directory.
class GceRegionalPersistentDiskWorkstationsV1beta {
  /// Optional. The [type of the persistent disk](https://cloud.google.com/compute/docs/disks#disk-types) for the home directory. Defaults to `"pd-standard"`.
  final pulumi.Input<String>? diskType;
  /// Optional. Type of file system that the disk should be formatted with. The workstation image must support this file system type. Must be empty if source_snapshot is set. Defaults to `"ext4"`.
  final pulumi.Input<String>? fsType;
  /// Optional. Whether the persistent disk should be deleted when the workstation is deleted. Valid values are `DELETE` and `RETAIN`. Defaults to `DELETE`.
  final pulumi.Input<GceRegionalPersistentDiskReclaimPolicyWorkstationsV1beta>? reclaimPolicy;
  /// Optional. The GB capacity of a persistent home directory for each workstation created with this configuration. Must be empty if source_snapshot is set. Valid values are `10`, `50`, `100`, `200`, `500`, or `1000`. Defaults to `200`. If less than `200` GB, the disk_type must be `"pd-balanced"` or `"pd-ssd"`.
  final pulumi.Input<int>? sizeGb;
  /// Optional. Name of the snapshot to use as the source for the disk. If set, size_gb and fs_type must be empty.
  final pulumi.Input<String>? sourceSnapshot;

  /// Creates a new [GceRegionalPersistentDiskWorkstationsV1beta].
  /// [diskType] Optional. The [type of the persistent disk](https://cloud.google.com/compute/docs/disks#disk-types) for the home directory. Defaults to `"pd-standard"`.
  /// [fsType] Optional. Type of file system that the disk should be formatted with. The workstation image must support this file system type. Must be empty if source_snapshot is set. Defaults to `"ext4"`.
  /// [reclaimPolicy] Optional. Whether the persistent disk should be deleted when the workstation is deleted. Valid values are `DELETE` and `RETAIN`. Defaults to `DELETE`.
  /// [sizeGb] Optional. The GB capacity of a persistent home directory for each workstation created with this configuration. Must be empty if source_snapshot is set. Valid values are `10`, `50`, `100`, `200`, `500`, or `1000`. Defaults to `200`. If less than `200` GB, the disk_type must be `"pd-balanced"` or `"pd-ssd"`.
  /// [sourceSnapshot] Optional. Name of the snapshot to use as the source for the disk. If set, size_gb and fs_type must be empty.
  const GceRegionalPersistentDiskWorkstationsV1beta({
    this.diskType,
    this.fsType,
    this.reclaimPolicy,
    this.sizeGb,
    this.sourceSnapshot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskType': ?diskType,
      'fsType': ?fsType,
      'reclaimPolicy': ?pulumi.Input.mapOptionalInputValue<GceRegionalPersistentDiskReclaimPolicyWorkstationsV1beta, String>(reclaimPolicy, (value) => value.wireValue),
      'sizeGb': ?sizeGb,
      'sourceSnapshot': ?sourceSnapshot,
    };
  }

  factory GceRegionalPersistentDiskWorkstationsV1beta.fromMap(Map<String, dynamic> map) {
    return GceRegionalPersistentDiskWorkstationsV1beta(
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fsType: (() { final guardedValue = map['fsType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reclaimPolicy: (() { final guardedValue = map['reclaimPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GceRegionalPersistentDiskReclaimPolicyWorkstationsV1beta.fromValue(guardedValue as String)); })(),
      sizeGb: (() { final guardedValue = map['sizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sourceSnapshot: (() { final guardedValue = map['sourceSnapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

