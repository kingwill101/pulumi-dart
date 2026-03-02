// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_run_backup_kind_sqladmin_v1beta4.dart';
import 'backup_run_type_sqladmin_v1beta4.dart';
import 'disk_encryption_configuration_sqladmin_v1beta4.dart';
import 'disk_encryption_status_sqladmin_v1beta4.dart';
import 'operation_error_sqladmin_v1beta4.dart';

/// {@template pulumi_sqladmin_v1beta4_backup_run_sqladmin_v1beta4_args_doc}
/// The set of arguments for BackupRun.
/// {@endtemplate}
/// {@macro pulumi_sqladmin_v1beta4_backup_run_sqladmin_v1beta4_args_doc}
class BackupRunSqladminV1beta4Args {
  /// Specifies the kind of backup, PHYSICAL or DEFAULT_SNAPSHOT.
  final pulumi.Input<BackupRunBackupKindSqladminV1beta4>? backupKind;
  /// The description of this run, only applicable to on-demand backups.
  final pulumi.Input<String>? description;
  /// Encryption configuration specific to a backup.
  final pulumi.Input<DiskEncryptionConfigurationSqladminV1beta4>? diskEncryptionConfiguration;
  /// Encryption status specific to a backup.
  final pulumi.Input<DiskEncryptionStatusSqladminV1beta4>? diskEncryptionStatus;
  /// The time the backup operation completed in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final pulumi.Input<String>? endTime;
  /// The time the run was enqueued in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final pulumi.Input<String>? enqueuedTime;
  /// Information about why the backup operation failed. This is only present if the run has the FAILED status.
  final pulumi.Input<OperationErrorSqladminV1beta4>? error;
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
  final pulumi.Input<BackupRunTypeSqladminV1beta4>? type;
  /// The start time of the backup window during which this the backup was attempted in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final pulumi.Input<String>? windowStartTime;

  /// Creates a new [BackupRunSqladminV1beta4Args].
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
  BackupRunSqladminV1beta4Args({
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
      'backupKind': ?pulumi.Input.mapOptionalInputValue<BackupRunBackupKindSqladminV1beta4, String>(backupKind, (value) => value.value),
      'description': ?description,
      'diskEncryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<DiskEncryptionConfigurationSqladminV1beta4, Map<String, dynamic>>(diskEncryptionConfiguration, (value) => value.toMap()),
      'diskEncryptionStatus': ?pulumi.Input.mapOptionalInputValue<DiskEncryptionStatusSqladminV1beta4, Map<String, dynamic>>(diskEncryptionStatus, (value) => value.toMap()),
      'endTime': ?endTime,
      'enqueuedTime': ?enqueuedTime,
      'error': ?pulumi.Input.mapOptionalInputValue<OperationErrorSqladminV1beta4, Map<String, dynamic>>(error, (value) => value.toMap()),
      'id': ?id,
      'instance': instance,
      'kind': ?kind,
      'location': ?location,
      'project': ?project,
      'selfLink': ?selfLink,
      'startTime': ?startTime,
      'timeZone': ?timeZone,
      'type': ?pulumi.Input.mapOptionalInputValue<BackupRunTypeSqladminV1beta4, String>(type, (value) => value.value),
      'windowStartTime': ?windowStartTime,
    };
  }

  factory BackupRunSqladminV1beta4Args.fromMap(Map<String, dynamic> map) {
    return BackupRunSqladminV1beta4Args(
      backupKind: map['backupKind'] == null ? null : (BackupRunBackupKindSqladminV1beta4.fromValue(map['backupKind'] as String)).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      diskEncryptionConfiguration: map['diskEncryptionConfiguration'] == null ? null : (DiskEncryptionConfigurationSqladminV1beta4.fromMap((map['diskEncryptionConfiguration'] as Map).cast<String, dynamic>())).input(),
      diskEncryptionStatus: map['diskEncryptionStatus'] == null ? null : (DiskEncryptionStatusSqladminV1beta4.fromMap((map['diskEncryptionStatus'] as Map).cast<String, dynamic>())).input(),
      endTime: map['endTime'] == null ? null : (map['endTime'] as String).input(),
      enqueuedTime: map['enqueuedTime'] == null ? null : (map['enqueuedTime'] as String).input(),
      error: map['error'] == null ? null : (OperationErrorSqladminV1beta4.fromMap((map['error'] as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      instance: (map['instance'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink'] as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime'] as String).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone'] as String).input(),
      type: map['type'] == null ? null : (BackupRunTypeSqladminV1beta4.fromValue(map['type'] as String)).input(),
      windowStartTime: map['windowStartTime'] == null ? null : (map['windowStartTime'] as String).input(),
    );
  }
}

