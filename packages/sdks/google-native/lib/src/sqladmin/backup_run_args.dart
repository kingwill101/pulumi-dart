// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_run_backup_kind.dart';
import 'backup_run_type.dart';
import 'disk_encryption_configuration.dart';
import 'disk_encryption_status.dart';
import 'operation_error.dart';

/// {@template pulumi_sqladmin_v1_backup_run_args_doc}
/// The set of arguments for BackupRun.
/// {@endtemplate}
/// {@macro pulumi_sqladmin_v1_backup_run_args_doc}
class BackupRunArgs {
  /// Specifies the kind of backup, PHYSICAL or DEFAULT_SNAPSHOT.
  final pulumi.Input<BackupRunBackupKind>? backupKind;
  /// The description of this run, only applicable to on-demand backups.
  final pulumi.Input<String>? description;
  /// Encryption configuration specific to a backup.
  final pulumi.Input<DiskEncryptionConfiguration>? diskEncryptionConfiguration;
  /// Encryption status specific to a backup.
  final pulumi.Input<DiskEncryptionStatus>? diskEncryptionStatus;
  /// The time the backup operation completed in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final pulumi.Input<String>? endTime;
  /// The time the run was enqueued in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final pulumi.Input<String>? enqueuedTime;
  /// Information about why the backup operation failed. This is only present if the run has the FAILED status.
  final pulumi.Input<OperationError>? error;
  /// The identifier for this backup run. Unique only for a specific Cloud SQL instance.
  final pulumi.Input<String>? id;
  /// Name of the database instance.
  final pulumi.Input<String> instance;
  /// This is always `sql#backupRun`.
  final pulumi.Input<String>? kind;
  /// Location of the backups.
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// The URI of this resource.
  final pulumi.Input<String>? selfLink;
  /// The time the backup operation actually started in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final pulumi.Input<String>? startTime;
  /// Backup time zone to prevent restores to an instance with a different time zone. Now relevant only for SQL Server.
  final pulumi.Input<String>? timeZone;
  /// The type of this run; can be either "AUTOMATED" or "ON_DEMAND" or "FINAL". This field defaults to "ON_DEMAND" and is ignored, when specified for insert requests.
  final pulumi.Input<BackupRunType>? type;
  /// The start time of the backup window during which this the backup was attempted in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final pulumi.Input<String>? windowStartTime;

  /// Creates a new [BackupRunArgs].
  /// [backupKind] Specifies the kind of backup, PHYSICAL or DEFAULT_SNAPSHOT.
  /// [description] The description of this run, only applicable to on-demand backups.
  /// [diskEncryptionConfiguration] Encryption configuration specific to a backup.
  /// [diskEncryptionStatus] Encryption status specific to a backup.
  /// [endTime] The time the backup operation completed in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  /// [enqueuedTime] The time the run was enqueued in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  /// [error] Information about why the backup operation failed. This is only present if the run has the FAILED status.
  /// [id] The identifier for this backup run. Unique only for a specific Cloud SQL instance.
  /// [instance] Name of the database instance.
  /// [kind] This is always `sql#backupRun`.
  /// [location] Location of the backups.
  /// [project] Optional.
  /// [selfLink] The URI of this resource.
  /// [startTime] The time the backup operation actually started in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  /// [timeZone] Backup time zone to prevent restores to an instance with a different time zone. Now relevant only for SQL Server.
  /// [type] The type of this run; can be either "AUTOMATED" or "ON_DEMAND" or "FINAL". This field defaults to "ON_DEMAND" and is ignored, when specified for insert requests.
  /// [windowStartTime] The start time of the backup window during which this the backup was attempted in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  BackupRunArgs({
    this.backupKind,
    this.description,
    this.diskEncryptionConfiguration,
    this.diskEncryptionStatus,
    this.endTime,
    this.enqueuedTime,
    this.error,
    this.id,
    required this.instance,
    this.kind,
    this.location,
    this.project,
    this.selfLink,
    this.startTime,
    this.timeZone,
    this.type,
    this.windowStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupKind': ?pulumi.Input.mapOptionalInputValue<BackupRunBackupKind, String>(backupKind, (value) => value.wireValue),
      'description': ?description,
      'diskEncryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<DiskEncryptionConfiguration, Map<String, dynamic>>(diskEncryptionConfiguration, (value) => value.toMap()),
      'diskEncryptionStatus': ?pulumi.Input.mapOptionalInputValue<DiskEncryptionStatus, Map<String, dynamic>>(diskEncryptionStatus, (value) => value.toMap()),
      'endTime': ?endTime,
      'enqueuedTime': ?enqueuedTime,
      'error': ?pulumi.Input.mapOptionalInputValue<OperationError, Map<String, dynamic>>(error, (value) => value.toMap()),
      'id': ?id,
      'instance': instance,
      'kind': ?kind,
      'location': ?location,
      'project': ?project,
      'selfLink': ?selfLink,
      'startTime': ?startTime,
      'timeZone': ?timeZone,
      'type': ?pulumi.Input.mapOptionalInputValue<BackupRunType, String>(type, (value) => value.wireValue),
      'windowStartTime': ?windowStartTime,
    };
  }

  factory BackupRunArgs.fromMap(Map<String, dynamic> map) {
    return BackupRunArgs(
      backupKind: (() { final guardedValue = map['backupKind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackupRunBackupKind.fromValue(guardedValue as String)); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskEncryptionConfiguration: (() { final guardedValue = map['diskEncryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diskEncryptionStatus: (() { final guardedValue = map['diskEncryptionStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskEncryptionStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enqueuedTime: (() { final guardedValue = map['enqueuedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OperationError.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackupRunType.fromValue(guardedValue as String)); })(),
      windowStartTime: (() { final guardedValue = map['windowStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

