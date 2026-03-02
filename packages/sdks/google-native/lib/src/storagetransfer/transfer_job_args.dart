// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_stream.dart';
import 'logging_config.dart';
import 'notification_config.dart';
import 'schedule.dart';
import 'transfer_job_status.dart';
import 'transfer_spec.dart';

/// {@template pulumi_storagetransfer_v1_transfer_job_args_doc}
/// The set of arguments for TransferJob.
/// {@endtemplate}
/// {@macro pulumi_storagetransfer_v1_transfer_job_args_doc}
class TransferJobArgs {
  /// A description provided by the user for the job. Its max length is 1024 bytes when Unicode-encoded.
  final pulumi.Input<String>? description;
  /// Specifies the event stream for the transfer job for event-driven transfers. When EventStream is specified, the Schedule fields are ignored.
  final pulumi.Input<EventStream>? eventStream;
  /// The name of the most recently started TransferOperation of this JobConfig. Present if a TransferOperation has been created for this JobConfig.
  final pulumi.Input<String>? latestOperationName;
  /// Logging configuration.
  final pulumi.Input<LoggingConfig>? loggingConfig;
  /// A unique name (within the transfer project) assigned when the job is created. If this field is empty in a CreateTransferJobRequest, Storage Transfer Service assigns a unique name. Otherwise, the specified name is used as the unique name for this job. If the specified name is in use by a job, the creation request fails with an ALREADY_EXISTS error. This name must start with `"transferJobs/"` prefix and end with a letter or a number, and should be no more than 128 characters. For transfers involving PosixFilesystem, this name must start with `transferJobs/OPI` specifically. For all other transfer types, this name must not start with `transferJobs/OPI`. Non-PosixFilesystem example: `"transferJobs/^(?!OPI)[A-Za-z0-9-._~]*[A-Za-z0-9]$"` PosixFilesystem example: `"transferJobs/OPI^[A-Za-z0-9-._~]*[A-Za-z0-9]$"` Applications must not rely on the enforcement of naming requirements involving OPI. Invalid job names fail with an INVALID_ARGUMENT error.
  final pulumi.Input<String>? name;
  /// Notification configuration. This is not supported for transfers involving PosixFilesystem.
  final pulumi.Input<NotificationConfig>? notificationConfig;
  /// The ID of the Google Cloud project that owns the job.
  final pulumi.Input<String>? project;
  /// Specifies schedule for the transfer job. This is an optional field. When the field is not set, the job never executes a transfer, unless you invoke RunTransferJob or update the job to have a non-empty schedule.
  final pulumi.Input<Schedule>? schedule;
  /// Status of the job. This value MUST be specified for `CreateTransferJobRequests`. **Note:** The effect of the new job status takes place during a subsequent job run. For example, if you change the job status from ENABLED to DISABLED, and an operation spawned by the transfer is running, the status change would not affect the current operation.
  final pulumi.Input<TransferJobStatus>? status;
  /// Transfer specification.
  final pulumi.Input<TransferSpec>? transferSpec;

  /// Creates a new [TransferJobArgs].
  /// [description] A description provided by the user for the job. Its max length is 1024 bytes when Unicode-encoded.
  /// [eventStream] Specifies the event stream for the transfer job for event-driven transfers. When EventStream is specified, the Schedule fields are ignored.
  /// [latestOperationName] The name of the most recently started TransferOperation of this JobConfig. Present if a TransferOperation has been created for this JobConfig.
  /// [loggingConfig] Logging configuration.
  /// [name] A unique name (within the transfer project) assigned when the job is created. If this field is empty in a CreateTransferJobRequest, Storage Transfer Service assigns a unique name. Otherwise, the specified name is used as the unique name for this job. If the specified name is in use by a job, the creation request fails with an ALREADY_EXISTS error. This name must start with `"transferJobs/"` prefix and end with a letter or a number, and should be no more than 128 characters. For transfers involving PosixFilesystem, this name must start with `transferJobs/OPI` specifically. For all other transfer types, this name must not start with `transferJobs/OPI`. Non-PosixFilesystem example: `"transferJobs/^(?!OPI)[A-Za-z0-9-._~]*[A-Za-z0-9]$"` PosixFilesystem example: `"transferJobs/OPI^[A-Za-z0-9-._~]*[A-Za-z0-9]$"` Applications must not rely on the enforcement of naming requirements involving OPI. Invalid job names fail with an INVALID_ARGUMENT error.
  /// [notificationConfig] Notification configuration. This is not supported for transfers involving PosixFilesystem.
  /// [project] The ID of the Google Cloud project that owns the job.
  /// [schedule] Specifies schedule for the transfer job. This is an optional field. When the field is not set, the job never executes a transfer, unless you invoke RunTransferJob or update the job to have a non-empty schedule.
  /// [status] Status of the job. This value MUST be specified for `CreateTransferJobRequests`. **Note:** The effect of the new job status takes place during a subsequent job run. For example, if you change the job status from ENABLED to DISABLED, and an operation spawned by the transfer is running, the status change would not affect the current operation.
  /// [transferSpec] Transfer specification.
  TransferJobArgs({
    this.description,
    this.eventStream,
    this.latestOperationName,
    this.loggingConfig,
    this.name,
    this.notificationConfig,
    this.project,
    this.schedule,
    this.status,
    this.transferSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'eventStream': ?pulumi.Input.mapOptionalInputValue<EventStream, Map<String, dynamic>>(eventStream, (value) => value.toMap()),
      'latestOperationName': ?latestOperationName,
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<LoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'name': ?name,
      'notificationConfig': ?pulumi.Input.mapOptionalInputValue<NotificationConfig, Map<String, dynamic>>(notificationConfig, (value) => value.toMap()),
      'project': ?project,
      'schedule': ?pulumi.Input.mapOptionalInputValue<Schedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'status': ?pulumi.Input.mapOptionalInputValue<TransferJobStatus, String>(status, (value) => value.value),
      'transferSpec': ?pulumi.Input.mapOptionalInputValue<TransferSpec, Map<String, dynamic>>(transferSpec, (value) => value.toMap()),
    };
  }

  factory TransferJobArgs.fromMap(Map<String, dynamic> map) {
    return TransferJobArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      eventStream: map['eventStream'] == null ? null : (EventStream.fromMap((map['eventStream']! as Map).cast<String, dynamic>())).input(),
      latestOperationName: map['latestOperationName'] == null ? null : (map['latestOperationName']! as String).input(),
      loggingConfig: map['loggingConfig'] == null ? null : (LoggingConfig.fromMap((map['loggingConfig']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      notificationConfig: map['notificationConfig'] == null ? null : (NotificationConfig.fromMap((map['notificationConfig']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      schedule: map['schedule'] == null ? null : (Schedule.fromMap((map['schedule']! as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (TransferJobStatus.fromValue(map['status']! as String)).input(),
      transferSpec: map['transferSpec'] == null ? null : (TransferSpec.fromMap((map['transferSpec']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

