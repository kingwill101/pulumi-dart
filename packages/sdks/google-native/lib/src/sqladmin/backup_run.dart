import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_run_args.dart';
import 'disk_encryption_configuration_response.dart';
import 'disk_encryption_status_response.dart';
import 'operation_error_response.dart';

/// Creates a new backup run on demand.
/// Auto-naming is currently not supported for this resource.
class BackupRun extends pulumi.CustomResource {
  /// Specifies the kind of backup, PHYSICAL or DEFAULT_SNAPSHOT.
  late final pulumi.Output<String> backupKind;

  /// The description of this run, only applicable to on-demand backups.
  late final pulumi.Output<String> description;

  /// Encryption configuration specific to a backup.
  late final pulumi.Output<DiskEncryptionConfigurationResponse>
  diskEncryptionConfiguration;

  /// Encryption status specific to a backup.
  late final pulumi.Output<DiskEncryptionStatusResponse> diskEncryptionStatus;

  /// The time the backup operation completed in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  late final pulumi.Output<String> endTime;

  /// The time the run was enqueued in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  late final pulumi.Output<String> enqueuedTime;

  /// Information about why the backup operation failed. This is only present if the run has the FAILED status.
  late final pulumi.Output<OperationErrorResponse> error;
  late final pulumi.Output<String> instance;

  /// This is always `sql#backupRun`.
  late final pulumi.Output<String> kind;

  /// Location of the backups.
  late final pulumi.Output<String> location;
  late final pulumi.Output<String> project;

  /// The URI of this resource.
  late final pulumi.Output<String> selfLink;

  /// The time the backup operation actually started in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  late final pulumi.Output<String> startTime;

  /// The status of this run.
  late final pulumi.Output<String> status;

  /// Backup time zone to prevent restores to an instance with a different time zone. Now relevant only for SQL Server.
  late final pulumi.Output<String> timeZone;

  /// The type of this run; can be either "AUTOMATED" or "ON_DEMAND" or "FINAL". This field defaults to "ON_DEMAND" and is ignored, when specified for insert requests.
  late final pulumi.Output<String> type;

  /// The start time of the backup window during which this the backup was attempted in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  late final pulumi.Output<String> windowStartTime;

  /// Creates a new [BackupRun].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupRun]. {@macro pulumi_sqladmin_v1_backup_run_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupRun(
    String name, {
    BackupRunArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:sqladmin/v1:BackupRun',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    backupKind = registerOutput<String>('backupKind');
    description = registerOutput<String>('description');
    diskEncryptionConfiguration =
        registerOutput<DiskEncryptionConfigurationResponse>(
          'diskEncryptionConfiguration',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return DiskEncryptionConfigurationResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    diskEncryptionStatus = registerOutput<DiskEncryptionStatusResponse>(
      'diskEncryptionStatus',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DiskEncryptionStatusResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    endTime = registerOutput<String>('endTime');
    enqueuedTime = registerOutput<String>('enqueuedTime');
    error = registerOutput<OperationErrorResponse>(
      'error',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return OperationErrorResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    instance = registerOutput<String>('instance');
    kind = registerOutput<String>('kind');
    location = registerOutput<String>('location');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    startTime = registerOutput<String>('startTime');
    status = registerOutput<String>('status');
    timeZone = registerOutput<String>('timeZone');
    type = registerOutput<String>('type');
    windowStartTime = registerOutput<String>('windowStartTime');
  }
}
