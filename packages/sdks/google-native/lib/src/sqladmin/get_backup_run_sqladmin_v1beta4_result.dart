// ignore_for_file: unused_element, unnecessary_cast

import 'disk_encryption_configuration_response_sqladmin_v1beta4.dart';
import 'disk_encryption_status_response_sqladmin_v1beta4.dart';
import 'operation_error_response_sqladmin_v1beta4.dart';

/// Result data returned by getBackupRun.
class GetBackupRunSqladminV1beta4Result {
  /// Specifies the kind of backup, PHYSICAL or DEFAULT_SNAPSHOT.
  final String? backupKind;
  /// The description of this run, only applicable to on-demand backups.
  final String? description;
  /// Encryption configuration specific to a backup.
  final DiskEncryptionConfigurationResponseSqladminV1beta4? diskEncryptionConfiguration;
  /// Encryption status specific to a backup.
  final DiskEncryptionStatusResponseSqladminV1beta4? diskEncryptionStatus;
  /// The time the backup operation completed in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final String? endTime;
  /// The time the run was enqueued in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final String? enqueuedTime;
  /// Information about why the backup operation failed. This is only present if the run has the FAILED status.
  final OperationErrorResponseSqladminV1beta4? error;
  /// Name of the database instance.
  final String? instance;
  /// This is always `sql#backupRun`.
  final String? kind;
  /// Location of the backups.
  final String? location;
  /// The URI of this resource.
  final String? selfLink;
  /// The time the backup operation actually started in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final String? startTime;
  /// The status of this run.
  final String? status;
  /// Backup time zone to prevent restores to an instance with a different time zone. Now relevant only for SQL Server.
  final String? timeZone;
  /// The type of this run; can be either "AUTOMATED" or "ON_DEMAND" or "FINAL". This field defaults to "ON_DEMAND" and is ignored, when specified for insert requests.
  final String? type;
  /// The start time of the backup window during which this the backup was attempted in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final String? windowStartTime;

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
  const GetBackupRunSqladminV1beta4Result({
    this.backupKind,
    this.description,
    this.diskEncryptionConfiguration,
    this.diskEncryptionStatus,
    this.endTime,
    this.enqueuedTime,
    this.error,
    this.instance,
    this.kind,
    this.location,
    this.selfLink,
    this.startTime,
    this.status,
    this.timeZone,
    this.type,
    this.windowStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupKind': ?backupKind,
      'description': ?description,
      'diskEncryptionConfiguration': ?diskEncryptionConfiguration?.toMap(),
      'diskEncryptionStatus': ?diskEncryptionStatus?.toMap(),
      'endTime': ?endTime,
      'enqueuedTime': ?enqueuedTime,
      'error': ?error?.toMap(),
      'instance': ?instance,
      'kind': ?kind,
      'location': ?location,
      'selfLink': ?selfLink,
      'startTime': ?startTime,
      'status': ?status,
      'timeZone': ?timeZone,
      'type': ?type,
      'windowStartTime': ?windowStartTime,
    };
  }

  factory GetBackupRunSqladminV1beta4Result.fromMap(Map<String, dynamic> map) {
    return GetBackupRunSqladminV1beta4Result(
      backupKind: (() { final guardedValue = map['backupKind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diskEncryptionConfiguration: (() { final guardedValue = map['diskEncryptionConfiguration']; if (guardedValue == null) return null; return DiskEncryptionConfigurationResponseSqladminV1beta4.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      diskEncryptionStatus: (() { final guardedValue = map['diskEncryptionStatus']; if (guardedValue == null) return null; return DiskEncryptionStatusResponseSqladminV1beta4.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enqueuedTime: (() { final guardedValue = map['enqueuedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return OperationErrorResponseSqladminV1beta4.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      windowStartTime: (() { final guardedValue = map['windowStartTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
