// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'transfer_job_event_stream.dart';
import 'transfer_job_logging_config.dart';
import 'transfer_job_notification_config.dart';
import 'transfer_job_replication_spec.dart';
import 'transfer_job_schedule.dart';
import 'transfer_job_transfer_spec.dart';

/// Input properties used for looking up and filtering TransferJob resources.
class TransferJobState {
  /// When the Transfer Job was created.
  final pulumi.Input<String>? creationTime;
  /// When the Transfer Job was deleted.
  final pulumi.Input<String>? deletionTime;
  /// Unique description to identify the Transfer Job.
  final pulumi.Input<String>? description;
  /// Specifies the Event-driven transfer options. Event-driven transfers listen to an event stream to transfer updated files. Structure documented below Either `event_stream` or `schedule` must be set.
  final pulumi.Input<TransferJobEventStream>? eventStream;
  /// When the Transfer Job was last modified.
  final pulumi.Input<String>? lastModificationTime;
  /// Logging configuration. Structure documented below.
  final pulumi.Input<TransferJobLoggingConfig>? loggingConfig;
  /// The name of the Transfer Job. This name must start with "transferJobs/" prefix and end with a letter or a number, and should be no more than 128 characters ( `transferJobs/^(?!OPI)[A-Za-z0-9-._~]*[A-Za-z0-9]$` ). For transfers involving PosixFilesystem, this name must start with transferJobs/OPI specifically ( `transferJobs/OPI^[A-Za-z0-9-._~]*[A-Za-z0-9]$` ). For all other transfer types, this name must not start with transferJobs/OPI. Default the provider will assign a random unique name with `transferJobs/{{name}}` format, where `name` is a numeric value.
  final pulumi.Input<String>? name;
  /// Notification configuration. This is not supported for transfers involving PosixFilesystem. Structure documented below.
  final pulumi.Input<TransferJobNotificationConfig>? notificationConfig;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Replication specification. Structure documented below. User should not configure `schedule`, `event_stream` with this argument. One of `transfer_spec`, or `replication_spec` must be specified.
  ///
  /// - - -
  final pulumi.Input<TransferJobReplicationSpec>? replicationSpec;
  /// Schedule specification defining when the Transfer Job should be scheduled to start, end and what time to run. Structure documented below. Either `schedule` or `event_stream` must be set.
  final pulumi.Input<TransferJobSchedule>? schedule;
  /// The user-managed service account to run the job. If this field is specified, the given service account is granted the necessary permissions to all applicable resources (e.g. GCS buckets) required by the job.
  final pulumi.Input<String>? serviceAccount;
  /// Status of the job. Default: `ENABLED`. **NOTE: The effect of the new job status takes place during a subsequent job run. For example, if you change the job status from ENABLED to DISABLED, and an operation spawned by the transfer is running, the status change would not affect the current operation.**
  final pulumi.Input<String>? status;
  /// Transfer specification. Structure documented below. One of `transfer_spec`, or `replication_spec` can be specified.
  final pulumi.Input<TransferJobTransferSpec>? transferSpec;

