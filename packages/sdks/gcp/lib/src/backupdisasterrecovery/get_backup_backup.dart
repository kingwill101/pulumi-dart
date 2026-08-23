// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_backup_compute_instance_backup_property.dart';
import 'get_backup_backup_disk_backup_property.dart';

class GetBackupBackup {
  /// Id of the requesting object, Backup.
  final pulumi.Input<String> backupId;
  /// The ID of the Backup Vault of the Data Source in which the Backup belongs.
  final pulumi.Input<String> backupVaultId;
  /// Compute instance related properties of the backup.
  final pulumi.Input<List<GetBackupBackupComputeInstanceBackupProperty>> computeInstanceBackupProperties;
  /// The time when the backup was created.
  final pulumi.Input<String> createTime;
  /// The ID of the Data Source in which the Backup belongs.
  final pulumi.Input<String> dataSourceId;
  /// Disk related properties of the backup.
  final pulumi.Input<List<GetBackupBackupDiskBackupProperty>> diskBackupProperties;
  /// The location in which the Backup belongs.
  final pulumi.Input<String> location;
  /// Name of the resource.
  final pulumi.Input<String> name;

  /// Creates a new [GetBackupBackup].
  /// [backupId] Id of the requesting object, Backup.
  /// [backupVaultId] The ID of the Backup Vault of the Data Source in which the Backup belongs.
  /// [computeInstanceBackupProperties] Compute instance related properties of the backup.
  /// [createTime] The time when the backup was created.
  /// [dataSourceId] The ID of the Data Source in which the Backup belongs.
  /// [diskBackupProperties] Disk related properties of the backup.
  /// [location] The location in which the Backup belongs.
  /// [name] Name of the resource.
  const GetBackupBackup({
    required this.backupId,
    required this.backupVaultId,
    required this.computeInstanceBackupProperties,
    required this.createTime,
    required this.dataSourceId,
    required this.diskBackupProperties,
    required this.location,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': backupId,
      'backupVaultId': backupVaultId,
      'computeInstanceBackupProperties': pulumi.Input.mapInputValue<List<GetBackupBackupComputeInstanceBackupProperty>, List<Map<String, dynamic>>>(computeInstanceBackupProperties, (value) => pulumi.Input.encodeList<GetBackupBackupComputeInstanceBackupProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': createTime,
      'dataSourceId': dataSourceId,
      'diskBackupProperties': pulumi.Input.mapInputValue<List<GetBackupBackupDiskBackupProperty>, List<Map<String, dynamic>>>(diskBackupProperties, (value) => pulumi.Input.encodeList<GetBackupBackupDiskBackupProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': location,
      'name': name,
    };
  }

  factory GetBackupBackup.fromMap(Map<String, dynamic> map) {
    return GetBackupBackup(
      backupId: pulumi.Input.fromValue(map['backupId'] as String),
      backupVaultId: pulumi.Input.fromValue(map['backupVaultId'] as String),
      computeInstanceBackupProperties: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBackupBackupComputeInstanceBackupProperty>(map['computeInstanceBackupProperties']!, (value) => GetBackupBackupComputeInstanceBackupProperty.fromMap((value as Map).cast<String, dynamic>()))),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      dataSourceId: pulumi.Input.fromValue(map['dataSourceId'] as String),
      diskBackupProperties: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBackupBackupDiskBackupProperty>(map['diskBackupProperties']!, (value) => GetBackupBackupDiskBackupProperty.fromMap((value as Map).cast<String, dynamic>()))),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
