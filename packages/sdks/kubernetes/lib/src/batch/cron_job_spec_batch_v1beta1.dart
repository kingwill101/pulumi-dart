// ignore_for_file: unused_element, unnecessary_cast

import 'job_template_spec_batch_v1beta1.dart';

/// CronJobSpec describes how the job execution will look like and when it will actually run.
class CronJobSpecBatchV1beta1 {
  /// Specifies how to treat concurrent executions of a Job. Valid values are: - "Allow" (default): allows CronJobs to run concurrently; - "Forbid": forbids concurrent runs, skipping next run if previous run hasn't finished yet; - "Replace": cancels currently running job and replaces it with a new one
  final String? concurrencyPolicy;
  /// The number of failed finished jobs to retain. This is a pointer to distinguish between explicit zero and not specified. Defaults to 1.
  final int? failedJobsHistoryLimit;
  /// Specifies the job that will be created when executing a CronJob.
  final JobTemplateSpecBatchV1beta1 jobTemplate;
  /// The schedule in Cron format, see https://en.wikipedia.org/wiki/Cron.
  final String schedule;
  /// Optional deadline in seconds for starting the job if it misses scheduled time for any reason.  Missed jobs executions will be counted as failed ones.
  final int? startingDeadlineSeconds;
  /// The number of successful finished jobs to retain. This is a pointer to distinguish between explicit zero and not specified. Defaults to 3.
  final int? successfulJobsHistoryLimit;
  /// This flag tells the controller to suspend subsequent executions, it does not apply to already started executions.  Defaults to false.
  final bool? suspend;

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
      'jobTemplate': jobTemplate.toMap(),
      'schedule': schedule,
      'startingDeadlineSeconds': ?startingDeadlineSeconds,
      'successfulJobsHistoryLimit': ?successfulJobsHistoryLimit,
      'suspend': ?suspend,
    };
  }

  factory CronJobSpecBatchV1beta1.fromMap(Map<String, dynamic> map) {
    return CronJobSpecBatchV1beta1(
      concurrencyPolicy: map['concurrencyPolicy'] == null ? null : map['concurrencyPolicy'] as String,
      failedJobsHistoryLimit: map['failedJobsHistoryLimit'] == null ? null : map['failedJobsHistoryLimit'] as int,
      jobTemplate: JobTemplateSpecBatchV1beta1.fromMap((map['jobTemplate'] as Map).cast<String, dynamic>()),
      schedule: map['schedule'] as String,
      startingDeadlineSeconds: map['startingDeadlineSeconds'] == null ? null : map['startingDeadlineSeconds'] as int,
      successfulJobsHistoryLimit: map['successfulJobsHistoryLimit'] == null ? null : map['successfulJobsHistoryLimit'] as int,
      suspend: map['suspend'] == null ? null : map['suspend'] as bool,
    );
  }
}

