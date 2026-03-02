// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_spec_patch.dart';

/// CronJobSpec describes how the job execution will look like and when it will actually run.
class CronJobSpecPatch {
  /// Specifies how to treat concurrent executions of a Job. Valid values are:
  ///
  /// - "Allow" (default): allows CronJobs to run concurrently; - "Forbid": forbids concurrent runs, skipping next run if previous run hasn't finished yet; - "Replace": cancels currently running job and replaces it with a new one
  final pulumi.Input<String>? concurrencyPolicy;
  /// The number of failed finished jobs to retain. Value must be non-negative integer. Defaults to 1.
  final pulumi.Input<int>? failedJobsHistoryLimit;
  /// Specifies the job that will be created when executing a CronJob.
  final pulumi.Input<JobTemplateSpecPatch>? jobTemplate;
  /// The schedule in Cron format, see https://en.wikipedia.org/wiki/Cron.
  final pulumi.Input<String>? schedule;
  /// Optional deadline in seconds for starting the job if it misses scheduled time for any reason.  Missed jobs executions will be counted as failed ones.
  final pulumi.Input<int>? startingDeadlineSeconds;
  /// The number of successful finished jobs to retain. Value must be non-negative integer. Defaults to 3.
  final pulumi.Input<int>? successfulJobsHistoryLimit;
  /// This flag tells the controller to suspend subsequent executions, it does not apply to already started executions.  Defaults to false.
  final pulumi.Input<bool>? suspend;
  /// The time zone name for the given schedule, see https://en.wikipedia.org/wiki/List_of_tz_database_time_zones. If not specified, this will default to the time zone of the kube-controller-manager process. The set of valid time zone names and the time zone offset is loaded from the system-wide time zone database by the API server during CronJob validation and the controller manager during execution. If no system-wide time zone database can be found a bundled version of the database is used instead. If the time zone name becomes invalid during the lifetime of a CronJob or due to a change in host configuration, the controller will stop creating new new Jobs and will create a system event with the reason UnknownTimeZone. More information can be found in https://kubernetes.io/docs/concepts/workloads/controllers/cron-jobs/#time-zones
  final pulumi.Input<String>? timeZone;

  /// Creates a new [CronJobSpecPatch].
  /// [concurrencyPolicy] Specifies how to treat concurrent executions of a Job. Valid values are:
  /// [failedJobsHistoryLimit] The number of failed finished jobs to retain. Value must be non-negative integer. Defaults to 1.
  /// [jobTemplate] Specifies the job that will be created when executing a CronJob.
  /// [schedule] The schedule in Cron format, see https://en.wikipedia.org/wiki/Cron.
  /// [startingDeadlineSeconds] Optional deadline in seconds for starting the job if it misses scheduled time for any reason.  Missed jobs executions will be counted as failed ones.
  /// [successfulJobsHistoryLimit] The number of successful finished jobs to retain. Value must be non-negative integer. Defaults to 3.
  /// [suspend] This flag tells the controller to suspend subsequent executions, it does not apply to already started executions.  Defaults to false.
  /// [timeZone] The time zone name for the given schedule, see https://en.wikipedia.org/wiki/List_of_tz_database_time_zones. If not specified, this will default to the time zone of the kube-controller-manager process. The set of valid time zone names and the time zone offset is loaded from the system-wide time zone database by the API server during CronJob validation and the controller manager during execution. If no system-wide time zone database can be found a bundled version of the database is used instead. If the time zone name becomes invalid during the lifetime of a CronJob or due to a change in host configuration, the controller will stop creating new new Jobs and will create a system event with the reason UnknownTimeZone. More information can be found in https://kubernetes.io/docs/concepts/workloads/controllers/cron-jobs/#time-zones
  CronJobSpecPatch({
    this.concurrencyPolicy,
    this.failedJobsHistoryLimit,
    this.jobTemplate,
    this.schedule,
    this.startingDeadlineSeconds,
    this.successfulJobsHistoryLimit,
    this.suspend,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'concurrencyPolicy': ?concurrencyPolicy,
      'failedJobsHistoryLimit': ?failedJobsHistoryLimit,
      'jobTemplate': ?pulumi.Input.mapOptionalInputValue<JobTemplateSpecPatch, Map<String, dynamic>>(jobTemplate, (value) => value.toMap()),
      'schedule': ?schedule,
      'startingDeadlineSeconds': ?startingDeadlineSeconds,
      'successfulJobsHistoryLimit': ?successfulJobsHistoryLimit,
      'suspend': ?suspend,
      'timeZone': ?timeZone,
    };
  }

  factory CronJobSpecPatch.fromMap(Map<String, dynamic> map) {
    return CronJobSpecPatch(
      concurrencyPolicy: map['concurrencyPolicy'] == null ? null : (map['concurrencyPolicy']! as String).input(),
      failedJobsHistoryLimit: map['failedJobsHistoryLimit'] == null ? null : (map['failedJobsHistoryLimit']! as int).input(),
      jobTemplate: map['jobTemplate'] == null ? null : (JobTemplateSpecPatch.fromMap((map['jobTemplate']! as Map).cast<String, dynamic>())).input(),
      schedule: map['schedule'] == null ? null : (map['schedule']! as String).input(),
      startingDeadlineSeconds: map['startingDeadlineSeconds'] == null ? null : (map['startingDeadlineSeconds']! as int).input(),
      successfulJobsHistoryLimit: map['successfulJobsHistoryLimit'] == null ? null : (map['successfulJobsHistoryLimit']! as int).input(),
      suspend: map['suspend'] == null ? null : (map['suspend']! as bool).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone']! as String).input(),
    );
  }
}

