// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_spec_batch_v1beta1.dart';

/// CronJobSpec describes how the job execution will look like and when it will actually run.
class CronJobSpecBatchV1beta1 {
  /// Specifies how to treat concurrent executions of a Job. Valid values are: - "Allow" (default): allows CronJobs to run concurrently; - "Forbid": forbids concurrent runs, skipping next run if previous run hasn't finished yet; - "Replace": cancels currently running job and replaces it with a new one
  final pulumi.Input<String>? concurrencyPolicy;

  /// The number of failed finished jobs to retain. This is a pointer to distinguish between explicit zero and not specified. Defaults to 1.
  final pulumi.Input<int>? failedJobsHistoryLimit;

  /// Specifies the job that will be created when executing a CronJob.
  final pulumi.Input<JobTemplateSpecBatchV1beta1> jobTemplate;

  /// The schedule in Cron format, see https://en.wikipedia.org/wiki/Cron.
  final pulumi.Input<String> schedule;

  /// Optional deadline in seconds for starting the job if it misses scheduled time for any reason.  Missed jobs executions will be counted as failed ones.
  final pulumi.Input<int>? startingDeadlineSeconds;

  /// The number of successful finished jobs to retain. This is a pointer to distinguish between explicit zero and not specified. Defaults to 3.
  final pulumi.Input<int>? successfulJobsHistoryLimit;

  /// This flag tells the controller to suspend subsequent executions, it does not apply to already started executions.  Defaults to false.
  final pulumi.Input<bool>? suspend;

  /// Creates a new [CronJobSpecBatchV1beta1].
  /// [concurrencyPolicy] Specifies how to treat concurrent executions of a Job. Valid values are: - "Allow" (default): allows CronJobs to run concurrently; - "Forbid": forbids concurrent runs, skipping next run if previous run hasn't finished yet; - "Replace": cancels currently running job and replaces it with a new one
  /// [failedJobsHistoryLimit] The number of failed finished jobs to retain. This is a pointer to distinguish between explicit zero and not specified. Defaults to 1.
  /// [jobTemplate] Specifies the job that will be created when executing a CronJob.
  /// [schedule] The schedule in Cron format, see https://en.wikipedia.org/wiki/Cron.
  /// [startingDeadlineSeconds] Optional deadline in seconds for starting the job if it misses scheduled time for any reason.  Missed jobs executions will be counted as failed ones.
  /// [successfulJobsHistoryLimit] The number of successful finished jobs to retain. This is a pointer to distinguish between explicit zero and not specified. Defaults to 3.
  /// [suspend] This flag tells the controller to suspend subsequent executions, it does not apply to already started executions.  Defaults to false.
  CronJobSpecBatchV1beta1({
    this.concurrencyPolicy,
    this.failedJobsHistoryLimit,
    required this.jobTemplate,
    required this.schedule,
    this.startingDeadlineSeconds,
    this.successfulJobsHistoryLimit,
    this.suspend,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'concurrencyPolicy': ?concurrencyPolicy,
      'failedJobsHistoryLimit': ?failedJobsHistoryLimit,
      'jobTemplate':
          pulumi.Input.mapInputValue<
            JobTemplateSpecBatchV1beta1,
            Map<String, dynamic>
          >(jobTemplate, (value) => value.toMap()),
      'schedule': schedule,
      'startingDeadlineSeconds': ?startingDeadlineSeconds,
      'successfulJobsHistoryLimit': ?successfulJobsHistoryLimit,
      'suspend': ?suspend,
    };
  }

  factory CronJobSpecBatchV1beta1.fromMap(Map<String, dynamic> map) {
    return CronJobSpecBatchV1beta1(
      concurrencyPolicy: (() {
        final guardedValue = map['concurrencyPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      failedJobsHistoryLimit: (() {
        final guardedValue = map['failedJobsHistoryLimit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      jobTemplate: pulumi.Input.fromValue(
        JobTemplateSpecBatchV1beta1.fromMap(
          (map['jobTemplate']! as Map).cast<String, dynamic>(),
        ),
      ),
      schedule: pulumi.Input.fromValue(map['schedule'] as String),
      startingDeadlineSeconds: (() {
        final guardedValue = map['startingDeadlineSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      successfulJobsHistoryLimit: (() {
        final guardedValue = map['successfulJobsHistoryLimit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      suspend: (() {
        final guardedValue = map['suspend'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
