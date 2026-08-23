// ignore_for_file: unused_element, unnecessary_cast

import 'app_engine_http_target_response_cloudscheduler_v1beta1.dart';
import 'http_target_response_cloudscheduler_v1beta1.dart';
import 'pubsub_target_response_cloudscheduler_v1beta1.dart';
import 'retry_config_response_cloudscheduler_v1beta1.dart';
import 'status_response_cloudscheduler_v1beta1.dart';

/// Result data returned by getJob.
class GetJobCloudschedulerV1beta1Result {
  /// App Engine HTTP target.
  final AppEngineHttpTargetResponseCloudschedulerV1beta1 appEngineHttpTarget;
  /// The deadline for job attempts. If the request handler does not respond by this deadline then the request is cancelled and the attempt is marked as a `DEADLINE_EXCEEDED` failure. The failed attempt can be viewed in execution logs. Cloud Scheduler will retry the job according to the RetryConfig. The default and the allowed values depend on the type of target: * For HTTP targets, the default is 3 minutes. The deadline must be in the interval [15 seconds, 30 minutes]. * For App Engine HTTP targets, 0 indicates that the request has the default deadline. The default deadline depends on the scaling type of the service: 10 minutes for standard apps with automatic scaling, 24 hours for standard apps with manual and basic scaling, and 60 minutes for flex apps. If the request deadline is set, it must be in the interval [15 seconds, 24 hours 15 seconds]. * For Pub/Sub targets, this field is ignored.
  final String attemptDeadline;
  /// Optionally caller-specified in CreateJob or UpdateJob. A human-readable description for the job. This string must not contain more than 500 characters.
  final String description;
  /// HTTP target.
  final HttpTargetResponseCloudschedulerV1beta1 httpTarget;
  /// The time the last job attempt started.
  final String lastAttemptTime;
  /// Immutable. This field is used to manage the legacy App Engine Cron jobs using the Cloud Scheduler API. If the field is set to true, the job will be considered a legacy job. Note that App Engine Cron jobs have fewer features than Cloud Scheduler jobs, e.g., are only limited to App Engine targets.
  final bool legacyAppEngineCron;
  /// Optionally caller-specified in CreateJob, after which it becomes output only. The job name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/jobs/JOB_ID`. * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID for the job's location. The list of available locations can be obtained by calling ListLocations. For more information, see https://cloud.google.com/about/locations/. * `JOB_ID` can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), or underscores (_). The maximum length is 500 characters.
  final String name;
  /// Pub/Sub target.
  final PubsubTargetResponseCloudschedulerV1beta1 pubsubTarget;
  /// Settings that determine the retry behavior.
  final RetryConfigResponseCloudschedulerV1beta1 retryConfig;
  /// Required, except when used with UpdateJob. Describes the schedule on which the job will be executed. The schedule can be either of the following types: * [Crontab](https://en.wikipedia.org/wiki/Cron#Overview) * English-like [schedule](https://cloud.google.com/scheduler/docs/configuring/cron-job-schedules) As a general rule, execution `n + 1` of a job will not begin until execution `n` has finished. Cloud Scheduler will never allow two simultaneously outstanding executions. For example, this implies that if the `n+1`th execution is scheduled to run at 16:00 but the `n`th execution takes until 16:15, the `n+1`th execution will not start until `16:15`. A scheduled start time will be delayed if the previous execution has not ended when its scheduled time occurs. If retry_count &gt; 0 and a job attempt fails, the job will be tried a total of retry_count times, with exponential backoff, until the next scheduled start time. If retry_count is 0, a job attempt will not be retried if it fails. Instead the Cloud Scheduler system will wait for the next scheduled execution time. Setting retry_count to 0 does not prevent failed jobs from running according to schedule after the failure.
  final String schedule;
  /// The next time the job is scheduled. Note that this may be a retry of a previously failed attempt or the next execution time according to the schedule.
  final String scheduleTime;
  /// State of the job.
  final String state;
  /// The response from the target for the last attempted execution.
  final StatusResponseCloudschedulerV1beta1 status;
  /// Specifies the time zone to be used in interpreting schedule. The value of this field must be a time zone name from the [tz database](http://en.wikipedia.org/wiki/Tz_database). Note that some time zones include a provision for daylight savings time. The rules for daylight saving time are determined by the chosen tz. For UTC use the string "utc". If a time zone is not specified, the default will be in UTC (also known as GMT).
  final String timeZone;
  /// The creation time of the job.
  final String userUpdateTime;

