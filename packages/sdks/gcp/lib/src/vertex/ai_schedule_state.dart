// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_schedule_create_notebook_execution_job_request.dart';
import 'ai_schedule_create_pipeline_job_request.dart';
import 'ai_schedule_last_scheduled_run_response.dart';

/// Input properties used for looking up and filtering AiSchedule resources.
class AiScheduleState {
  /// Whether new scheduled runs can be queued when maxConcurrentRuns limit is reached. If set to true, new runs will be queued instead of skipped. Default to false.
  final pulumi.Input<bool>? allowQueueing;
  /// Whether to backfill missed runs when the schedule is resumed from PAUSED state. If set to true, all missed runs will be scheduled. New runs will be scheduled after the backfill is complete. Default to false.
  final pulumi.Input<bool>? catchUp;
  /// Request message for [NotebookService.CreateNotebookExecutionJob]
  /// Structure is documented below.
  final pulumi.Input<AiScheduleCreateNotebookExecutionJobRequest>? createNotebookExecutionJobRequest;
  /// Request message for PipelineService.CreatePipelineJob.
  /// Structure is documented below.
  final pulumi.Input<AiScheduleCreatePipelineJobRequest>? createPipelineJobRequest;
  /// Timestamp when this Schedule was created.
  final pulumi.Input<String>? createTime;
  /// Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or "TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, "CRON_TZ=America/New_York 1 * * * *", or "TZ=America/New_York 1 * * * *".
  final pulumi.Input<String>? cron;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// User provided name of the Schedule. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String>? displayName;
  /// Timestamp after which no new runs can be scheduled. If specified, The schedule will be completed when either endTime is reached or when scheduledRunCount &gt;= max_run_count. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  final pulumi.Input<String>? endTime;
  /// Timestamp when this Schedule was last paused. Unset if never paused.
  final pulumi.Input<String>? lastPauseTime;
  /// Timestamp when this Schedule was last resumed. Unset if never resumed from pause.
  final pulumi.Input<String>? lastResumeTime;
  /// Status of a scheduled run.
  /// Structure is documented below.
  final pulumi.Input<List<AiScheduleLastScheduledRunResponse>>? lastScheduledRunResponses;
  /// The location of the Schedule. eg us-central1
  final pulumi.Input<String>? location;
  /// Specifies the maximum number of active runs that can be executed concurrently for this Schedule. This limits the number of runs that can be in a non-terminal state at the same time. Currently, this field is only supported for requests of type CreatePipelineJobRequest.
  final pulumi.Input<String>? maxConcurrentActiveRunCount;
  /// Maximum number of runs that can be started concurrently for this Schedule. This is the limit for starting the scheduled requests and not the execution of the operations/jobs created by the requests (if applicable).
  final pulumi.Input<String>? maxConcurrentRunCount;
  /// Maximum run count of the schedule. If specified, The schedule will be completed when either startedRunCount &gt;= maxRunCount or when endTime is reached. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  final pulumi.Input<String>? maxRunCount;
  /// The resource name of the Schedule.
  final pulumi.Input<String>? name;
  /// Timestamp when this Schedule should schedule the next run. Having a nextRunTime in the past means the runs are being started behind schedule.
  final pulumi.Input<String>? nextRunTime;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Timestamp after which the first run can be scheduled. Default to Schedule create time if not specified.
  final pulumi.Input<String>? startTime;
  /// The number of runs started by this schedule.
  final pulumi.Input<String>? startedRunCount;
  /// The state of this Schedule. Possible values: ACTIVE PAUSED COMPLETED
  final pulumi.Input<String>? state;
  /// Timestamp when this Schedule was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [AiScheduleState].
  /// [allowQueueing] Whether new scheduled runs can be queued when maxConcurrentRuns limit is reached. If set to true, new runs will be queued instead of skipped. Default to false.
  /// [catchUp] Whether to backfill missed runs when the schedule is resumed from PAUSED state. If set to true, all missed runs will be scheduled. New runs will be scheduled after the backfill is complete. Default to false.
  /// [createNotebookExecutionJobRequest] Request message for [NotebookService.CreateNotebookExecutionJob]
  /// [createPipelineJobRequest] Request message for PipelineService.CreatePipelineJob.
  /// [createTime] Timestamp when this Schedule was created.
  /// [cron] Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or "TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, "CRON_TZ=America/New_York 1 * * * *", or "TZ=America/New_York 1 * * * *".
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] User provided name of the Schedule. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [endTime] Timestamp after which no new runs can be scheduled. If specified, The schedule will be completed when either endTime is reached or when scheduledRunCount &gt;= max_run_count. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  /// [lastPauseTime] Timestamp when this Schedule was last paused. Unset if never paused.
  /// [lastResumeTime] Timestamp when this Schedule was last resumed. Unset if never resumed from pause.
  /// [lastScheduledRunResponses] Status of a scheduled run.
  /// [location] The location of the Schedule. eg us-central1
  /// [maxConcurrentActiveRunCount] Specifies the maximum number of active runs that can be executed concurrently for this Schedule. This limits the number of runs that can be in a non-terminal state at the same time. Currently, this field is only supported for requests of type CreatePipelineJobRequest.
  /// [maxConcurrentRunCount] Maximum number of runs that can be started concurrently for this Schedule. This is the limit for starting the scheduled requests and not the execution of the operations/jobs created by the requests (if applicable).
  /// [maxRunCount] Maximum run count of the schedule. If specified, The schedule will be completed when either startedRunCount &gt;= maxRunCount or when endTime is reached. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  /// [name] The resource name of the Schedule.
  /// [nextRunTime] Timestamp when this Schedule should schedule the next run. Having a nextRunTime in the past means the runs are being started behind schedule.
  /// [project] The ID of the project in which the resource belongs.
  /// [startTime] Timestamp after which the first run can be scheduled. Default to Schedule create time if not specified.
  /// [startedRunCount] The number of runs started by this schedule.
  /// [state] The state of this Schedule. Possible values: ACTIVE PAUSED COMPLETED
  /// [updateTime] Timestamp when this Schedule was updated.
  const AiScheduleState({
    this.allowQueueing,
    this.catchUp,
    this.createNotebookExecutionJobRequest,
    this.createPipelineJobRequest,
    this.createTime,
    this.cron,
    this.deletionPolicy,
    this.displayName,
    this.endTime,
    this.lastPauseTime,
    this.lastResumeTime,
    this.lastScheduledRunResponses,
    this.location,
    this.maxConcurrentActiveRunCount,
    this.maxConcurrentRunCount,
    this.maxRunCount,
    this.name,
    this.nextRunTime,
    this.project,
    this.startTime,
    this.startedRunCount,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowQueueing': ?allowQueueing,
      'catchUp': ?catchUp,
      'createNotebookExecutionJobRequest': ?pulumi.Input.mapOptionalInputValue<AiScheduleCreateNotebookExecutionJobRequest, Map<String, dynamic>>(createNotebookExecutionJobRequest, (value) => value.toMap()),
      'createPipelineJobRequest': ?pulumi.Input.mapOptionalInputValue<AiScheduleCreatePipelineJobRequest, Map<String, dynamic>>(createPipelineJobRequest, (value) => value.toMap()),
      'createTime': ?createTime,
      'cron': ?cron,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'endTime': ?endTime,
      'lastPauseTime': ?lastPauseTime,
      'lastResumeTime': ?lastResumeTime,
      'lastScheduledRunResponses': ?pulumi.Input.mapOptionalInputValue<List<AiScheduleLastScheduledRunResponse>, List<Map<String, dynamic>>>(lastScheduledRunResponses, (value) => pulumi.Input.encodeList<AiScheduleLastScheduledRunResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'maxConcurrentActiveRunCount': ?maxConcurrentActiveRunCount,
      'maxConcurrentRunCount': ?maxConcurrentRunCount,
      'maxRunCount': ?maxRunCount,
      'name': ?name,
      'nextRunTime': ?nextRunTime,
      'project': ?project,
      'startTime': ?startTime,
      'startedRunCount': ?startedRunCount,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory AiScheduleState.fromMap(Map<String, dynamic> map) {
    return AiScheduleState(
      allowQueueing: (() { final guardedValue = map['allowQueueing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      catchUp: (() { final guardedValue = map['catchUp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createNotebookExecutionJobRequest: (() { final guardedValue = map['createNotebookExecutionJobRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiScheduleCreateNotebookExecutionJobRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createPipelineJobRequest: (() { final guardedValue = map['createPipelineJobRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiScheduleCreatePipelineJobRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cron: (() { final guardedValue = map['cron']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastPauseTime: (() { final guardedValue = map['lastPauseTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastResumeTime: (() { final guardedValue = map['lastResumeTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastScheduledRunResponses: (() { final guardedValue = map['lastScheduledRunResponses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiScheduleLastScheduledRunResponse>(guardedValue, (value) => AiScheduleLastScheduledRunResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxConcurrentActiveRunCount: (() { final guardedValue = map['maxConcurrentActiveRunCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxConcurrentRunCount: (() { final guardedValue = map['maxConcurrentRunCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxRunCount: (() { final guardedValue = map['maxRunCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextRunTime: (() { final guardedValue = map['nextRunTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startedRunCount: (() { final guardedValue = map['startedRunCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
