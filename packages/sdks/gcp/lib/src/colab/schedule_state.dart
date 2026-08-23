// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_create_notebook_execution_job_request.dart';
import 'schedule_create_pipeline_job_request.dart';
import 'schedule_last_scheduled_run_response.dart';

/// Input properties used for looking up and filtering Schedule resources.
class ScheduleState {
  /// Whether new scheduled runs can be queued when maxConcurrentRuns limit is reached. If set to true, new runs will be queued instead of skipped. Default to false.
  final pulumi.Input<bool>? allowQueueing;
  /// Whether to backfill missed runs when the schedule is resumed from PAUSED state. If set to true, all missed runs will be scheduled. New runs will be scheduled after the backfill is complete. Default to false.
  final pulumi.Input<bool>? catchUp;
  /// Request for google_colab_notebook_execution.
  /// Structure is documented below.
  final pulumi.Input<ScheduleCreateNotebookExecutionJobRequest>? createNotebookExecutionJobRequest;
  /// Request message for PipelineService.CreatePipelineJob.
  /// Structure is documented below.
  final pulumi.Input<ScheduleCreatePipelineJobRequest>? createPipelineJobRequest;
  /// Timestamp when this Schedule was created.
  final pulumi.Input<String>? createTime;
  /// Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs.
  final pulumi.Input<String>? cron;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Desired state of the Colab Schedule. Set this field to `ACTIVE` to start/resume the schedule, and `PAUSED` to pause the schedule.
  final pulumi.Input<String>? desiredState;
  /// Required. The display name of the Schedule.
  final pulumi.Input<String>? displayName;
  /// Timestamp after which no new runs can be scheduled. If specified, the schedule will be completed when either endTime is reached or when scheduledRunCount &gt;= max_run_count. Must be in the RFC 3339 (https://www.ietf.org/rfc/rfc3339.txt) format.
  final pulumi.Input<String>? endTime;
  /// Timestamp when this Schedule was last paused. Unset if never paused.
  final pulumi.Input<String>? lastPauseTime;
  /// Timestamp when this Schedule was last resumed. Unset if never resumed from pause.
  final pulumi.Input<String>? lastResumeTime;
  /// Status of a scheduled run.
  /// Structure is documented below.
  final pulumi.Input<List<ScheduleLastScheduledRunResponse>>? lastScheduledRunResponses;
  /// The location for the resource: https://cloud.google.com/colab/docs/locations
  final pulumi.Input<String>? location;
  /// Specifies the maximum number of active runs that can be executed concurrently for this Schedule. This limits the number of runs that can be in a non-terminal state at the same time. Currently, this field is only supported for requests of type CreatePipelineJobRequest.
  final pulumi.Input<String>? maxConcurrentActiveRunCount;
  /// Maximum number of runs that can be started concurrently for this Schedule. This is the limit for starting the scheduled requests and not the execution of the notebook execution jobs created by the requests.
  final pulumi.Input<String>? maxConcurrentRunCount;
  /// Maximum run count of the schedule. If specified, The schedule will be completed when either startedRunCount &gt;= maxRunCount or when endTime is reached. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  final pulumi.Input<String>? maxRunCount;
  /// The resource name of the Schedule
  final pulumi.Input<String>? name;
  /// Timestamp when this Schedule should schedule the next run. Having a nextRunTime in the past means the runs are being started behind schedule.
  final pulumi.Input<String>? nextRunTime;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The timestamp after which the first run can be scheduled. Defaults to the schedule creation time. Must be in the RFC 3339 (https://www.ietf.org/rfc/rfc3339.txt) format.
  final pulumi.Input<String>? startTime;
  /// The number of runs started by this schedule.
  final pulumi.Input<String>? startedRunCount;
  /// Output only. The state of the schedule.
  final pulumi.Input<String>? state;
  /// Timestamp when this Schedule was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ScheduleState].
  /// [allowQueueing] Whether new scheduled runs can be queued when maxConcurrentRuns limit is reached. If set to true, new runs will be queued instead of skipped. Default to false.
  /// [catchUp] Whether to backfill missed runs when the schedule is resumed from PAUSED state. If set to true, all missed runs will be scheduled. New runs will be scheduled after the backfill is complete. Default to false.
  /// [createNotebookExecutionJobRequest] Request for google_colab_notebook_execution.
  /// [createPipelineJobRequest] Request message for PipelineService.CreatePipelineJob.
  /// [createTime] Timestamp when this Schedule was created.
  /// [cron] Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [desiredState] Desired state of the Colab Schedule. Set this field to `ACTIVE` to start/resume the schedule, and `PAUSED` to pause the schedule.
  /// [displayName] Required. The display name of the Schedule.
  /// [endTime] Timestamp after which no new runs can be scheduled. If specified, the schedule will be completed when either endTime is reached or when scheduledRunCount &gt;= max_run_count. Must be in the RFC 3339 (https://www.ietf.org/rfc/rfc3339.txt) format.
  /// [lastPauseTime] Timestamp when this Schedule was last paused. Unset if never paused.
  /// [lastResumeTime] Timestamp when this Schedule was last resumed. Unset if never resumed from pause.
  /// [lastScheduledRunResponses] Status of a scheduled run.
  /// [location] The location for the resource: https://cloud.google.com/colab/docs/locations
  /// [maxConcurrentActiveRunCount] Specifies the maximum number of active runs that can be executed concurrently for this Schedule. This limits the number of runs that can be in a non-terminal state at the same time. Currently, this field is only supported for requests of type CreatePipelineJobRequest.
  /// [maxConcurrentRunCount] Maximum number of runs that can be started concurrently for this Schedule. This is the limit for starting the scheduled requests and not the execution of the notebook execution jobs created by the requests.
  /// [maxRunCount] Maximum run count of the schedule. If specified, The schedule will be completed when either startedRunCount &gt;= maxRunCount or when endTime is reached. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  /// [name] The resource name of the Schedule
  /// [nextRunTime] Timestamp when this Schedule should schedule the next run. Having a nextRunTime in the past means the runs are being started behind schedule.
  /// [project] The ID of the project in which the resource belongs.
  /// [startTime] The timestamp after which the first run can be scheduled. Defaults to the schedule creation time. Must be in the RFC 3339 (https://www.ietf.org/rfc/rfc3339.txt) format.
  /// [startedRunCount] The number of runs started by this schedule.
  /// [state] Output only. The state of the schedule.
  /// [updateTime] Timestamp when this Schedule was updated.
  const ScheduleState({
    this.allowQueueing,
    this.catchUp,
    this.createNotebookExecutionJobRequest,
    this.createPipelineJobRequest,
    this.createTime,
    this.cron,
    this.deletionPolicy,
    this.desiredState,
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
      'createNotebookExecutionJobRequest': ?pulumi.Input.mapOptionalInputValue<ScheduleCreateNotebookExecutionJobRequest, Map<String, dynamic>>(createNotebookExecutionJobRequest, (value) => value.toMap()),
      'createPipelineJobRequest': ?pulumi.Input.mapOptionalInputValue<ScheduleCreatePipelineJobRequest, Map<String, dynamic>>(createPipelineJobRequest, (value) => value.toMap()),
      'createTime': ?createTime,
      'cron': ?cron,
      'deletionPolicy': ?deletionPolicy,
      'desiredState': ?desiredState,
      'displayName': ?displayName,
      'endTime': ?endTime,
      'lastPauseTime': ?lastPauseTime,
      'lastResumeTime': ?lastResumeTime,
      'lastScheduledRunResponses': ?pulumi.Input.mapOptionalInputValue<List<ScheduleLastScheduledRunResponse>, List<Map<String, dynamic>>>(lastScheduledRunResponses, (value) => pulumi.Input.encodeList<ScheduleLastScheduledRunResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
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

  factory ScheduleState.fromMap(Map<String, dynamic> map) {
    return ScheduleState(
      allowQueueing: (() { final guardedValue = map['allowQueueing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      catchUp: (() { final guardedValue = map['catchUp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createNotebookExecutionJobRequest: (() { final guardedValue = map['createNotebookExecutionJobRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduleCreateNotebookExecutionJobRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createPipelineJobRequest: (() { final guardedValue = map['createPipelineJobRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduleCreatePipelineJobRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cron: (() { final guardedValue = map['cron']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desiredState: (() { final guardedValue = map['desiredState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastPauseTime: (() { final guardedValue = map['lastPauseTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastResumeTime: (() { final guardedValue = map['lastResumeTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastScheduledRunResponses: (() { final guardedValue = map['lastScheduledRunResponses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScheduleLastScheduledRunResponse>(guardedValue, (value) => ScheduleLastScheduledRunResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
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
