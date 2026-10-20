// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_info_response.dart';

/// Result data returned by getBackup.
class GetBackupResult {
  /// The encryption information for the backup.
  final EncryptionInfoResponse? encryptionInfo;
  /// `end_time` is the time that the backup was finished. The row data in the backup will be no newer than this timestamp.
  final String? endTime;
  /// The expiration time of the backup, with microseconds granularity that must be at least 6 hours and at most 90 days from the time the request is received. Once the `expire_time` has passed, Cloud Bigtable will delete the backup and free the resources used by the backup.
  final String? expireTime;
  /// A globally unique identifier for the backup which cannot be changed. Values are of the form `projects/{project}/instances/{instance}/clusters/{cluster}/ backups/_a-zA-Z0-9*` The final segment of the name must be between 1 and 50 characters in length. The backup is stored in the cluster identified by the prefix of the backup name of the form `projects/{project}/instances/{instance}/clusters/{cluster}`.
  final String? name;
  /// Size of the backup in bytes.
  final String? sizeBytes;
  /// Name of the backup from which this backup was copied. If a backup is not created by copying a backup, this field will be empty. Values are of the form: projects//instances//backups/.
  final String? sourceBackup;
  /// Immutable. Name of the table from which this backup was created. This needs to be in the same instance as the backup. Values are of the form `projects/{project}/instances/{instance}/tables/{source_table}`.
  final String? sourceTable;
  /// `start_time` is the time that the backup was started (i.e. approximately the time the CreateBackup request is received). The row data in this backup will be no older than this timestamp.
  final String? startTime;
  /// The current state of the backup.
  final String? state;

  /// Creates a new [GetBackupResult].
  /// [encryptionInfo] The encryption information for the backup.
  /// [endTime] `end_time` is the time that the backup was finished. The row data in the backup will be no newer than this timestamp.
  /// [expireTime] The expiration time of the backup, with microseconds granularity that must be at least 6 hours and at most 90 days from the time the request is received. Once the `expire_time` has passed, Cloud Bigtable will delete the backup and free the resources used by the backup.
  /// [name] A globally unique identifier for the backup which cannot be changed. Values are of the form `projects/{project}/instances/{instance}/clusters/{cluster}/ backups/_a-zA-Z0-9*` The final segment of the name must be between 1 and 50 characters in length. The backup is stored in the cluster identified by the prefix of the backup name of the form `projects/{project}/instances/{instance}/clusters/{cluster}`.
  /// [sizeBytes] Size of the backup in bytes.
  /// [sourceBackup] Name of the backup from which this backup was copied. If a backup is not created by copying a backup, this field will be empty. Values are of the form: projects//instances//backups/.
  /// [sourceTable] Immutable. Name of the table from which this backup was created. This needs to be in the same instance as the backup. Values are of the form `projects/{project}/instances/{instance}/tables/{source_table}`.
  /// [startTime] `start_time` is the time that the backup was started (i.e. approximately the time the CreateBackup request is received). The row data in this backup will be no older than this timestamp.
  /// [state] The current state of the backup.
  const GetBackupResult({
    this.encryptionInfo,
    this.endTime,
    this.expireTime,
    this.name,
    this.sizeBytes,
    this.sourceBackup,
    this.sourceTable,
    this.startTime,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionInfo': ?encryptionInfo?.toMap(),
      'endTime': ?endTime,
      'expireTime': ?expireTime,
      'name': ?name,
      'sizeBytes': ?sizeBytes,
      'sourceBackup': ?sourceBackup,
      'sourceTable': ?sourceTable,
      'startTime': ?startTime,
      'state': ?state,
    };
  }

  factory GetBackupResult.fromMap(Map<String, dynamic> map) {
    return GetBackupResult(
      encryptionInfo: (() { final guardedValue = map['encryptionInfo']; if (guardedValue == null) return null; return EncryptionInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sizeBytes: (() { final guardedValue = map['sizeBytes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceBackup: (() { final guardedValue = map['sourceBackup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceTable: (() { final guardedValue = map['sourceTable']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
