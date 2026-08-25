// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_app_engine_http_target.dart';
import 'job_http_target.dart';
import 'job_pubsub_target.dart';
import 'job_retry_config.dart';

/// Input properties used for looking up and filtering Job resources.
class JobState {
  /// App Engine HTTP target.
  /// If the job providers a App Engine HTTP target the cron will
  /// send a request to the service instance
  /// Structure is documented below.
  final pulumi.Input<JobAppEngineHttpTarget?>? appEngineHttpTarget;
  /// The deadline for job attempts. If the request handler does not respond by this deadline then the request is
  /// cancelled and the attempt is marked as a DEADLINE_EXCEEDED failure. The failed attempt can be viewed in
  /// execution logs. Cloud Scheduler will retry the job according to the RetryConfig.
  /// The allowed duration for this deadline is:
  /// * For HTTP targets, between 15 seconds and 30 minutes.
  /// * For App Engine HTTP targets, between 15 seconds and 24 hours.
  /// * **Note**: For PubSub targets, this field is ignored - setting it will introduce an unresolvable diff.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s"
  final pulumi.Input<String?>? attemptDeadline;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A human-readable description for the job.
  /// This string must not contain more than 500 characters.
  final pulumi.Input<String?>? description;
  /// HTTP target.
  /// If the job providers a httpTarget the cron will
  /// send a request to the targeted url
  /// Structure is documented below.
  final pulumi.Input<JobHttpTarget?>? httpTarget;
  /// The name of the job.
  final pulumi.Input<String?>? name;
  /// Sets the job to a paused state. Jobs default to being enabled when this property is not set.
  final pulumi.Input<bool?>? paused;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Pub/Sub target
  /// If the job providers a Pub/Sub target the cron will publish
  /// a message to the provided topic
  /// Structure is documented below.
  final pulumi.Input<JobPubsubTarget?>? pubsubTarget;
  /// Region where the scheduler job resides. If it is not provided, this provider will use the provider default.
  final pulumi.Input<String?>? region;
  /// By default, if a job does not complete successfully,
  /// meaning that an acknowledgement is not received from the handler,
  /// then it will be retried with exponential backoff according to the settings
  /// Structure is documented below.
  final pulumi.Input<JobRetryConfig?>? retryConfig;
  /// Describes the schedule on which the job will be executed.
  final pulumi.Input<String?>? schedule;
  /// State of the job.
  final pulumi.Input<String?>? state;
  /// Specifies the time zone to be used in interpreting schedule.
  /// The value of this field must be a time zone name from the tz database.
  final pulumi.Input<String?>? timeZone;

  /// Creates a new [JobState].
  /// [appEngineHttpTarget] App Engine HTTP target.
  /// [attemptDeadline] The deadline for job attempts. If the request handler does not respond by this deadline then the request is
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A human-readable description for the job.
  /// [httpTarget] HTTP target.
  /// [name] The name of the job.
  /// [paused] Sets the job to a paused state. Jobs default to being enabled when this property is not set.
  /// [project] The ID of the project in which the resource belongs.
  /// [pubsubTarget] Pub/Sub target
  /// [region] Region where the scheduler job resides. If it is not provided, this provider will use the provider default.
  /// [retryConfig] By default, if a job does not complete successfully,
  /// [schedule] Describes the schedule on which the job will be executed.
  /// [state] State of the job.
  /// [timeZone] Specifies the time zone to be used in interpreting schedule.
  const JobState({
    this.appEngineHttpTarget,
    this.attemptDeadline,
    this.deletionPolicy,
    this.description,
    this.httpTarget,
    this.name,
    this.paused,
    this.project,
    this.pubsubTarget,
    this.region,
    this.retryConfig,
    this.schedule,
    this.state,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appEngineHttpTarget': ?pulumi.Input.mapOptionalInputValue<JobAppEngineHttpTarget, Map<String, dynamic>>(appEngineHttpTarget, (value) => value.toMap()),
      'attemptDeadline': ?attemptDeadline,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'httpTarget': ?pulumi.Input.mapOptionalInputValue<JobHttpTarget, Map<String, dynamic>>(httpTarget, (value) => value.toMap()),
      'name': ?name,
      'paused': ?paused,
      'project': ?project,
      'pubsubTarget': ?pulumi.Input.mapOptionalInputValue<JobPubsubTarget, Map<String, dynamic>>(pubsubTarget, (value) => value.toMap()),
      'region': ?region,
      'retryConfig': ?pulumi.Input.mapOptionalInputValue<JobRetryConfig, Map<String, dynamic>>(retryConfig, (value) => value.toMap()),
      'schedule': ?schedule,
      'state': ?state,
      'timeZone': ?timeZone,
    };
  }

  factory JobState.fromMap(Map<String, dynamic> map) {
    return JobState(
      appEngineHttpTarget: (() { final guardedValue = map['appEngineHttpTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobAppEngineHttpTarget.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      attemptDeadline: (() { final guardedValue = map['attemptDeadline']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpTarget: (() { final guardedValue = map['httpTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobHttpTarget.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paused: (() { final guardedValue = map['paused']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pubsubTarget: (() { final guardedValue = map['pubsubTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobPubsubTarget.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retryConfig: (() { final guardedValue = map['retryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobRetryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
