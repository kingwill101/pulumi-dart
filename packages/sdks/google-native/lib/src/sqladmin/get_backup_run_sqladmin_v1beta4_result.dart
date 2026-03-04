// ignore_for_file: unused_element, unnecessary_cast

import 'disk_encryption_configuration_response_sqladmin_v1beta4.dart';
import 'disk_encryption_status_response_sqladmin_v1beta4.dart';
import 'operation_error_response_sqladmin_v1beta4.dart';

/// Result data returned by getBackupRun.
class GetBackupRunSqladminV1beta4Result {
  /// Specifies the kind of backup, PHYSICAL or DEFAULT_SNAPSHOT.
  final String backupKind;

  /// The description of this run, only applicable to on-demand backups.
  final String description;

  /// Encryption configuration specific to a backup.
  final DiskEncryptionConfigurationResponseSqladminV1beta4
  diskEncryptionConfiguration;

  /// Encryption status specific to a backup.
  final DiskEncryptionStatusResponseSqladminV1beta4 diskEncryptionStatus;

  /// The time the backup operation completed in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final String endTime;

  /// The time the run was enqueued in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final String enqueuedTime;

  /// Information about why the backup operation failed. This is only present if the run has the FAILED status.
  final OperationErrorResponseSqladminV1beta4 error;

  /// Name of the database instance.
  final String instance;

  /// This is always `sql#backupRun`.
  final String kind;

  /// Location of the backups.
  final String location;

  /// The URI of this resource.
  final String selfLink;

  /// The time the backup operation actually started in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final String startTime;

  /// The status of this run.
  final String status;

  /// Backup time zone to prevent restores to an instance with a different time zone. Now relevant only for SQL Server.
  final String timeZone;

  /// The type of this run; can be either "AUTOMATED" or "ON_DEMAND" or "FINAL". This field defaults to "ON_DEMAND" and is ignored, when specified for insert requests.
  final String type;

  /// The start time of the backup window during which this the backup was attempted in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final String windowStartTime;

  /// Creates a new [GetBackupRunSqladminV1beta4Result].
  /// [backupKind] Specifies the kind of backup, PHYSICAL or DEFAULT_SNAPSHOT.
  /// [description] The description of this run, only applicable to on-demand backups.
  /// [diskEncryptionConfiguration] Encryption configuration specific to a backup.
  /// [diskEncryptionStatus] Encryption status specific to a backup.
  /// [endTime] The time the backup operation completed in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  /// [enqueuedTime] The time the run was enqueued in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  /// [error] Information about why the backup operation failed. This is only present if the run has the FAILED status.
  /// [instance] Name of the database instance.
  /// [kind] This is always `sql#backupRun`.
  /// [location] Location of the backups.
  /// [selfLink] The URI of this resource.
  /// [startTime] The time the backup operation actually started in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  /// [status] The status of this run.
  /// [timeZone] Backup time zone to prevent restores to an instance with a different time zone. Now relevant only for SQL Server.
  /// [type] The type of this run; can be either "AUTOMATED" or "ON_DEMAND" or "FINAL". This field defaults to "ON_DEMAND" and is ignored, when specified for insert requests.
  /// [windowStartTime] The start time of the backup window during which this the backup was attempted in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  GetBackupRunSqladminV1beta4Result({
    required this.backupKind,
    required this.description,
    required this.diskEncryptionConfiguration,
    required this.diskEncryptionStatus,
    required this.endTime,
    required this.enqueuedTime,
    required this.error,
    required this.instance,
    required this.kind,
    required this.location,
    required this.selfLink,
    required this.startTime,
    required this.status,
    required this.timeZone,
    required this.type,
    required this.windowStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupKind': backupKind,
      'description': description,
      'diskEncryptionConfiguration': diskEncryptionConfiguration.toMap(),
      'diskEncryptionStatus': diskEncryptionStatus.toMap(),
      'endTime': endTime,
      'enqueuedTime': enqueuedTime,
      'error': error.toMap(),
      'instance': instance,
      'kind': kind,
      'location': location,
      'selfLink': selfLink,
      'startTime': startTime,
      'status': status,
      'timeZone': timeZone,
      'type': type,
      'windowStartTime': windowStartTime,
    };
  }

  factory GetBackupRunSqladminV1beta4Result.fromMap(Map<String, dynamic> map) {
    return GetBackupRunSqladminV1beta4Result(
      backupKind: map['backupKind'] as String,
      description: map['description'] as String,
      diskEncryptionConfiguration:
          DiskEncryptionConfigurationResponseSqladminV1beta4.fromMap(
            (map['diskEncryptionConfiguration']! as Map)
                .cast<String, dynamic>(),
          ),
      diskEncryptionStatus: DiskEncryptionStatusResponseSqladminV1beta4.fromMap(
        (map['diskEncryptionStatus']! as Map).cast<String, dynamic>(),
      ),
      endTime: map['endTime'] as String,
      enqueuedTime: map['enqueuedTime'] as String,
      error: OperationErrorResponseSqladminV1beta4.fromMap(
        (map['error']! as Map).cast<String, dynamic>(),
      ),
      instance: map['instance'] as String,
      kind: map['kind'] as String,
      location: map['location'] as String,
      selfLink: map['selfLink'] as String,
      startTime: map['startTime'] as String,
      status: map['status'] as String,
      timeZone: map['timeZone'] as String,
      type: map['type'] as String,
      windowStartTime: map['windowStartTime'] as String,
    );
  }
}
