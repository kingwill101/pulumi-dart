// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disks_migration_vm_target_defaults_response_vmmigration_v1alpha1.dart';
import 'persistent_disk_defaults_response_vmmigration_v1alpha1.dart';

/// ComputeEngineDisksTargetDefaults is a collection of details for creating Persistent Disks in a target Compute Engine project.
class ComputeEngineDisksTargetDefaultsResponseVmmigrationV1alpha1 {
  /// The details of each Persistent Disk to create.
  final pulumi.Input<List<PersistentDiskDefaultsResponseVmmigrationV1alpha1>> disks;
  /// Details of the disk only migration target.
  final pulumi.Input<Map<String, dynamic>> disksTargetDefaults;
  /// The full path of the resource of type TargetProject which represents the Compute Engine project in which to create the Persistent Disks.
  final pulumi.Input<String> targetProject;
  /// Details of the VM migration target.
  final pulumi.Input<DisksMigrationVmTargetDefaultsResponseVmmigrationV1alpha1> vmTargetDefaults;
  /// The zone in which to create the Persistent Disks.
  final pulumi.Input<String> zone;

  /// Creates a new [ComputeEngineDisksTargetDefaultsResponseVmmigrationV1alpha1].
  /// [disks] The details of each Persistent Disk to create.
  /// [disksTargetDefaults] Details of the disk only migration target.
  /// [targetProject] The full path of the resource of type TargetProject which represents the Compute Engine project in which to create the Persistent Disks.
  /// [vmTargetDefaults] Details of the VM migration target.
  /// [zone] The zone in which to create the Persistent Disks.
  ComputeEngineDisksTargetDefaultsResponseVmmigrationV1alpha1({
    required this.disks,
    required this.disksTargetDefaults,
    required this.targetProject,
    required this.vmTargetDefaults,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disks': pulumi.Input.mapInputValue<List<PersistentDiskDefaultsResponseVmmigrationV1alpha1>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<PersistentDiskDefaultsResponseVmmigrationV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disksTargetDefaults': disksTargetDefaults,
      'targetProject': targetProject,
      'vmTargetDefaults': pulumi.Input.mapInputValue<DisksMigrationVmTargetDefaultsResponseVmmigrationV1alpha1, Map<String, dynamic>>(vmTargetDefaults, (value) => value.toMap()),
      'zone': zone,
    };
  }

  factory ComputeEngineDisksTargetDefaultsResponseVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return ComputeEngineDisksTargetDefaultsResponseVmmigrationV1alpha1(
      disks: (pulumi.Input.decodeList<PersistentDiskDefaultsResponseVmmigrationV1alpha1>(map['disks'], (value) => PersistentDiskDefaultsResponseVmmigrationV1alpha1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      disksTargetDefaults: ((map['disksTargetDefaults'] as Map).cast<String, dynamic>()).input(),
      targetProject: (map['targetProject'] as String).input(),
      vmTargetDefaults: (DisksMigrationVmTargetDefaultsResponseVmmigrationV1alpha1.fromMap((map['vmTargetDefaults'] as Map).cast<String, dynamic>())).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}

