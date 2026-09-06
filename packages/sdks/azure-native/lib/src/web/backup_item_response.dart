// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_backup_setting_response.dart';
import 'system_data_response.dart';

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
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final pulumi.Input<String> id;
  /// Kind of resource.
  final pulumi.Input<String?>? kind;
  /// Timestamp of a last restore operation which used this backup.
  final pulumi.Input<String> lastRestoreTimeStamp;
  /// Details regarding this backup. Might contain an error message.
  final pulumi.Input<String> log;
  /// The name of the resource
  final pulumi.Input<String> name;
  /// True if this backup has been created due to a schedule being triggered.
  final pulumi.Input<bool> scheduled;
  /// Size of the backup in bytes.
  final pulumi.Input<double> sizeInBytes;
  /// Backup status.
  final pulumi.Input<String> status;
  /// SAS URL for the storage account container which contains this backup.
  final pulumi.Input<String> storageAccountUrl;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final pulumi.Input<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
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
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] Kind of resource.
  /// [lastRestoreTimeStamp] Timestamp of a last restore operation which used this backup.
  /// [log] Details regarding this backup. Might contain an error message.
  /// [name] The name of the resource
  /// [scheduled] True if this backup has been created due to a schedule being triggered.
  /// [sizeInBytes] Size of the backup in bytes.
  /// [status] Backup status.
  /// [storageAccountUrl] SAS URL for the storage account container which contains this backup.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [websiteSizeInBytes] Size of the original web app which has been backed up.
  const BackupItemResponse({
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
    required this.systemData,
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
      'systemData': pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(systemData, (value) => value.toMap()),
      'type': type,
      'websiteSizeInBytes': websiteSizeInBytes,
    };
  }

  factory BackupItemResponse.fromMap(Map<String, dynamic> map) {
    return BackupItemResponse(
      backupId: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['backupId'])),
      blobName: pulumi.Input.fromValue(map['blobName'] as String),
      correlationId: pulumi.Input.fromValue(map['correlationId'] as String),
      created: pulumi.Input.fromValue(map['created'] as String),
      databases: pulumi.Input.fromValue(pulumi.Input.decodeList<DatabaseBackupSettingResponse>(map['databases']!, (value) => DatabaseBackupSettingResponse.fromMap((value as Map).cast<String, dynamic>()))),
      finishedTimeStamp: pulumi.Input.fromValue(map['finishedTimeStamp'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastRestoreTimeStamp: pulumi.Input.fromValue(map['lastRestoreTimeStamp'] as String),
      log: pulumi.Input.fromValue(map['log'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      scheduled: pulumi.Input.fromValue(map['scheduled'] as bool),
      sizeInBytes: pulumi.Input.fromValue((map['sizeInBytes'] as num).toDouble()),
      status: pulumi.Input.fromValue(map['status'] as String),
      storageAccountUrl: pulumi.Input.fromValue(map['storageAccountUrl'] as String),
      systemData: pulumi.Input.fromValue(SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
      websiteSizeInBytes: pulumi.Input.fromValue((map['websiteSizeInBytes'] as num).toDouble()),
    );
  }
}
