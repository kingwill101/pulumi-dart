// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disks_migration_vm_target_details_response.dart';
import 'persistent_disk_response.dart';

/// ComputeEngineDisksTargetDetails is a collection of created Persistent Disks details.
class ComputeEngineDisksTargetDetailsResponse {
  /// The details of each created Persistent Disk.
  final pulumi.Input<List<PersistentDiskResponse>> disks;
  /// Details of the disks-only migration target.
  final pulumi.Input<Map<String, dynamic>> disksTargetDetails;
  /// Details for the VM the migrated data disks are attached to.
  final pulumi.Input<DisksMigrationVmTargetDetailsResponse> vmTargetDetails;

  /// Creates a new [ComputeEngineDisksTargetDetailsResponse].
  /// [disks] The details of each created Persistent Disk.
  /// [disksTargetDetails] Details of the disks-only migration target.
  /// [vmTargetDetails] Details for the VM the migrated data disks are attached to.
  const ComputeEngineDisksTargetDetailsResponse({
    required this.disks,
    required this.disksTargetDetails,
    required this.vmTargetDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disks': pulumi.Input.mapInputValue<List<PersistentDiskResponse>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<PersistentDiskResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disksTargetDetails': disksTargetDetails,
      'vmTargetDetails': pulumi.Input.mapInputValue<DisksMigrationVmTargetDetailsResponse, Map<String, dynamic>>(vmTargetDetails, (value) => value.toMap()),
    };
  }

  factory ComputeEngineDisksTargetDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ComputeEngineDisksTargetDetailsResponse(
      disks: pulumi.Input.fromValue(pulumi.Input.decodeList<PersistentDiskResponse>(map['disks']!, (value) => PersistentDiskResponse.fromMap((value as Map).cast<String, dynamic>()))),
      disksTargetDetails: pulumi.Input.fromValue((map['disksTargetDetails']! as Map).cast<String, dynamic>()),
      vmTargetDetails: pulumi.Input.fromValue(DisksMigrationVmTargetDetailsResponse.fromMap((map['vmTargetDetails']! as Map).cast<String, dynamic>())),
    );
  }
}

