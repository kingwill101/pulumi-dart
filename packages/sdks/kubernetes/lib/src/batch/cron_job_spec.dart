// ignore_for_file: unused_element, unnecessary_cast

import 'job_template_spec.dart';

/// CronJobSpec describes how the job execution will look like and when it will actually run.
class CronJobSpec {
  /// Specifies how to treat concurrent executions of a Job. Valid values are:
  ///
  /// - "Allow" (default): allows CronJobs to run concurrently; - "Forbid": forbids concurrent runs, skipping next run if previous run hasn't finished yet; - "Replace": cancels currently running job and replaces it with a new one
  final String? concurrencyPolicy;
  /// The number of failed finished jobs to retain. Value must be non-negative integer. Defaults to 1.
  final int? failedJobsHistoryLimit;
  /// Specifies the job that will be created when executing a CronJob.
  final JobTemplateSpec jobTemplate;
  /// The schedule in Cron format, see https://en.wikipedia.org/wiki/Cron.
  final String schedule;
  /// Optional deadline in seconds for starting the job if it misses scheduled time for any reason.  Missed jobs executions will be counted as failed ones.
  final int? startingDeadlineSeconds;
  /// The number of successful finished jobs to retain. Value must be non-negative integer. Defaults to 3.
  final int? successfulJobsHistoryLimit;
  /// This flag tells the controller to suspend subsequent executions, it does not apply to already started executions.  Defaults to false.
  final bool? suspend;
  /// The time zone name for the given schedule, see https://en.wikipedia.org/wiki/List_of_tz_database_time_zones. If not specified, this will default to the time zone of the kube-controller-manager process. The set of valid time zone names and the time zone offset is loaded from the system-wide time zone database by the API server during CronJob validation and the controller manager during execution. If no system-wide time zone database can be found a bundled version of the database is used instead. If the time zone name becomes invalid during the lifetime of a CronJob or due to a change in host configuration, the controller will stop creating new new Jobs and will create a system event with the reason UnknownTimeZone. More information can be found in https://kubernetes.io/docs/concepts/workloads/controllers/cron-jobs/#time-zones
  final String? timeZone;

  /// Creates a new [CronJobSpec].
  /// [concurrencyPolicy] Specifies how to treat concurrent executions of a Job. Valid values are:
  /// [failedJobsHistoryLimit] The number of failed finished jobs to retain. Value must be non-negative integer. Defaults to 1.
  /// [jobTemplate] Specifies the job that will be created when executing a CronJob.
  /// [schedule] The schedule in Cron format, see https://en.wikipedia.org/wiki/Cron.
  /// [startingDeadlineSeconds] Optional deadline in seconds for starting the job if it misses scheduled time for any reason.  Missed jobs executions will be counted as failed ones.
  /// [successfulJobsHistoryLimit] The number of successful finished jobs to retain. Value must be non-negative integer. Defaults to 3.
  /// [suspend] This flag tells the controller to suspend subsequent executions, it does not apply to already started executions.  Defaults to false.
  /// [timeZone] The time zone name for the given schedule, see https://en.wikipedia.org/wiki/List_of_tz_database_time_zones. If not specified, this will default to the time zone of the kube-controller-manager process. The set of valid time zone names and the time zone offset is loaded from the system-wide time zone database by the API server during CronJob validation and the controller manager during execution. If no system-wide time zone database can be found a bundled version of the database is used instead. If the time zone name becomes invalid during the lifetime of a CronJob or due to a change in host configuration, the controller will stop creating new new Jobs and will create a system event with the reason UnknownTimeZone. More information can be found in https://kubernetes.io/docs/concepts/workloads/controllers/cron-jobs/#time-zones
  CronJobSpec({
    this.concurrencyPolicy,
    this.failedJobsHistoryLimit,
    required this.jobTemplate,
    required this.schedule,
    this.startingDeadlineSeconds,
    this.successfulJobsHistoryLimit,
    this.suspend,
    this.timeZone,
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
      'timeZone': ?timeZone,
    };
  }

  factory CronJobSpec.fromMap(Map<String, dynamic> map) {
    return CronJobSpec(
      concurrencyPolicy: map['concurrencyPolicy'] == null ? null : map['concurrencyPolicy'] as String,
      failedJobsHistoryLimit: map['failedJobsHistoryLimit'] == null ? null : map['failedJobsHistoryLimit'] as int,
      jobTemplate: JobTemplateSpec.fromMap((map['jobTemplate'] as Map).cast<String, dynamic>()),
      schedule: map['schedule'] as String,
      startingDeadlineSeconds: map['startingDeadlineSeconds'] == null ? null : map['startingDeadlineSeconds'] as int,
      successfulJobsHistoryLimit: map['successfulJobsHistoryLimit'] == null ? null : map['successfulJobsHistoryLimit'] as int,
      suspend: map['suspend'] == null ? null : map['suspend'] as bool,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}

