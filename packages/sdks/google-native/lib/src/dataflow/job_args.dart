// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment.dart';
import 'execution_stage_state.dart';
import 'job_current_state.dart';
import 'job_execution_info.dart';
import 'job_metadata.dart';
import 'job_requested_state.dart';
import 'job_type.dart';
import 'pipeline_description.dart';
import 'runtime_updatable_params.dart';
import 'step.dart';

/// {@template pulumi_dataflow_v1b3_job_args_doc}
/// The set of arguments for Job.
/// {@endtemplate}
/// {@macro pulumi_dataflow_v1b3_job_args_doc}
class JobArgs {
  /// The client's unique identifier of the job, re-used across retried attempts. If this field is set, the service will ensure its uniqueness. The request to create a job will fail if the service has knowledge of a previously submitted job with the same client's ID and job name. The caller may use this field to ensure idempotence of job creation across retried attempts to create a job. By default, the field is empty and, in that case, the service ignores it.
  final pulumi.Input<String>? clientRequestId;
  /// The timestamp when the job was initially created. Immutable and set by the Cloud Dataflow service.
  final pulumi.Input<String>? createTime;
  /// If this is specified, the job's initial state is populated from the given snapshot.
  final pulumi.Input<String>? createdFromSnapshotId;
  /// The current state of the job. Jobs are created in the `JOB_STATE_STOPPED` state unless otherwise specified. A job in the `JOB_STATE_RUNNING` state may asynchronously enter a terminal state. After a job has reached a terminal state, no further state updates may be made. This field may be mutated by the Cloud Dataflow service; callers cannot mutate it.
  final pulumi.Input<JobCurrentState>? currentState;
  /// The timestamp associated with the current state.
  final pulumi.Input<String>? currentStateTime;
  /// The environment for the job.
  final pulumi.Input<Environment>? environment;
  /// Deprecated.
  final pulumi.Input<JobExecutionInfo>? executionInfo;
  /// The unique ID of this job. This field is set by the Cloud Dataflow service when the Job is created, and is immutable for the life of the job.
  final pulumi.Input<String>? id;
  /// This field is populated by the Dataflow service to support filtering jobs by the metadata values provided here. Populated for ListJobs and all GetJob views SUMMARY and higher.
  final pulumi.Input<JobMetadata>? jobMetadata;
  /// User-defined labels for this job. The labels map can contain no more than 64 entries. Entries of the labels map are UTF8 strings that comply with the following restrictions: * Keys must conform to regexp: \p{Ll}\p{Lo}{0,62} * Values must conform to regexp: [\p{Ll}\p{Lo}\p{N}_-]{0,63} * Both keys and values are additionally constrained to be <= 128 bytes in size.
  final pulumi.Input<Map<String, String>>? labels;
  /// The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains this job.
  final pulumi.Input<String>? location;
  /// The user-specified Cloud Dataflow job name. Only one Job with a given name can exist in a project within one region at any given time. Jobs in different regions can have the same name. If a caller attempts to create a Job with the same name as an already-existing Job, the attempt returns the existing Job. The name must match the regular expression `[a-z]([-a-z0-9]{0,1022}[a-z0-9])?`
  final pulumi.Input<String>? name;
  /// Preliminary field: The format of this data may change at any time. A description of the user pipeline and stages through which it is executed. Created by Cloud Dataflow service. Only retrieved with JOB_VIEW_DESCRIPTION or JOB_VIEW_ALL.
  final pulumi.Input<PipelineDescription>? pipelineDescription;
  /// The ID of the Cloud Platform project that the job belongs to.
  final pulumi.Input<String>? project;
  /// If this job is an update of an existing job, this field is the job ID of the job it replaced. When sending a `CreateJobRequest`, you can update a job by specifying it here. The job named here is stopped, and its intermediate state is transferred to this job.
  final pulumi.Input<String>? replaceJobId;
  /// If another job is an update of this job (and thus, this job is in `JOB_STATE_UPDATED`), this field contains the ID of that job.
  final pulumi.Input<String>? replacedByJobId;
  /// The job's requested state. Applies to `UpdateJob` requests. Set `requested_state` with `UpdateJob` requests to switch between the states `JOB_STATE_STOPPED` and `JOB_STATE_RUNNING`. You can also use `UpdateJob` requests to change a job's state from `JOB_STATE_RUNNING` to `JOB_STATE_CANCELLED`, `JOB_STATE_DONE`, or `JOB_STATE_DRAINED`. These states irrevocably terminate the job if it hasn't already reached a terminal state. This field has no effect on `CreateJob` requests.
  final pulumi.Input<JobRequestedState>? requestedState;
  /// This field may ONLY be modified at runtime using the projects.jobs.update method to adjust job behavior. This field has no effect when specified at job creation.
  final pulumi.Input<RuntimeUpdatableParams>? runtimeUpdatableParams;
  /// Reserved for future use. This field is set only in responses from the server; it is ignored if it is set in any requests.
  final pulumi.Input<bool>? satisfiesPzs;
  /// This field may be mutated by the Cloud Dataflow service; callers cannot mutate it.
  final pulumi.Input<List<ExecutionStageState>>? stageStates;
  /// The timestamp when the job was started (transitioned to JOB_STATE_PENDING). Flexible resource scheduling jobs are started with some delay after job creation, so start_time is unset before start and is updated when the job is started by the Cloud Dataflow service. For other jobs, start_time always equals to create_time and is immutable and set by the Cloud Dataflow service.
  final pulumi.Input<String>? startTime;
  /// Exactly one of step or steps_location should be specified. The top-level steps that constitute the entire job. Only retrieved with JOB_VIEW_ALL.
  final pulumi.Input<List<Step>>? steps;
  /// The Cloud Storage location where the steps are stored.
  final pulumi.Input<String>? stepsLocation;
  /// A set of files the system should be aware of that are used for temporary storage. These temporary files will be removed on job completion. No duplicates are allowed. No file patterns are supported. The supported files are: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}
  final pulumi.Input<List<String>>? tempFiles;
  /// The map of transform name prefixes of the job to be replaced to the corresponding name prefixes of the new job.
  final pulumi.Input<Map<String, String>>? transformNameMapping;
  /// The type of Cloud Dataflow job.
  final pulumi.Input<JobType>? type;
  /// The level of information requested in response.
  final pulumi.Input<String>? view;

