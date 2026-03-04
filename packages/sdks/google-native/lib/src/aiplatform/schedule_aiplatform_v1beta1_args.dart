// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_create_pipeline_job_request.dart';

/// {@template pulumi_aiplatform_v1beta1_schedule_aiplatform_v1beta1_args_doc}
/// The set of arguments for Schedule.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_schedule_aiplatform_v1beta1_args_doc}
class ScheduleAiplatformV1beta1Args {
  /// Optional. Whether new scheduled runs can be queued when max_concurrent_runs limit is reached. If set to true, new runs will be queued instead of skipped. Default to false.
  final pulumi.Input<bool>? allowQueueing;

  /// Request for PipelineService.CreatePipelineJob. CreatePipelineJobRequest.parent field is required (format: projects/{project}/locations/{location}).
  final pulumi.Input<GoogleCloudAiplatformV1beta1CreatePipelineJobRequest>?
  createPipelineJobRequest;

  /// Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or "TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, "CRON_TZ=America/New_York 1 * * * *", or "TZ=America/New_York 1 * * * *".
  final pulumi.Input<String>? cron;

  /// User provided name of the Schedule. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String> displayName;

  /// Optional. Timestamp after which no new runs can be scheduled. If specified, The schedule will be completed when either end_time is reached or when scheduled_run_count &gt;= max_run_count. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  final pulumi.Input<String>? endTime;
  final pulumi.Input<String>? location;

  /// Maximum number of runs that can be started concurrently for this Schedule. This is the limit for starting the scheduled requests and not the execution of the operations/jobs created by the requests (if applicable).
  final pulumi.Input<String> maxConcurrentRunCount;

  /// Optional. Maximum run count of the schedule. If specified, The schedule will be completed when either started_run_count &gt;= max_run_count or when end_time is reached. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  final pulumi.Input<String>? maxRunCount;

  /// Immutable. The resource name of the Schedule.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Optional. Timestamp after which the first run can be scheduled. Default to Schedule create time if not specified.
  final pulumi.Input<String>? startTime;

  /// Creates a new [ScheduleAiplatformV1beta1Args].
  /// [allowQueueing] Optional. Whether new scheduled runs can be queued when max_concurrent_runs limit is reached. If set to true, new runs will be queued instead of skipped. Default to false.
  /// [createPipelineJobRequest] Request for PipelineService.CreatePipelineJob. CreatePipelineJobRequest.parent field is required (format: projects/{project}/locations/{location}).
  /// [cron] Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or "TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, "CRON_TZ=America/New_York 1 * * * *", or "TZ=America/New_York 1 * * * *".
  /// [displayName] User provided name of the Schedule. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [endTime] Optional. Timestamp after which no new runs can be scheduled. If specified, The schedule will be completed when either end_time is reached or when scheduled_run_count &gt;= max_run_count. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  /// [location] Optional.
  /// [maxConcurrentRunCount] Maximum number of runs that can be started concurrently for this Schedule. This is the limit for starting the scheduled requests and not the execution of the operations/jobs created by the requests (if applicable).
  /// [maxRunCount] Optional. Maximum run count of the schedule. If specified, The schedule will be completed when either started_run_count &gt;= max_run_count or when end_time is reached. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  /// [name] Immutable. The resource name of the Schedule.
  /// [project] Optional.
  /// [startTime] Optional. Timestamp after which the first run can be scheduled. Default to Schedule create time if not specified.
  ScheduleAiplatformV1beta1Args({
    this.allowQueueing,
    this.createPipelineJobRequest,
    this.cron,
    required this.displayName,
    this.endTime,
    this.location,
    required this.maxConcurrentRunCount,
    this.maxRunCount,
    this.name,
    this.project,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowQueueing': ?allowQueueing,
      'createPipelineJobRequest':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudAiplatformV1beta1CreatePipelineJobRequest,
            Map<String, dynamic>
          >(createPipelineJobRequest, (value) => value.toMap()),
      'cron': ?cron,
      'displayName': displayName,
      'endTime': ?endTime,
      'location': ?location,
      'maxConcurrentRunCount': maxConcurrentRunCount,
      'maxRunCount': ?maxRunCount,
      'name': ?name,
      'project': ?project,
      'startTime': ?startTime,
    };
  }

  factory ScheduleAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return ScheduleAiplatformV1beta1Args(
      allowQueueing: (() {
        final guardedValue = map['allowQueueing'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      createPipelineJobRequest: (() {
        final guardedValue = map['createPipelineJobRequest'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudAiplatformV1beta1CreatePipelineJobRequest.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      cron: (() {
        final guardedValue = map['cron'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      endTime: (() {
        final guardedValue = map['endTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maxConcurrentRunCount: pulumi.Input.fromValue(
        map['maxConcurrentRunCount'] as String,
      ),
      maxRunCount: (() {
        final guardedValue = map['maxRunCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      startTime: (() {
        final guardedValue = map['startTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
