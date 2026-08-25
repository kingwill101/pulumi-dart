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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Unique description to identify the Transfer Job.
  final pulumi.Input<String> description;
  /// Specifies the Event-driven transfer options. Event-driven transfers listen to an event stream to transfer updated files. Structure documented below Either `eventStream` or `schedule` must be set.
  final pulumi.Input<TransferJobEventStream?>? eventStream;
  /// Logging configuration. Structure documented below.
  final pulumi.Input<TransferJobLoggingConfig?>? loggingConfig;
  /// The name of the Transfer Job. This name must start with "transferJobs/" prefix and end with a letter or a number, and should be no more than 128 characters ( `transferJobs/^(?!OPI)[A-Za-z0-9-._~]*[A-Za-z0-9]$` ). For transfers involving PosixFilesystem, this name must start with transferJobs/OPI specifically ( `transferJobs/OPI^[A-Za-z0-9-._~]*[A-Za-z0-9]$` ). For all other transfer types, this name must not start with transferJobs/OPI. Default the provider will assign a random unique name with `transferJobs/{{name}}` format, where `name` is a numeric value.
  final pulumi.Input<String?>? name;
  /// Notification configuration. This is not supported for transfers involving PosixFilesystem. Structure documented below.
  final pulumi.Input<TransferJobNotificationConfig?>? notificationConfig;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Replication specification. Structure documented below. User should not configure `schedule`, `eventStream` with this argument. One of `transferSpec`, or `replicationSpec` must be specified.
  ///
  /// - - -
  final pulumi.Input<TransferJobReplicationSpec?>? replicationSpec;
  /// Schedule specification defining when the Transfer Job should be scheduled to start, end and what time to run. Structure documented below. Either `schedule` or `eventStream` must be set.
  final pulumi.Input<TransferJobSchedule?>? schedule;
  /// The user-managed service account to run the job. If this field is specified, the given service account is granted the necessary permissions to all applicable resources (e.g. GCS buckets) required by the job.
  final pulumi.Input<String?>? serviceAccount;
  /// Status of the job. Default: `ENABLED`. **NOTE: The effect of the new job status takes place during a subsequent job run. For example, if you change the job status from ENABLED to DISABLED, and an operation spawned by the transfer is running, the status change would not affect the current operation.**
  final pulumi.Input<String?>? status;
  /// Transfer specification. Structure documented below. One of `transferSpec`, or `replicationSpec` can be specified.
  final pulumi.Input<TransferJobTransferSpec?>? transferSpec;

  /// Creates a new [TransferJobArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [description] Unique description to identify the Transfer Job.
  /// [eventStream] Specifies the Event-driven transfer options. Event-driven transfers listen to an event stream to transfer updated files. Structure documented below Either `eventStream` or `schedule` must be set.
  /// [loggingConfig] Logging configuration. Structure documented below.
  /// [name] The name of the Transfer Job. This name must start with "transferJobs/" prefix and end with a letter or a number, and should be no more than 128 characters ( `transferJobs/^(?!OPI)[A-Za-z0-9-._~]*[A-Za-z0-9]$` ). For transfers involving PosixFilesystem, this name must start with transferJobs/OPI specifically ( `transferJobs/OPI^[A-Za-z0-9-._~]*[A-Za-z0-9]$` ). For all other transfer types, this name must not start with transferJobs/OPI. Default the provider will assign a random unique name with `transferJobs/{{name}}` format, where `name` is a numeric value.
  /// [notificationConfig] Notification configuration. This is not supported for transfers involving PosixFilesystem. Structure documented below.
  /// [project] The project in which the resource belongs. If it
  /// [replicationSpec] Replication specification. Structure documented below. User should not configure `schedule`, `eventStream` with this argument. One of `transferSpec`, or `replicationSpec` must be specified.
  /// [schedule] Schedule specification defining when the Transfer Job should be scheduled to start, end and what time to run. Structure documented below. Either `schedule` or `eventStream` must be set.
  /// [serviceAccount] The user-managed service account to run the job. If this field is specified, the given service account is granted the necessary permissions to all applicable resources (e.g. GCS buckets) required by the job.
  /// [status] Status of the job. Default: `ENABLED`. **NOTE: The effect of the new job status takes place during a subsequent job run. For example, if you change the job status from ENABLED to DISABLED, and an operation spawned by the transfer is running, the status change would not affect the current operation.**
  /// [transferSpec] Transfer specification. Structure documented below. One of `transferSpec`, or `replicationSpec` can be specified.
  const TransferJobArgs({
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      eventStream: (() { final guardedValue = map['eventStream']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TransferJobEventStream.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loggingConfig: (() { final guardedValue = map['loggingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TransferJobLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationConfig: (() { final guardedValue = map['notificationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TransferJobNotificationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationSpec: (() { final guardedValue = map['replicationSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TransferJobReplicationSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TransferJobSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transferSpec: (() { final guardedValue = map['transferSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TransferJobTransferSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
