import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_stream_response.dart';
import 'logging_config_response.dart';
import 'notification_config_response.dart';
import 'schedule_response.dart';
import 'transfer_job_args.dart';
import 'transfer_spec_response.dart';

/// Creates a transfer job that runs periodically.
class TransferJob extends pulumi.CustomResource {
  /// The time that the transfer job was created.
  late final pulumi.Output<String> creationTime;

  /// The time that the transfer job was deleted.
  late final pulumi.Output<String> deletionTime;

  /// A description provided by the user for the job. Its max length is 1024 bytes when Unicode-encoded.
  late final pulumi.Output<String> description;

  /// Specifies the event stream for the transfer job for event-driven transfers. When EventStream is specified, the Schedule fields are ignored.
  late final pulumi.Output<EventStreamResponse> eventStream;

  /// The time that the transfer job was last modified.
  late final pulumi.Output<String> lastModificationTime;

  /// The name of the most recently started TransferOperation of this JobConfig. Present if a TransferOperation has been created for this JobConfig.
  late final pulumi.Output<String> latestOperationName;

  /// Logging configuration.
  late final pulumi.Output<LoggingConfigResponse> loggingConfig;

  /// A unique name (within the transfer project) assigned when the job is created. If this field is empty in a CreateTransferJobRequest, Storage Transfer Service assigns a unique name. Otherwise, the specified name is used as the unique name for this job. If the specified name is in use by a job, the creation request fails with an ALREADY_EXISTS error. This name must start with `"transferJobs/"` prefix and end with a letter or a number, and should be no more than 128 characters. For transfers involving PosixFilesystem, this name must start with `transferJobs/OPI` specifically. For all other transfer types, this name must not start with `transferJobs/OPI`. Non-PosixFilesystem example: `"transferJobs/^(?!OPI)[A-Za-z0-9-._~]*[A-Za-z0-9]$"` PosixFilesystem example: `"transferJobs/OPI^[A-Za-z0-9-._~]*[A-Za-z0-9]$"` Applications must not rely on the enforcement of naming requirements involving OPI. Invalid job names fail with an INVALID_ARGUMENT error.
  late final pulumi.Output<String> name;

  /// Notification configuration. This is not supported for transfers involving PosixFilesystem.
  late final pulumi.Output<NotificationConfigResponse> notificationConfig;

  /// The ID of the Google Cloud project that owns the job.
  late final pulumi.Output<String> project;

  /// Specifies schedule for the transfer job. This is an optional field. When the field is not set, the job never executes a transfer, unless you invoke RunTransferJob or update the job to have a non-empty schedule.
  late final pulumi.Output<ScheduleResponse> schedule;

  /// Status of the job. This value MUST be specified for `CreateTransferJobRequests`. **Note:** The effect of the new job status takes place during a subsequent job run. For example, if you change the job status from ENABLED to DISABLED, and an operation spawned by the transfer is running, the status change would not affect the current operation.
  late final pulumi.Output<String> status;

  /// Transfer specification.
  late final pulumi.Output<TransferSpecResponse> transferSpec;

  /// Creates a new [TransferJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TransferJob]. {@macro pulumi_storagetransfer_v1_transfer_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TransferJob(
    String name, {
    TransferJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:storagetransfer/v1:TransferJob',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    creationTime = registerOutput<String>('creationTime');
    deletionTime = registerOutput<String>('deletionTime');
    description = registerOutput<String>('description');
    eventStream = registerOutput<EventStreamResponse>('eventStream');
    lastModificationTime = registerOutput<String>('lastModificationTime');
    latestOperationName = registerOutput<String>('latestOperationName');
    loggingConfig = registerOutput<LoggingConfigResponse>('loggingConfig');
    this.name = registerOutput<String>('name');
    notificationConfig = registerOutput<NotificationConfigResponse>(
      'notificationConfig',
    );
    project = registerOutput<String>('project');
    schedule = registerOutput<ScheduleResponse>('schedule');
    status = registerOutput<String>('status');
    transferSpec = registerOutput<TransferSpecResponse>('transferSpec');
  }
}
