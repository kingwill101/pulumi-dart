// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disks_migration_vm_target_defaults_response.dart';
import 'persistent_disk_defaults_response.dart';

/// ComputeEngineDisksTargetDefaults is a collection of details for creating Persistent Disks in a target Compute Engine project.
class ComputeEngineDisksTargetDefaultsResponse {
  /// The details of each Persistent Disk to create.
  final pulumi.Input<List<PersistentDiskDefaultsResponse>> disks;

  /// Details of the disk only migration target.
  final pulumi.Input<Map<String, dynamic>> disksTargetDefaults;

  /// The full path of the resource of type TargetProject which represents the Compute Engine project in which to create the Persistent Disks.
  final pulumi.Input<String> targetProject;

  /// Details of the VM migration target.
  final pulumi.Input<DisksMigrationVmTargetDefaultsResponse> vmTargetDefaults;

  /// The zone in which to create the Persistent Disks.
  final pulumi.Input<String> zone;

  /// Creates a new [ComputeEngineDisksTargetDefaultsResponse].
  /// [disks] The details of each Persistent Disk to create.
  /// [disksTargetDefaults] Details of the disk only migration target.
  /// [targetProject] The full path of the resource of type TargetProject which represents the Compute Engine project in which to create the Persistent Disks.
  /// [vmTargetDefaults] Details of the VM migration target.
  /// [zone] The zone in which to create the Persistent Disks.
  ComputeEngineDisksTargetDefaultsResponse({
    required this.disks,
    required this.disksTargetDefaults,
    required this.targetProject,
    required this.vmTargetDefaults,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disks':
          pulumi.Input.mapInputValue<
            List<PersistentDiskDefaultsResponse>,
            List<Map<String, dynamic>>
          >(
            disks,
            (value) =>
                pulumi.Input.encodeList<
                  PersistentDiskDefaultsResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'disksTargetDefaults': disksTargetDefaults,
      'targetProject': targetProject,
      'vmTargetDefaults':
          pulumi.Input.mapInputValue<
            DisksMigrationVmTargetDefaultsResponse,
            Map<String, dynamic>
          >(vmTargetDefaults, (value) => value.toMap()),
      'zone': zone,
    };
  }

  factory ComputeEngineDisksTargetDefaultsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ComputeEngineDisksTargetDefaultsResponse(
      disks: pulumi.Input.fromValue(
        pulumi.Input.decodeList<PersistentDiskDefaultsResponse>(
          map['disks']!,
          (value) => PersistentDiskDefaultsResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      disksTargetDefaults: pulumi.Input.fromValue(
        (map['disksTargetDefaults']! as Map).cast<String, dynamic>(),
      ),
      targetProject: pulumi.Input.fromValue(map['targetProject'] as String),
      vmTargetDefaults: pulumi.Input.fromValue(
        DisksMigrationVmTargetDefaultsResponse.fromMap(
          (map['vmTargetDefaults']! as Map).cast<String, dynamic>(),
        ),
      ),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
