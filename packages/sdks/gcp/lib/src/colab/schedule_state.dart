// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_create_notebook_execution_job_request.dart';

/// Input properties used for looking up and filtering Schedule resources.
class ScheduleState {
  /// Whether new scheduled runs can be queued when max_concurrent_runs limit is reached. If set to true, new runs will be queued instead of skipped. Default to false.
  final pulumi.Input<bool>? allowQueueing;
  /// Request for google_colab_notebook_execution.
  /// Structure is documented below.
  final pulumi.Input<ScheduleCreateNotebookExecutionJobRequest>? createNotebookExecutionJobRequest;
  /// Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs.
  final pulumi.Input<String>? cron;
  /// Desired state of the Colab Schedule. Set this field to `ACTIVE` to start/resume the schedule, and `PAUSED` to pause the schedule.
  final pulumi.Input<String>? desiredState;
  /// Required. The display name of the Schedule.
  final pulumi.Input<String>? displayName;
  /// Timestamp after which no new runs can be scheduled. If specified, the schedule will be completed when either end_time is reached or when scheduled_run_count >= max_run_count. Must be in the RFC 3339 (https://www.ietf.org/rfc/rfc3339.txt) format.
  final pulumi.Input<String>? endTime;
  /// The location for the resource: https://cloud.google.com/colab/docs/locations
  final pulumi.Input<String>? location;
  /// Maximum number of runs that can be started concurrently for this Schedule. This is the limit for starting the scheduled requests and not the execution of the notebook execution jobs created by the requests.
  final pulumi.Input<String>? maxConcurrentRunCount;
  /// Maximum run count of the schedule. If specified, The schedule will be completed when either startedRunCount >= maxRunCount or when endTime is reached. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  final pulumi.Input<String>? maxRunCount;
  /// The resource name of the Schedule
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The timestamp after which the first run can be scheduled. Defaults to the schedule creation time. Must be in the RFC 3339 (https://www.ietf.org/rfc/rfc3339.txt) format.
  final pulumi.Input<String>? startTime;
  /// Output only. The state of the schedule.
  final pulumi.Input<String>? state;

  /// Creates a new [ScheduleState].
  /// [allowQueueing] Whether new scheduled runs can be queued when max_concurrent_runs limit is reached. If set to true, new runs will be queued instead of skipped. Default to false.
  /// [createNotebookExecutionJobRequest] Request for google_colab_notebook_execution.
  /// [cron] Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs.
  /// [desiredState] Desired state of the Colab Schedule. Set this field to `ACTIVE` to start/resume the schedule, and `PAUSED` to pause the schedule.
  /// [displayName] Required. The display name of the Schedule.
  /// [endTime] Timestamp after which no new runs can be scheduled. If specified, the schedule will be completed when either end_time is reached or when scheduled_run_count >= max_run_count. Must be in the RFC 3339 (https://www.ietf.org/rfc/rfc3339.txt) format.
  /// [location] The location for the resource: https://cloud.google.com/colab/docs/locations
  /// [maxConcurrentRunCount] Maximum number of runs that can be started concurrently for this Schedule. This is the limit for starting the scheduled requests and not the execution of the notebook execution jobs created by the requests.
  /// [maxRunCount] Maximum run count of the schedule. If specified, The schedule will be completed when either startedRunCount >= maxRunCount or when endTime is reached. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  /// [name] The resource name of the Schedule
  /// [project] The ID of the project in which the resource belongs.
  /// [startTime] The timestamp after which the first run can be scheduled. Defaults to the schedule creation time. Must be in the RFC 3339 (https://www.ietf.org/rfc/rfc3339.txt) format.
  /// [state] Output only. The state of the schedule.
  ScheduleState({
    pulumi.Output<bool>? allowQueueing,
    pulumi.Output<ScheduleCreateNotebookExecutionJobRequest>? createNotebookExecutionJobRequest,
    pulumi.Output<String>? cron,
    pulumi.Output<String>? desiredState,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? endTime,
    pulumi.Output<String>? location,
    pulumi.Output<String>? maxConcurrentRunCount,
    pulumi.Output<String>? maxRunCount,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? startTime,
    pulumi.Output<String>? state,
  }) :
      allowQueueing = pulumi.Input.asOptionalInput<bool>(allowQueueing),
      createNotebookExecutionJobRequest = pulumi.Input.asOptionalInput<ScheduleCreateNotebookExecutionJobRequest>(createNotebookExecutionJobRequest),
      cron = pulumi.Input.asOptionalInput<String>(cron),
      desiredState = pulumi.Input.asOptionalInput<String>(desiredState),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      endTime = pulumi.Input.asOptionalInput<String>(endTime),
      location = pulumi.Input.asOptionalInput<String>(location),
      maxConcurrentRunCount = pulumi.Input.asOptionalInput<String>(maxConcurrentRunCount),
      maxRunCount = pulumi.Input.asOptionalInput<String>(maxRunCount),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      startTime = pulumi.Input.asOptionalInput<String>(startTime),
      state = pulumi.Input.asOptionalInput<String>(state);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowQueueing': ?allowQueueing,
      'createNotebookExecutionJobRequest': ?pulumi.Input.mapOptionalInputValue<ScheduleCreateNotebookExecutionJobRequest, Map<String, dynamic>>(createNotebookExecutionJobRequest, (value) => value.toMap()),
      'cron': ?cron,
      'desiredState': ?desiredState,
      'displayName': ?displayName,
      'endTime': ?endTime,
      'location': ?location,
      'maxConcurrentRunCount': ?maxConcurrentRunCount,
      'maxRunCount': ?maxRunCount,
      'name': ?name,
      'project': ?project,
      'startTime': ?startTime,
      'state': ?state,
    };
  }

  factory ScheduleState.fromMap(Map<String, dynamic> map) {
    return ScheduleState(
      allowQueueing: map['allowQueueing'] == null ? null : pulumi.Output.create<bool>(map['allowQueueing'] as bool),
      createNotebookExecutionJobRequest: map['createNotebookExecutionJobRequest'] == null ? null : pulumi.Output.create<ScheduleCreateNotebookExecutionJobRequest>(ScheduleCreateNotebookExecutionJobRequest.fromMap((map['createNotebookExecutionJobRequest'] as Map).cast<String, dynamic>())),
      cron: map['cron'] == null ? null : pulumi.Output.create<String>(map['cron'] as String),
      desiredState: map['desiredState'] == null ? null : pulumi.Output.create<String>(map['desiredState'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      endTime: map['endTime'] == null ? null : pulumi.Output.create<String>(map['endTime'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maxConcurrentRunCount: map['maxConcurrentRunCount'] == null ? null : pulumi.Output.create<String>(map['maxConcurrentRunCount'] as String),
      maxRunCount: map['maxRunCount'] == null ? null : pulumi.Output.create<String>(map['maxRunCount'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      startTime: map['startTime'] == null ? null : pulumi.Output.create<String>(map['startTime'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
    );
  }
}

