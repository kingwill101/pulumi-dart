// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_schedule_create_notebook_execution_job_request.dart';
import 'ai_schedule_create_pipeline_job_request.dart';

/// {@template pulumi_vertex_ai_schedule_ai_schedule_args_doc}
/// The set of arguments for AiSchedule.
/// {@endtemplate}
/// {@macro pulumi_vertex_ai_schedule_ai_schedule_args_doc}
class AiScheduleArgs {
  /// Whether new scheduled runs can be queued when maxConcurrentRuns limit is reached. If set to true, new runs will be queued instead of skipped. Default to false.
  final pulumi.Input<bool>? allowQueueing;
  /// Request message for [NotebookService.CreateNotebookExecutionJob]
  /// Structure is documented below.
  final pulumi.Input<AiScheduleCreateNotebookExecutionJobRequest>? createNotebookExecutionJobRequest;
  /// Request message for PipelineService.CreatePipelineJob.
  /// Structure is documented below.
  final pulumi.Input<AiScheduleCreatePipelineJobRequest>? createPipelineJobRequest;
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
  final pulumi.Input<String> displayName;
  /// Timestamp after which no new runs can be scheduled. If specified, The schedule will be completed when either endTime is reached or when scheduledRunCount &gt;= max_run_count. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  final pulumi.Input<String>? endTime;
  /// The location of the Schedule. eg us-central1
  final pulumi.Input<String> location;
  /// Specifies the maximum number of active runs that can be executed concurrently for this Schedule. This limits the number of runs that can be in a non-terminal state at the same time. Currently, this field is only supported for requests of type CreatePipelineJobRequest.
  final pulumi.Input<String>? maxConcurrentActiveRunCount;
  /// Maximum number of runs that can be started concurrently for this Schedule. This is the limit for starting the scheduled requests and not the execution of the operations/jobs created by the requests (if applicable).
  final pulumi.Input<String> maxConcurrentRunCount;
  /// Maximum run count of the schedule. If specified, The schedule will be completed when either startedRunCount &gt;= maxRunCount or when endTime is reached. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  final pulumi.Input<String>? maxRunCount;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Timestamp after which the first run can be scheduled. Default to Schedule create time if not specified.
  final pulumi.Input<String>? startTime;

  /// Creates a new [AiScheduleArgs].
  /// [allowQueueing] Whether new scheduled runs can be queued when maxConcurrentRuns limit is reached. If set to true, new runs will be queued instead of skipped. Default to false.
  /// [createNotebookExecutionJobRequest] Request message for [NotebookService.CreateNotebookExecutionJob]
  /// [createPipelineJobRequest] Request message for PipelineService.CreatePipelineJob.
  /// [cron] Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or "TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, "CRON_TZ=America/New_York 1 * * * *", or "TZ=America/New_York 1 * * * *".
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] User provided name of the Schedule. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [endTime] Timestamp after which no new runs can be scheduled. If specified, The schedule will be completed when either endTime is reached or when scheduledRunCount &gt;= max_run_count. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  /// [location] The location of the Schedule. eg us-central1
  /// [maxConcurrentActiveRunCount] Specifies the maximum number of active runs that can be executed concurrently for this Schedule. This limits the number of runs that can be in a non-terminal state at the same time. Currently, this field is only supported for requests of type CreatePipelineJobRequest.
  /// [maxConcurrentRunCount] Maximum number of runs that can be started concurrently for this Schedule. This is the limit for starting the scheduled requests and not the execution of the operations/jobs created by the requests (if applicable).
  /// [maxRunCount] Maximum run count of the schedule. If specified, The schedule will be completed when either startedRunCount &gt;= maxRunCount or when endTime is reached. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  /// [project] The ID of the project in which the resource belongs.
  /// [startTime] Timestamp after which the first run can be scheduled. Default to Schedule create time if not specified.
  const AiScheduleArgs({
    this.allowQueueing,
    this.createNotebookExecutionJobRequest,
    this.createPipelineJobRequest,
    this.cron,
    this.deletionPolicy,
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
      'createNotebookExecutionJobRequest': ?pulumi.Input.mapOptionalInputValue<AiScheduleCreateNotebookExecutionJobRequest, Map<String, dynamic>>(createNotebookExecutionJobRequest, (value) => value.toMap()),
      'createPipelineJobRequest': ?pulumi.Input.mapOptionalInputValue<AiScheduleCreatePipelineJobRequest, Map<String, dynamic>>(createPipelineJobRequest, (value) => value.toMap()),
      'cron': ?cron,
      'deletionPolicy': ?deletionPolicy,
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

  factory AiScheduleArgs.fromMap(Map<String, dynamic> map) {
    return AiScheduleArgs(
      allowQueueing: (() { final guardedValue = map['allowQueueing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createNotebookExecutionJobRequest: (() { final guardedValue = map['createNotebookExecutionJobRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiScheduleCreateNotebookExecutionJobRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createPipelineJobRequest: (() { final guardedValue = map['createPipelineJobRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiScheduleCreatePipelineJobRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cron: (() { final guardedValue = map['cron']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
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