  /// Creates a new [JobArgs].
  /// [clientRequestId] The client's unique identifier of the job, re-used across retried attempts. If this field is set, the service will ensure its uniqueness. The request to create a job will fail if the service has knowledge of a previously submitted job with the same client's ID and job name. The caller may use this field to ensure idempotence of job creation across retried attempts to create a job. By default, the field is empty and, in that case, the service ignores it.
  /// [createTime] The timestamp when the job was initially created. Immutable and set by the Cloud Dataflow service.
  /// [createdFromSnapshotId] If this is specified, the job's initial state is populated from the given snapshot.
  /// [currentState] The current state of the job. Jobs are created in the `JOB_STATE_STOPPED` state unless otherwise specified. A job in the `JOB_STATE_RUNNING` state may asynchronously enter a terminal state. After a job has reached a terminal state, no further state updates may be made. This field may be mutated by the Cloud Dataflow service; callers cannot mutate it.
  /// [currentStateTime] The timestamp associated with the current state.
  /// [environment] The environment for the job.
  /// [executionInfo] Deprecated.
  /// [id] The unique ID of this job. This field is set by the Cloud Dataflow service when the Job is created, and is immutable for the life of the job.
  /// [jobMetadata] This field is populated by the Dataflow service to support filtering jobs by the metadata values provided here. Populated for ListJobs and all GetJob views SUMMARY and higher.
  /// [labels] User-defined labels for this job. The labels map can contain no more than 64 entries. Entries of the labels map are UTF8 strings that comply with the following restrictions: * Keys must conform to regexp: \p{Ll}\p{Lo}{0,62} * Values must conform to regexp: [\p{Ll}\p{Lo}\p{N}_-]{0,63} * Both keys and values are additionally constrained to be <= 128 bytes in size.
  /// [location] The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) that contains this job.
  /// [name] The user-specified Cloud Dataflow job name. Only one Job with a given name can exist in a project within one region at any given time. Jobs in different regions can have the same name. If a caller attempts to create a Job with the same name as an already-existing Job, the attempt returns the existing Job. The name must match the regular expression `[a-z]([-a-z0-9]{0,1022}[a-z0-9])?`
  /// [pipelineDescription] Preliminary field: The format of this data may change at any time. A description of the user pipeline and stages through which it is executed. Created by Cloud Dataflow service. Only retrieved with JOB_VIEW_DESCRIPTION or JOB_VIEW_ALL.
  /// [project] The ID of the Cloud Platform project that the job belongs to.
  /// [replaceJobId] If this job is an update of an existing job, this field is the job ID of the job it replaced. When sending a `CreateJobRequest`, you can update a job by specifying it here. The job named here is stopped, and its intermediate state is transferred to this job.
  /// [replacedByJobId] If another job is an update of this job (and thus, this job is in `JOB_STATE_UPDATED`), this field contains the ID of that job.
  /// [requestedState] The job's requested state. Applies to `UpdateJob` requests. Set `requested_state` with `UpdateJob` requests to switch between the states `JOB_STATE_STOPPED` and `JOB_STATE_RUNNING`. You can also use `UpdateJob` requests to change a job's state from `JOB_STATE_RUNNING` to `JOB_STATE_CANCELLED`, `JOB_STATE_DONE`, or `JOB_STATE_DRAINED`. These states irrevocably terminate the job if it hasn't already reached a terminal state. This field has no effect on `CreateJob` requests.
  /// [runtimeUpdatableParams] This field may ONLY be modified at runtime using the projects.jobs.update method to adjust job behavior. This field has no effect when specified at job creation.
  /// [satisfiesPzs] Reserved for future use. This field is set only in responses from the server; it is ignored if it is set in any requests.
  /// [stageStates] This field may be mutated by the Cloud Dataflow service; callers cannot mutate it.
  /// [startTime] The timestamp when the job was started (transitioned to JOB_STATE_PENDING). Flexible resource scheduling jobs are started with some delay after job creation, so start_time is unset before start and is updated when the job is started by the Cloud Dataflow service. For other jobs, start_time always equals to create_time and is immutable and set by the Cloud Dataflow service.
  /// [steps] Exactly one of step or steps_location should be specified. The top-level steps that constitute the entire job. Only retrieved with JOB_VIEW_ALL.
  /// [stepsLocation] The Cloud Storage location where the steps are stored.
  /// [tempFiles] A set of files the system should be aware of that are used for temporary storage. These temporary files will be removed on job completion. No duplicates are allowed. No file patterns are supported. The supported files are: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}
  /// [transformNameMapping] The map of transform name prefixes of the job to be replaced to the corresponding name prefixes of the new job.
  /// [type] The type of Cloud Dataflow job.
  /// [view] The level of information requested in response.
  JobArgs({
    pulumi.Output<String>? clientRequestId,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? createdFromSnapshotId,
    pulumi.Output<JobCurrentState>? currentState,
    pulumi.Output<String>? currentStateTime,
    pulumi.Output<Environment>? environment,
    pulumi.Output<JobExecutionInfo>? executionInfo,
    pulumi.Output<String>? id,
    pulumi.Output<JobMetadata>? jobMetadata,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<PipelineDescription>? pipelineDescription,
    pulumi.Output<String>? project,
    pulumi.Output<String>? replaceJobId,
    pulumi.Output<String>? replacedByJobId,
    pulumi.Output<JobRequestedState>? requestedState,
    pulumi.Output<RuntimeUpdatableParams>? runtimeUpdatableParams,
    pulumi.Output<bool>? satisfiesPzs,
    pulumi.Output<List<ExecutionStageState>>? stageStates,
    pulumi.Output<String>? startTime,
    pulumi.Output<List<Step>>? steps,
    pulumi.Output<String>? stepsLocation,
    pulumi.Output<List<String>>? tempFiles,
    pulumi.Output<Map<String, String>>? transformNameMapping,
    pulumi.Output<JobType>? type,
    pulumi.Output<String>? view,
  }) :
      clientRequestId = pulumi.Input.asOptionalInput<String>(clientRequestId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      createdFromSnapshotId = pulumi.Input.asOptionalInput<String>(createdFromSnapshotId),
      currentState = pulumi.Input.asOptionalInput<JobCurrentState>(currentState),
      currentStateTime = pulumi.Input.asOptionalInput<String>(currentStateTime),
      environment = pulumi.Input.asOptionalInput<Environment>(environment),
      executionInfo = pulumi.Input.asOptionalInput<JobExecutionInfo>(executionInfo),
      id = pulumi.Input.asOptionalInput<String>(id),
      jobMetadata = pulumi.Input.asOptionalInput<JobMetadata>(jobMetadata),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      pipelineDescription = pulumi.Input.asOptionalInput<PipelineDescription>(pipelineDescription),
      project = pulumi.Input.asOptionalInput<String>(project),
      replaceJobId = pulumi.Input.asOptionalInput<String>(replaceJobId),
      replacedByJobId = pulumi.Input.asOptionalInput<String>(replacedByJobId),
      requestedState = pulumi.Input.asOptionalInput<JobRequestedState>(requestedState),
      runtimeUpdatableParams = pulumi.Input.asOptionalInput<RuntimeUpdatableParams>(runtimeUpdatableParams),
      satisfiesPzs = pulumi.Input.asOptionalInput<bool>(satisfiesPzs),
      stageStates = pulumi.Input.asOptionalInput<List<ExecutionStageState>>(stageStates),
      startTime = pulumi.Input.asOptionalInput<String>(startTime),
      steps = pulumi.Input.asOptionalInput<List<Step>>(steps),
      stepsLocation = pulumi.Input.asOptionalInput<String>(stepsLocation),
      tempFiles = pulumi.Input.asOptionalInput<List<String>>(tempFiles),
      transformNameMapping = pulumi.Input.asOptionalInput<Map<String, String>>(transformNameMapping),
      type = pulumi.Input.asOptionalInput<JobType>(type),
      view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientRequestId': ?clientRequestId,
      'createTime': ?createTime,
      'createdFromSnapshotId': ?createdFromSnapshotId,
      'currentState': ?pulumi.Input.mapOptionalInputValue<JobCurrentState, String>(currentState, (value) => value.value),
      'currentStateTime': ?currentStateTime,
      'environment': ?pulumi.Input.mapOptionalInputValue<Environment, Map<String, dynamic>>(environment, (value) => value.toMap()),
      'executionInfo': ?pulumi.Input.mapOptionalInputValue<JobExecutionInfo, Map<String, dynamic>>(executionInfo, (value) => value.toMap()),
      'id': ?id,
      'jobMetadata': ?pulumi.Input.mapOptionalInputValue<JobMetadata, Map<String, dynamic>>(jobMetadata, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'pipelineDescription': ?pulumi.Input.mapOptionalInputValue<PipelineDescription, Map<String, dynamic>>(pipelineDescription, (value) => value.toMap()),
      'project': ?project,
      'replaceJobId': ?replaceJobId,
      'replacedByJobId': ?replacedByJobId,
      'requestedState': ?pulumi.Input.mapOptionalInputValue<JobRequestedState, String>(requestedState, (value) => value.value),
      'runtimeUpdatableParams': ?pulumi.Input.mapOptionalInputValue<RuntimeUpdatableParams, Map<String, dynamic>>(runtimeUpdatableParams, (value) => value.toMap()),
      'satisfiesPzs': ?satisfiesPzs,
      'stageStates': ?pulumi.Input.mapOptionalInputValue<List<ExecutionStageState>, List<Map<String, dynamic>>>(stageStates, (value) => pulumi.Input.encodeList<ExecutionStageState, Map<String, dynamic>>(value, (value) => value.toMap())),
      'startTime': ?startTime,
      'steps': ?pulumi.Input.mapOptionalInputValue<List<Step>, List<Map<String, dynamic>>>(steps, (value) => pulumi.Input.encodeList<Step, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stepsLocation': ?stepsLocation,
      'tempFiles': ?tempFiles,
      'transformNameMapping': ?transformNameMapping,
      'type': ?pulumi.Input.mapOptionalInputValue<JobType, String>(type, (value) => value.value),
      'view': ?view,
    };
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      clientRequestId: map['clientRequestId'] == null ? null : pulumi.Output.create<String>(map['clientRequestId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      createdFromSnapshotId: map['createdFromSnapshotId'] == null ? null : pulumi.Output.create<String>(map['createdFromSnapshotId'] as String),
      currentState: map['currentState'] == null ? null : pulumi.Output.create<JobCurrentState>(JobCurrentState.fromValue(map['currentState'] as String)),
      currentStateTime: map['currentStateTime'] == null ? null : pulumi.Output.create<String>(map['currentStateTime'] as String),
      environment: map['environment'] == null ? null : pulumi.Output.create<Environment>(Environment.fromMap((map['environment'] as Map).cast<String, dynamic>())),
      executionInfo: map['executionInfo'] == null ? null : pulumi.Output.create<JobExecutionInfo>(JobExecutionInfo.fromMap((map['executionInfo'] as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      jobMetadata: map['jobMetadata'] == null ? null : pulumi.Output.create<JobMetadata>(JobMetadata.fromMap((map['jobMetadata'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      pipelineDescription: map['pipelineDescription'] == null ? null : pulumi.Output.create<PipelineDescription>(PipelineDescription.fromMap((map['pipelineDescription'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      replaceJobId: map['replaceJobId'] == null ? null : pulumi.Output.create<String>(map['replaceJobId'] as String),
      replacedByJobId: map['replacedByJobId'] == null ? null : pulumi.Output.create<String>(map['replacedByJobId'] as String),
      requestedState: map['requestedState'] == null ? null : pulumi.Output.create<JobRequestedState>(JobRequestedState.fromValue(map['requestedState'] as String)),
      runtimeUpdatableParams: map['runtimeUpdatableParams'] == null ? null : pulumi.Output.create<RuntimeUpdatableParams>(RuntimeUpdatableParams.fromMap((map['runtimeUpdatableParams'] as Map).cast<String, dynamic>())),
      satisfiesPzs: map['satisfiesPzs'] == null ? null : pulumi.Output.create<bool>(map['satisfiesPzs'] as bool),
      stageStates: map['stageStates'] == null ? null : pulumi.Output.create<List<ExecutionStageState>>(pulumi.Input.decodeList<ExecutionStageState>(map['stageStates'], (value) => ExecutionStageState.fromMap((value as Map).cast<String, dynamic>()))),
      startTime: map['startTime'] == null ? null : pulumi.Output.create<String>(map['startTime'] as String),
      steps: map['steps'] == null ? null : pulumi.Output.create<List<Step>>(pulumi.Input.decodeList<Step>(map['steps'], (value) => Step.fromMap((value as Map).cast<String, dynamic>()))),
      stepsLocation: map['stepsLocation'] == null ? null : pulumi.Output.create<String>(map['stepsLocation'] as String),
      tempFiles: map['tempFiles'] == null ? null : pulumi.Output.create<List<String>>((map['tempFiles'] as List).cast<String>()),
      transformNameMapping: map['transformNameMapping'] == null ? null : pulumi.Output.create<Map<String, String>>((map['transformNameMapping'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<JobType>(JobType.fromValue(map['type'] as String)),
      view: map['view'] == null ? null : pulumi.Output.create<String>(map['view'] as String),
    );
  }
}