  /// Creates a new [TransferJobState].
  /// [creationTime] When the Transfer Job was created.
  /// [deletionTime] When the Transfer Job was deleted.
  /// [description] Unique description to identify the Transfer Job.
  /// [eventStream] Specifies the Event-driven transfer options. Event-driven transfers listen to an event stream to transfer updated files. Structure documented below Either `event_stream` or `schedule` must be set.
  /// [lastModificationTime] When the Transfer Job was last modified.
  /// [loggingConfig] Logging configuration. Structure documented below.
  /// [name] The name of the Transfer Job. This name must start with "transferJobs/" prefix and end with a letter or a number, and should be no more than 128 characters ( `transferJobs/^(?!OPI)[A-Za-z0-9-._~]*[A-Za-z0-9]$` ). For transfers involving PosixFilesystem, this name must start with transferJobs/OPI specifically ( `transferJobs/OPI^[A-Za-z0-9-._~]*[A-Za-z0-9]$` ). For all other transfer types, this name must not start with transferJobs/OPI. Default the provider will assign a random unique name with `transferJobs/{{name}}` format, where `name` is a numeric value.
  /// [notificationConfig] Notification configuration. This is not supported for transfers involving PosixFilesystem. Structure documented below.
  /// [project] The project in which the resource belongs. If it
  /// [replicationSpec] Replication specification. Structure documented below. User should not configure `schedule`, `event_stream` with this argument. One of `transfer_spec`, or `replication_spec` must be specified.
  /// [schedule] Schedule specification defining when the Transfer Job should be scheduled to start, end and what time to run. Structure documented below. Either `schedule` or `event_stream` must be set.
  /// [serviceAccount] The user-managed service account to run the job. If this field is specified, the given service account is granted the necessary permissions to all applicable resources (e.g. GCS buckets) required by the job.
  /// [status] Status of the job. Default: `ENABLED`. **NOTE: The effect of the new job status takes place during a subsequent job run. For example, if you change the job status from ENABLED to DISABLED, and an operation spawned by the transfer is running, the status change would not affect the current operation.**
  /// [transferSpec] Transfer specification. Structure documented below. One of `transfer_spec`, or `replication_spec` can be specified.
  TransferJobState({
    pulumi.Output<String>? creationTime,
    pulumi.Output<String>? deletionTime,
    pulumi.Output<String>? description,
    pulumi.Output<TransferJobEventStream>? eventStream,
    pulumi.Output<String>? lastModificationTime,
    pulumi.Output<TransferJobLoggingConfig>? loggingConfig,
    pulumi.Output<String>? name,
    pulumi.Output<TransferJobNotificationConfig>? notificationConfig,
    pulumi.Output<String>? project,
    pulumi.Output<TransferJobReplicationSpec>? replicationSpec,
    pulumi.Output<TransferJobSchedule>? schedule,
    pulumi.Output<String>? serviceAccount,
    pulumi.Output<String>? status,
    pulumi.Output<TransferJobTransferSpec>? transferSpec,
  }) :
      creationTime = pulumi.Input.asOptionalInput<String>(creationTime),
      deletionTime = pulumi.Input.asOptionalInput<String>(deletionTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      eventStream = pulumi.Input.asOptionalInput<TransferJobEventStream>(eventStream),
      lastModificationTime = pulumi.Input.asOptionalInput<String>(lastModificationTime),
      loggingConfig = pulumi.Input.asOptionalInput<TransferJobLoggingConfig>(loggingConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      notificationConfig = pulumi.Input.asOptionalInput<TransferJobNotificationConfig>(notificationConfig),
      project = pulumi.Input.asOptionalInput<String>(project),
      replicationSpec = pulumi.Input.asOptionalInput<TransferJobReplicationSpec>(replicationSpec),
      schedule = pulumi.Input.asOptionalInput<TransferJobSchedule>(schedule),
      serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
      status = pulumi.Input.asOptionalInput<String>(status),
      transferSpec = pulumi.Input.asOptionalInput<TransferJobTransferSpec>(transferSpec);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTime': ?creationTime,
      'deletionTime': ?deletionTime,
      'description': ?description,
      'eventStream': ?pulumi.Input.mapOptionalInputValue<TransferJobEventStream, Map<String, dynamic>>(eventStream, (value) => value.toMap()),
      'lastModificationTime': ?lastModificationTime,
      'loggingConfig': ?pulumi.Input.mapOptionalInputValue<TransferJobLoggingConfig, Map<String, dynamic>>(loggingConfig, (value) => value.toMap()),
      'name': ?name,
      'notificationConfig': ?pulumi.Input.mapOptionalInputValue<TransferJobNotificationConfig, Map<String, dynamic>>(notificationConfig, (value) => value.toMap()),
      'project': ?project,
      'replicationSpec': ?pulumi.Input.mapOptionalInputValue<TransferJobReplicationSpec, Map<String, dynamic>>(replicationSpec, (value) => value.toMap()),
      'schedule': ?pulumi.Input.mapOptionalInputValue<TransferJobSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'serviceAccount': ?serviceAccount,
      'status': ?status,
      'transferSpec': ?pulumi.Input.mapOptionalInputValue<TransferJobTransferSpec, Map<String, dynamic>>(transferSpec, (value) => value.toMap()),
    };
  }

  factory TransferJobState.fromMap(Map<String, dynamic> map) {
    return TransferJobState(
      creationTime: map['creationTime'] == null ? null : pulumi.Output.create<String>(map['creationTime'] as String),
      deletionTime: map['deletionTime'] == null ? null : pulumi.Output.create<String>(map['deletionTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      eventStream: map['eventStream'] == null ? null : pulumi.Output.create<TransferJobEventStream>(TransferJobEventStream.fromMap((map['eventStream'] as Map).cast<String, dynamic>())),
      lastModificationTime: map['lastModificationTime'] == null ? null : pulumi.Output.create<String>(map['lastModificationTime'] as String),
      loggingConfig: map['loggingConfig'] == null ? null : pulumi.Output.create<TransferJobLoggingConfig>(TransferJobLoggingConfig.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notificationConfig: map['notificationConfig'] == null ? null : pulumi.Output.create<TransferJobNotificationConfig>(TransferJobNotificationConfig.fromMap((map['notificationConfig'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      replicationSpec: map['replicationSpec'] == null ? null : pulumi.Output.create<TransferJobReplicationSpec>(TransferJobReplicationSpec.fromMap((map['replicationSpec'] as Map).cast<String, dynamic>())),
      schedule: map['schedule'] == null ? null : pulumi.Output.create<TransferJobSchedule>(TransferJobSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>())),
      serviceAccount: map['serviceAccount'] == null ? null : pulumi.Output.create<String>(map['serviceAccount'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      transferSpec: map['transferSpec'] == null ? null : pulumi.Output.create<TransferJobTransferSpec>(TransferJobTransferSpec.fromMap((map['transferSpec'] as Map).cast<String, dynamic>())),
    );
  }
}

