// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'transfer_job_event_stream.dart';
import 'transfer_job_logging_config.dart';
import 'transfer_job_notification_config.dart';
import 'transfer_job_replication_spec.dart';
import 'transfer_job_schedule.dart';
import 'transfer_job_transfer_spec.dart';

/// {@template pulumi_storage_transfer_job_transfer_job_args_doc}
/// The set of arguments for TransferJob.
/// {@endtemplate}
/// {@macro pulumi_storage_transfer_job_transfer_job_args_doc}
class TransferJobArgs {
  /// Unique description to identify the Transfer Job.
  final pulumi.Input<String> description;
  /// Specifies the Event-driven transfer options. Event-driven transfers listen to an event stream to transfer updated files. Structure documented below Either `event_stream` or `schedule` must be set.
  final pulumi.Input<TransferJobEventStream>? eventStream;
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

  /// Creates a new [TransferJobArgs].
  /// [description] Unique description to identify the Transfer Job.
  /// [eventStream] Specifies the Event-driven transfer options. Event-driven transfers listen to an event stream to transfer updated files. Structure documented below Either `event_stream` or `schedule` must be set.
  /// [loggingConfig] Logging configuration. Structure documented below.
  /// [name] The name of the Transfer Job. This name must start with "transferJobs/" prefix and end with a letter or a number, and should be no more than 128 characters ( `transferJobs/^(?!OPI)[A-Za-z0-9-._~]*[A-Za-z0-9]$` ). For transfers involving PosixFilesystem, this name must start with transferJobs/OPI specifically ( `transferJobs/OPI^[A-Za-z0-9-._~]*[A-Za-z0-9]$` ). For all other transfer types, this name must not start with transferJobs/OPI. Default the provider will assign a random unique name with `transferJobs/{{name}}` format, where `name` is a numeric value.
  /// [notificationConfig] Notification configuration. This is not supported for transfers involving PosixFilesystem. Structure documented below.
  /// [project] The project in which the resource belongs. If it
  /// [replicationSpec] Replication specification. Structure documented below. User should not configure `schedule`, `event_stream` with this argument. One of `transfer_spec`, or `replication_spec` must be specified.
  /// [schedule] Schedule specification defining when the Transfer Job should be scheduled to start, end and what time to run. Structure documented below. Either `schedule` or `event_stream` must be set.
  /// [serviceAccount] The user-managed service account to run the job. If this field is specified, the given service account is granted the necessary permissions to all applicable resources (e.g. GCS buckets) required by the job.
  /// [status] Status of the job. Default: `ENABLED`. **NOTE: The effect of the new job status takes place during a subsequent job run. For example, if you change the job status from ENABLED to DISABLED, and an operation spawned by the transfer is running, the status change would not affect the current operation.**
  /// [transferSpec] Transfer specification. Structure documented below. One of `transfer_spec`, or `replication_spec` can be specified.
  TransferJobArgs({
    required this.description,
    this.eventStream,
    this.loggingConfig,
    this.name,
    this.notificationConfig,
    this.project,
    this.replicationSpec,
    this.schedule,
    this.serviceAccount,
    this.status,
    this.transferSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'eventStream': ?pulumi.Input.mapOptionalInputValue<TransferJobEventStream, Map<String, dynamic>>(eventStream, (value) => value.toMap()),
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

  factory TransferJobArgs.fromMap(Map<String, dynamic> map) {
    return TransferJobArgs(
      description: (map['description'] as String).input(),
      eventStream: map['eventStream'] == null ? null : (TransferJobEventStream.fromMap((map['eventStream'] as Map).cast<String, dynamic>())).input(),
      loggingConfig: map['loggingConfig'] == null ? null : (TransferJobLoggingConfig.fromMap((map['loggingConfig'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      notificationConfig: map['notificationConfig'] == null ? null : (TransferJobNotificationConfig.fromMap((map['notificationConfig'] as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      replicationSpec: map['replicationSpec'] == null ? null : (TransferJobReplicationSpec.fromMap((map['replicationSpec'] as Map).cast<String, dynamic>())).input(),
      schedule: map['schedule'] == null ? null : (TransferJobSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>())).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (map['serviceAccount'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      transferSpec: map['transferSpec'] == null ? null : (TransferJobTransferSpec.fromMap((map['transferSpec'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