  /// Creates a new [GetJobCloudschedulerV1beta1Result].
  /// [appEngineHttpTarget] App Engine HTTP target.
  /// [attemptDeadline] The deadline for job attempts. If the request handler does not respond by this deadline then the request is cancelled and the attempt is marked as a `DEADLINE_EXCEEDED` failure. The failed attempt can be viewed in execution logs. Cloud Scheduler will retry the job according to the RetryConfig. The default and the allowed values depend on the type of target: * For HTTP targets, the default is 3 minutes. The deadline must be in the interval [15 seconds, 30 minutes]. * For App Engine HTTP targets, 0 indicates that the request has the default deadline. The default deadline depends on the scaling type of the service: 10 minutes for standard apps with automatic scaling, 24 hours for standard apps with manual and basic scaling, and 60 minutes for flex apps. If the request deadline is set, it must be in the interval [15 seconds, 24 hours 15 seconds]. * For Pub/Sub targets, this field is ignored.
  /// [description] Optionally caller-specified in CreateJob or UpdateJob. A human-readable description for the job. This string must not contain more than 500 characters.
  /// [httpTarget] HTTP target.
  /// [lastAttemptTime] The time the last job attempt started.
  /// [legacyAppEngineCron] Immutable. This field is used to manage the legacy App Engine Cron jobs using the Cloud Scheduler API. If the field is set to true, the job will be considered a legacy job. Note that App Engine Cron jobs have fewer features than Cloud Scheduler jobs, e.g., are only limited to App Engine targets.
  /// [name] Optionally caller-specified in CreateJob, after which it becomes output only. The job name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/jobs/JOB_ID`. * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), or periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects) * `LOCATION_ID` is the canonical ID for the job's location. The list of available locations can be obtained by calling ListLocations. For more information, see https://cloud.google.com/about/locations/. * `JOB_ID` can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), or underscores (_). The maximum length is 500 characters.
  /// [pubsubTarget] Pub/Sub target.
  /// [retryConfig] Settings that determine the retry behavior.
  /// [schedule] Required, except when used with UpdateJob. Describes the schedule on which the job will be executed. The schedule can be either of the following types: * [Crontab](https://en.wikipedia.org/wiki/Cron#Overview) * English-like [schedule](https://cloud.google.com/scheduler/docs/configuring/cron-job-schedules) As a general rule, execution `n + 1` of a job will not begin until execution `n` has finished. Cloud Scheduler will never allow two simultaneously outstanding executions. For example, this implies that if the `n+1`th execution is scheduled to run at 16:00 but the `n`th execution takes until 16:15, the `n+1`th execution will not start until `16:15`. A scheduled start time will be delayed if the previous execution has not ended when its scheduled time occurs. If retry_count &gt; 0 and a job attempt fails, the job will be tried a total of retry_count times, with exponential backoff, until the next scheduled start time. If retry_count is 0, a job attempt will not be retried if it fails. Instead the Cloud Scheduler system will wait for the next scheduled execution time. Setting retry_count to 0 does not prevent failed jobs from running according to schedule after the failure.
  /// [scheduleTime] The next time the job is scheduled. Note that this may be a retry of a previously failed attempt or the next execution time according to the schedule.
  /// [state] State of the job.
  /// [status] The response from the target for the last attempted execution.
  /// [timeZone] Specifies the time zone to be used in interpreting schedule. The value of this field must be a time zone name from the [tz database](http://en.wikipedia.org/wiki/Tz_database). Note that some time zones include a provision for daylight savings time. The rules for daylight saving time are determined by the chosen tz. For UTC use the string "utc". If a time zone is not specified, the default will be in UTC (also known as GMT).
  /// [userUpdateTime] The creation time of the job.
  const GetJobCloudschedulerV1beta1Result({
    required this.appEngineHttpTarget,
    required this.attemptDeadline,
    required this.description,
    required this.httpTarget,
    required this.lastAttemptTime,
    required this.legacyAppEngineCron,
    required this.name,
    required this.pubsubTarget,
    required this.retryConfig,
    required this.schedule,
    required this.scheduleTime,
    required this.state,
    required this.status,
    required this.timeZone,
    required this.userUpdateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appEngineHttpTarget': appEngineHttpTarget.toMap(),
      'attemptDeadline': attemptDeadline,
      'description': description,
      'httpTarget': httpTarget.toMap(),
      'lastAttemptTime': lastAttemptTime,
      'legacyAppEngineCron': legacyAppEngineCron,
      'name': name,
      'pubsubTarget': pubsubTarget.toMap(),
      'retryConfig': retryConfig.toMap(),
      'schedule': schedule,
      'scheduleTime': scheduleTime,
      'state': state,
      'status': status.toMap(),
      'timeZone': timeZone,
      'userUpdateTime': userUpdateTime,
    };
  }

  factory GetJobCloudschedulerV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetJobCloudschedulerV1beta1Result(
      appEngineHttpTarget: AppEngineHttpTargetResponseCloudschedulerV1beta1.fromMap((map['appEngineHttpTarget']! as Map).cast<String, dynamic>()),
      attemptDeadline: map['attemptDeadline'] as String,
      description: map['description'] as String,
      httpTarget: HttpTargetResponseCloudschedulerV1beta1.fromMap((map['httpTarget']! as Map).cast<String, dynamic>()),
      lastAttemptTime: map['lastAttemptTime'] as String,
      legacyAppEngineCron: map['legacyAppEngineCron'] as bool,
      name: map['name'] as String,
      pubsubTarget: PubsubTargetResponseCloudschedulerV1beta1.fromMap((map['pubsubTarget']! as Map).cast<String, dynamic>()),
      retryConfig: RetryConfigResponseCloudschedulerV1beta1.fromMap((map['retryConfig']! as Map).cast<String, dynamic>()),
      schedule: map['schedule'] as String,
      scheduleTime: map['scheduleTime'] as String,
      state: map['state'] as String,
      status: StatusResponseCloudschedulerV1beta1.fromMap((map['status']! as Map).cast<String, dynamic>()),
      timeZone: map['timeZone'] as String,
      userUpdateTime: map['userUpdateTime'] as String,
    );
  }
}
