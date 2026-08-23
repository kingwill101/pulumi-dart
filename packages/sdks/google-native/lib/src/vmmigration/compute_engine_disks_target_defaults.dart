// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disks_migration_vm_target_defaults.dart';
import 'persistent_disk_defaults.dart';

/// ComputeEngineDisksTargetDefaults is a collection of details for creating Persistent Disks in a target Compute Engine project.
class ComputeEngineDisksTargetDefaults {
  /// The details of each Persistent Disk to create.
  final pulumi.Input<List<PersistentDiskDefaults>>? disks;
  /// Details of the disk only migration target.
  final pulumi.Input<Map<String, dynamic>>? disksTargetDefaults;
  /// The full path of the resource of type TargetProject which represents the Compute Engine project in which to create the Persistent Disks.
  final pulumi.Input<String>? targetProject;
  /// Details of the VM migration target.
  final pulumi.Input<DisksMigrationVmTargetDefaults>? vmTargetDefaults;
  /// The zone in which to create the Persistent Disks.
  final pulumi.Input<String>? zone;

  /// Creates a new [ComputeEngineDisksTargetDefaults].
  /// [disks] The details of each Persistent Disk to create.
  /// [disksTargetDefaults] Details of the disk only migration target.
  /// [targetProject] The full path of the resource of type TargetProject which represents the Compute Engine project in which to create the Persistent Disks.
  /// [vmTargetDefaults] Details of the VM migration target.
  /// [zone] The zone in which to create the Persistent Disks.
  const ComputeEngineDisksTargetDefaults({
    this.disks,
    this.disksTargetDefaults,
    this.targetProject,
    this.vmTargetDefaults,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disks': ?pulumi.Input.mapOptionalInputValue<List<PersistentDiskDefaults>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<PersistentDiskDefaults, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disksTargetDefaults': ?disksTargetDefaults,
      'targetProject': ?targetProject,
      'vmTargetDefaults': ?pulumi.Input.mapOptionalInputValue<DisksMigrationVmTargetDefaults, Map<String, dynamic>>(vmTargetDefaults, (value) => value.toMap()),
      'zone': ?zone,
    };
  }

  factory ComputeEngineDisksTargetDefaults.fromMap(Map<String, dynamic> map) {
    return ComputeEngineDisksTargetDefaults(
      disks: (() { final guardedValue = map['disks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PersistentDiskDefaults>(guardedValue, (value) => PersistentDiskDefaults.fromMap((value as Map).cast<String, dynamic>()))); })(),
      disksTargetDefaults: (() { final guardedValue = map['disksTargetDefaults']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      targetProject: (() { final guardedValue = map['targetProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmTargetDefaults: (() { final guardedValue = map['vmTargetDefaults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DisksMigrationVmTargetDefaults.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
