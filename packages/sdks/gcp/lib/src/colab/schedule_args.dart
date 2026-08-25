// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_create_notebook_execution_job_request.dart';
import 'schedule_create_pipeline_job_request.dart';

/// {@template pulumi_colab_schedule_schedule_args_doc}
/// The set of arguments for Schedule.
/// {@endtemplate}
/// {@macro pulumi_colab_schedule_schedule_args_doc}
class ScheduleArgs {
  /// Whether new scheduled runs can be queued when maxConcurrentRuns limit is reached. If set to true, new runs will be queued instead of skipped. Default to false.
  final pulumi.Input<bool?>? allowQueueing;
  /// Request for google_colab_notebook_execution.
  /// Structure is documented below.
  final pulumi.Input<ScheduleCreateNotebookExecutionJobRequest?>? createNotebookExecutionJobRequest;
  /// Request message for PipelineService.CreatePipelineJob.
  /// Structure is documented below.
  final pulumi.Input<ScheduleCreatePipelineJobRequest?>? createPipelineJobRequest;
  /// Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs.
  final pulumi.Input<String> cron;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Desired state of the Colab Schedule. Set this field to `ACTIVE` to start/resume the schedule, and `PAUSED` to pause the schedule.
  final pulumi.Input<String?>? desiredState;
  /// Required. The display name of the Schedule.
  final pulumi.Input<String> displayName;
  /// Timestamp after which no new runs can be scheduled. If specified, the schedule will be completed when either endTime is reached or when scheduledRunCount &gt;= max_run_count. Must be in the RFC 3339 (https://www.ietf.org/rfc/rfc3339.txt) format.
  final pulumi.Input<String?>? endTime;
  /// The location for the resource: https://cloud.google.com/colab/docs/locations
  final pulumi.Input<String> location;
  /// Specifies the maximum number of active runs that can be executed concurrently for this Schedule. This limits the number of runs that can be in a non-terminal state at the same time. Currently, this field is only supported for requests of type CreatePipelineJobRequest.
  final pulumi.Input<String?>? maxConcurrentActiveRunCount;
  /// Maximum number of runs that can be started concurrently for this Schedule. This is the limit for starting the scheduled requests and not the execution of the notebook execution jobs created by the requests.
  final pulumi.Input<String> maxConcurrentRunCount;
  /// Maximum run count of the schedule. If specified, The schedule will be completed when either startedRunCount &gt;= maxRunCount or when endTime is reached. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  final pulumi.Input<String?>? maxRunCount;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The timestamp after which the first run can be scheduled. Defaults to the schedule creation time. Must be in the RFC 3339 (https://www.ietf.org/rfc/rfc3339.txt) format.
  final pulumi.Input<String?>? startTime;

  /// Creates a new [ScheduleArgs].
  /// [allowQueueing] Whether new scheduled runs can be queued when maxConcurrentRuns limit is reached. If set to true, new runs will be queued instead of skipped. Default to false.
  /// [createNotebookExecutionJobRequest] Request for google_colab_notebook_execution.
  /// [createPipelineJobRequest] Request message for PipelineService.CreatePipelineJob.
  /// [cron] Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [desiredState] Desired state of the Colab Schedule. Set this field to `ACTIVE` to start/resume the schedule, and `PAUSED` to pause the schedule.
  /// [displayName] Required. The display name of the Schedule.
  /// [endTime] Timestamp after which no new runs can be scheduled. If specified, the schedule will be completed when either endTime is reached or when scheduledRunCount &gt;= max_run_count. Must be in the RFC 3339 (https://www.ietf.org/rfc/rfc3339.txt) format.
  /// [location] The location for the resource: https://cloud.google.com/colab/docs/locations
  /// [maxConcurrentActiveRunCount] Specifies the maximum number of active runs that can be executed concurrently for this Schedule. This limits the number of runs that can be in a non-terminal state at the same time. Currently, this field is only supported for requests of type CreatePipelineJobRequest.
  /// [maxConcurrentRunCount] Maximum number of runs that can be started concurrently for this Schedule. This is the limit for starting the scheduled requests and not the execution of the notebook execution jobs created by the requests.
  /// [maxRunCount] Maximum run count of the schedule. If specified, The schedule will be completed when either startedRunCount &gt;= maxRunCount or when endTime is reached. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  /// [project] The ID of the project in which the resource belongs.
  /// [startTime] The timestamp after which the first run can be scheduled. Defaults to the schedule creation time. Must be in the RFC 3339 (https://www.ietf.org/rfc/rfc3339.txt) format.
  const ScheduleArgs({
    this.allowQueueing,
    this.createNotebookExecutionJobRequest,
    this.createPipelineJobRequest,
    required this.cron,
    this.deletionPolicy,
    this.desiredState,
    required this.displayName,
    this.endTime,
    required this.location,
    this.maxConcurrentActiveRunCount,
    required this.maxConcurrentRunCount,
    this.maxRunCount,
    this.project,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowQueueing': ?allowQueueing,
      'createNotebookExecutionJobRequest': ?pulumi.Input.mapOptionalInputValue<ScheduleCreateNotebookExecutionJobRequest, Map<String, dynamic>>(createNotebookExecutionJobRequest, (value) => value.toMap()),
      'createPipelineJobRequest': ?pulumi.Input.mapOptionalInputValue<ScheduleCreatePipelineJobRequest, Map<String, dynamic>>(createPipelineJobRequest, (value) => value.toMap()),
      'cron': cron,
      'deletionPolicy': ?deletionPolicy,
      'desiredState': ?desiredState,
      'displayName': displayName,
      'endTime': ?endTime,
      'location': location,
      'maxConcurrentActiveRunCount': ?maxConcurrentActiveRunCount,
      'maxConcurrentRunCount': maxConcurrentRunCount,
      'maxRunCount': ?maxRunCount,
      'project': ?project,
      'startTime': ?startTime,
    };
  }

  factory ScheduleArgs.fromMap(Map<String, dynamic> map) {
    return ScheduleArgs(
      allowQueueing: (() { final guardedValue = map['allowQueueing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createNotebookExecutionJobRequest: (() { final guardedValue = map['createNotebookExecutionJobRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduleCreateNotebookExecutionJobRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createPipelineJobRequest: (() { final guardedValue = map['createPipelineJobRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScheduleCreatePipelineJobRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cron: pulumi.Input.fromValue(map['cron'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desiredState: (() { final guardedValue = map['desiredState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      maxConcurrentActiveRunCount: (() { final guardedValue = map['maxConcurrentActiveRunCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxConcurrentRunCount: pulumi.Input.fromValue(map['maxConcurrentRunCount'] as String),
      maxRunCount: (() { final guardedValue = map['maxRunCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
