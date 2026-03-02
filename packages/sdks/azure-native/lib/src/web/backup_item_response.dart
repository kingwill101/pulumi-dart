// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_backup_setting_response.dart';

/// Backup description.
class BackupItemResponse {
  /// Id of the backup.
  final pulumi.Input<int> backupId;
  /// Name of the blob which contains data for this backup.
  final pulumi.Input<String> blobName;
  /// Unique correlation identifier. Please use this along with the timestamp while communicating with Azure support.
  final pulumi.Input<String> correlationId;
  /// Timestamp of the backup creation.
  final pulumi.Input<String> created;
  /// List of databases included in the backup.
  final pulumi.Input<List<DatabaseBackupSettingResponse>> databases;
  /// Timestamp when this backup finished.
  final pulumi.Input<String> finishedTimeStamp;
  /// Resource Id.
  final pulumi.Input<String> id;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Timestamp of a last restore operation which used this backup.
  final pulumi.Input<String> lastRestoreTimeStamp;
  /// Details regarding this backup. Might contain an error message.
  final pulumi.Input<String> log;
  /// Resource Name.
  final pulumi.Input<String> name;
  /// True if this backup has been created due to a schedule being triggered.
  final pulumi.Input<bool> scheduled;
  /// Size of the backup in bytes.
  final pulumi.Input<double> sizeInBytes;
  /// Backup status.
  final pulumi.Input<String> status;
  /// SAS URL for the storage account container which contains this backup.
  final pulumi.Input<String> storageAccountUrl;
  /// Resource type.
  final pulumi.Input<String> type;
  /// Size of the original web app which has been backed up.
  final pulumi.Input<double> websiteSizeInBytes;

  /// Creates a new [BackupItemResponse].
  /// [backupId] Id of the backup.
  /// [blobName] Name of the blob which contains data for this backup.
  /// [correlationId] Unique correlation identifier. Please use this along with the timestamp while communicating with Azure support.
  /// [created] Timestamp of the backup creation.
  /// [databases] List of databases included in the backup.
  /// [finishedTimeStamp] Timestamp when this backup finished.
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [lastRestoreTimeStamp] Timestamp of a last restore operation which used this backup.
  /// [log] Details regarding this backup. Might contain an error message.
  /// [name] Resource Name.
  /// [scheduled] True if this backup has been created due to a schedule being triggered.
  /// [sizeInBytes] Size of the backup in bytes.
  /// [status] Backup status.
  /// [storageAccountUrl] SAS URL for the storage account container which contains this backup.
  /// [type] Resource type.
  /// [websiteSizeInBytes] Size of the original web app which has been backed up.
  BackupItemResponse({
    required this.backupId,
    required this.blobName,
    required this.correlationId,
    required this.created,
    required this.databases,
    required this.finishedTimeStamp,
    required this.id,
    this.kind,
    required this.lastRestoreTimeStamp,
    required this.log,
    required this.name,
    required this.scheduled,
    required this.sizeInBytes,
    required this.status,
    required this.storageAccountUrl,
    required this.type,
    required this.websiteSizeInBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': backupId,
      'blobName': blobName,
      'correlationId': correlationId,
      'created': created,
      'databases': pulumi.Input.mapInputValue<List<DatabaseBackupSettingResponse>, List<Map<String, dynamic>>>(databases, (value) => pulumi.Input.encodeList<DatabaseBackupSettingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'finishedTimeStamp': finishedTimeStamp,
      'id': id,
      'kind': ?kind,
      'lastRestoreTimeStamp': lastRestoreTimeStamp,
      'log': log,
      'name': name,
      'scheduled': scheduled,
      'sizeInBytes': sizeInBytes,
      'status': status,
      'storageAccountUrl': storageAccountUrl,
      'type': type,
      'websiteSizeInBytes': websiteSizeInBytes,
    };
  }

  factory BackupItemResponse.fromMap(Map<String, dynamic> map) {
    return BackupItemResponse(
      backupId: (map['backupId'] as int).input(),
      blobName: (map['blobName'] as String).input(),
      correlationId: (map['correlationId'] as String).input(),
      created: (map['created'] as String).input(),
      databases: (pulumi.Input.decodeList<DatabaseBackupSettingResponse>(map['databases'], (value) => DatabaseBackupSettingResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      finishedTimeStamp: (map['finishedTimeStamp'] as String).input(),
      id: (map['id'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      lastRestoreTimeStamp: (map['lastRestoreTimeStamp'] as String).input(),
      log: (map['log'] as String).input(),
      name: (map['name'] as String).input(),
      scheduled: (map['scheduled'] as bool).input(),
      sizeInBytes: (map['sizeInBytes'] as double).input(),
      status: (map['status'] as String).input(),
      storageAccountUrl: (map['storageAccountUrl'] as String).input(),
      type: (map['type'] as String).input(),
      websiteSizeInBytes: (map['websiteSizeInBytes'] as double).input(),
    );
  }
}

