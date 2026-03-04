// ignore_for_file: unused_element, unnecessary_cast

import 'event_stream_response.dart';
import 'logging_config_response.dart';
import 'notification_config_response.dart';
import 'schedule_response.dart';
import 'transfer_spec_response.dart';

/// Result data returned by getTransferJob.
class GetTransferJobResult {
  /// The time that the transfer job was created.
  final String creationTime;

  /// The time that the transfer job was deleted.
  final String deletionTime;

  /// A description provided by the user for the job. Its max length is 1024 bytes when Unicode-encoded.
  final String description;

  /// Specifies the event stream for the transfer job for event-driven transfers. When EventStream is specified, the Schedule fields are ignored.
  final EventStreamResponse eventStream;

  /// The time that the transfer job was last modified.
  final String lastModificationTime;

  /// The name of the most recently started TransferOperation of this JobConfig. Present if a TransferOperation has been created for this JobConfig.
  final String latestOperationName;

  /// Logging configuration.
  final LoggingConfigResponse loggingConfig;

  /// A unique name (within the transfer project) assigned when the job is created. If this field is empty in a CreateTransferJobRequest, Storage Transfer Service assigns a unique name. Otherwise, the specified name is used as the unique name for this job. If the specified name is in use by a job, the creation request fails with an ALREADY_EXISTS error. This name must start with `"transferJobs/"` prefix and end with a letter or a number, and should be no more than 128 characters. For transfers involving PosixFilesystem, this name must start with `transferJobs/OPI` specifically. For all other transfer types, this name must not start with `transferJobs/OPI`. Non-PosixFilesystem example: `"transferJobs/^(?!OPI)[A-Za-z0-9-._~]*[A-Za-z0-9]$"` PosixFilesystem example: `"transferJobs/OPI^[A-Za-z0-9-._~]*[A-Za-z0-9]$"` Applications must not rely on the enforcement of naming requirements involving OPI. Invalid job names fail with an INVALID_ARGUMENT error.
  final String name;

  /// Notification configuration. This is not supported for transfers involving PosixFilesystem.
  final NotificationConfigResponse notificationConfig;

  /// The ID of the Google Cloud project that owns the job.
  final String project;

  /// Specifies schedule for the transfer job. This is an optional field. When the field is not set, the job never executes a transfer, unless you invoke RunTransferJob or update the job to have a non-empty schedule.
  final ScheduleResponse schedule;

  /// Status of the job. This value MUST be specified for `CreateTransferJobRequests`. **Note:** The effect of the new job status takes place during a subsequent job run. For example, if you change the job status from ENABLED to DISABLED, and an operation spawned by the transfer is running, the status change would not affect the current operation.
  final String status;

  /// Transfer specification.
  final TransferSpecResponse transferSpec;

  /// Creates a new [GetTransferJobResult].
  /// [creationTime] The time that the transfer job was created.
  /// [deletionTime] The time that the transfer job was deleted.
  /// [description] A description provided by the user for the job. Its max length is 1024 bytes when Unicode-encoded.
  /// [eventStream] Specifies the event stream for the transfer job for event-driven transfers. When EventStream is specified, the Schedule fields are ignored.
  /// [lastModificationTime] The time that the transfer job was last modified.
  /// [latestOperationName] The name of the most recently started TransferOperation of this JobConfig. Present if a TransferOperation has been created for this JobConfig.
  /// [loggingConfig] Logging configuration.
  /// [name] A unique name (within the transfer project) assigned when the job is created. If this field is empty in a CreateTransferJobRequest, Storage Transfer Service assigns a unique name. Otherwise, the specified name is used as the unique name for this job. If the specified name is in use by a job, the creation request fails with an ALREADY_EXISTS error. This name must start with `"transferJobs/"` prefix and end with a letter or a number, and should be no more than 128 characters. For transfers involving PosixFilesystem, this name must start with `transferJobs/OPI` specifically. For all other transfer types, this name must not start with `transferJobs/OPI`. Non-PosixFilesystem example: `"transferJobs/^(?!OPI)[A-Za-z0-9-._~]*[A-Za-z0-9]$"` PosixFilesystem example: `"transferJobs/OPI^[A-Za-z0-9-._~]*[A-Za-z0-9]$"` Applications must not rely on the enforcement of naming requirements involving OPI. Invalid job names fail with an INVALID_ARGUMENT error.
  /// [notificationConfig] Notification configuration. This is not supported for transfers involving PosixFilesystem.
  /// [project] The ID of the Google Cloud project that owns the job.
  /// [schedule] Specifies schedule for the transfer job. This is an optional field. When the field is not set, the job never executes a transfer, unless you invoke RunTransferJob or update the job to have a non-empty schedule.
  /// [status] Status of the job. This value MUST be specified for `CreateTransferJobRequests`. **Note:** The effect of the new job status takes place during a subsequent job run. For example, if you change the job status from ENABLED to DISABLED, and an operation spawned by the transfer is running, the status change would not affect the current operation.
  /// [transferSpec] Transfer specification.
  GetTransferJobResult({
    required this.creationTime,
    required this.deletionTime,
    required this.description,
    required this.eventStream,
    required this.lastModificationTime,
    required this.latestOperationName,
    required this.loggingConfig,
    required this.name,
    required this.notificationConfig,
    required this.project,
    required this.schedule,
    required this.status,
    required this.transferSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTime': creationTime,
      'deletionTime': deletionTime,
      'description': description,
      'eventStream': eventStream.toMap(),
      'lastModificationTime': lastModificationTime,
      'latestOperationName': latestOperationName,
      'loggingConfig': loggingConfig.toMap(),
      'name': name,
      'notificationConfig': notificationConfig.toMap(),
      'project': project,
      'schedule': schedule.toMap(),
      'status': status,
      'transferSpec': transferSpec.toMap(),
    };
  }

  factory GetTransferJobResult.fromMap(Map<String, dynamic> map) {
    return GetTransferJobResult(
      creationTime: map['creationTime'] as String,
      deletionTime: map['deletionTime'] as String,
      description: map['description'] as String,
      eventStream: EventStreamResponse.fromMap(
        (map['eventStream']! as Map).cast<String, dynamic>(),
      ),
      lastModificationTime: map['lastModificationTime'] as String,
      latestOperationName: map['latestOperationName'] as String,
      loggingConfig: LoggingConfigResponse.fromMap(
        (map['loggingConfig']! as Map).cast<String, dynamic>(),
      ),
      name: map['name'] as String,
      notificationConfig: NotificationConfigResponse.fromMap(
        (map['notificationConfig']! as Map).cast<String, dynamic>(),
      ),
      project: map['project'] as String,
      schedule: ScheduleResponse.fromMap(
        (map['schedule']! as Map).cast<String, dynamic>(),
      ),
      status: map['status'] as String,
      transferSpec: TransferSpecResponse.fromMap(
        (map['transferSpec']! as Map).cast<String, dynamic>(),
      ),
    );
  }
}
