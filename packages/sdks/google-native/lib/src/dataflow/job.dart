import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_response.dart';
import 'job_args.dart';
import 'job_execution_info_response.dart';
import 'job_metadata_response.dart';
import 'pipeline_description_response.dart';
import 'runtime_updatable_params_response.dart';

/// Creates a Cloud Dataflow job. To create a job, we recommend using `projects.locations.jobs.create` with a [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints). Using `projects.jobs.create` is not recommended, as your job will always start in `us-central1`. Do not enter confidential information when you supply string values using the API.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Job extends pulumi.CustomResource {
  /// The client's unique identifier of the job, re-used across retried attempts. If this field is set, the service will ensure its uniqueness. The request to create a job will fail if the service has knowledge of a previously submitted job with the same client's ID and job name. The caller may use this field to ensure idempotence of job creation across retried attempts to create a job. By default, the field is empty and, in that case, the service ignores it.
  late final pulumi.Output<String> clientRequestId;

  /// The timestamp when the job was initially created. Immutable and set by the Cloud Dataflow service.
  late final pulumi.Output<String> createTime;

  /// If this is specified, the job's initial state is populated from the given snapshot.
  late final pulumi.Output<String> createdFromSnapshotId;

  /// The current state of the job. Jobs are created in the `JOB_STATE_STOPPED` state unless otherwise specified. A job in the `JOB_STATE_RUNNING` state may asynchronously enter a terminal state. After a job has reached a terminal state, no further state updates may be made. This field may be mutated by the Cloud Dataflow service; callers cannot mutate it.
  late final pulumi.Output<String> currentState;

  /// The timestamp associated with the current state.
  late final pulumi.Output<String> currentStateTime;

  /// The environment for the job.
  late final pulumi.Output<EnvironmentResponse> environment;

  /// Deprecated.
  late final pulumi.Output<JobExecutionInfoResponse> executionInfo;

  /// This field is populated by the Dataflow service to support filtering jobs by the metadata values provided here. Populated for ListJobs and all GetJob views SUMMARY and higher.
  late final pulumi.Output<JobMetadataResponse> jobMetadata;

  /// User-defined labels for this job. The labels map can contain no more than 64 entries. Entries of the labels map are UTF8 strings that comply with the following restrictions: * Keys must conform to regexp: \p{Ll}\p{Lo}{0,62} * Values must conform to regexp: [\p{Ll}\p{Lo}\p{N}_-]{0,63} * Both keys and values are additionally constrained to be &lt;= 128 bytes in size.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// The user-specified Cloud Dataflow job name. Only one Job with a given name can exist in a project within one region at any given time. Jobs in different regions can have the same name. If a caller attempts to create a Job with the same name as an already-existing Job, the attempt returns the existing Job. The name must match the regular expression `[a-z]([-a-z0-9]{0,1022}[a-z0-9])?`
  late final pulumi.Output<String> name;

  /// Preliminary field: The format of this data may change at any time. A description of the user pipeline and stages through which it is executed. Created by Cloud Dataflow service. Only retrieved with JOB_VIEW_DESCRIPTION or JOB_VIEW_ALL.
  late final pulumi.Output<PipelineDescriptionResponse> pipelineDescription;
  late final pulumi.Output<String> project;

  /// Deprecated. This field is now in the Job message.
  late final pulumi.Output<String> replaceJobId;

  /// If another job is an update of this job (and thus, this job is in `JOB_STATE_UPDATED`), this field contains the ID of that job.
  late final pulumi.Output<String> replacedByJobId;

  /// The job's requested state. Applies to `UpdateJob` requests. Set `requested_state` with `UpdateJob` requests to switch between the states `JOB_STATE_STOPPED` and `JOB_STATE_RUNNING`. You can also use `UpdateJob` requests to change a job's state from `JOB_STATE_RUNNING` to `JOB_STATE_CANCELLED`, `JOB_STATE_DONE`, or `JOB_STATE_DRAINED`. These states irrevocably terminate the job if it hasn't already reached a terminal state. This field has no effect on `CreateJob` requests.
  late final pulumi.Output<String> requestedState;

  /// This field may ONLY be modified at runtime using the projects.jobs.update method to adjust job behavior. This field has no effect when specified at job creation.
  late final pulumi.Output<RuntimeUpdatableParamsResponse>
  runtimeUpdatableParams;

  /// Reserved for future use. This field is set only in responses from the server; it is ignored if it is set in any requests.
  late final pulumi.Output<bool> satisfiesPzi;

  /// Reserved for future use. This field is set only in responses from the server; it is ignored if it is set in any requests.
  late final pulumi.Output<bool> satisfiesPzs;

  /// This field may be mutated by the Cloud Dataflow service; callers cannot mutate it.
  late final pulumi.Output<List<Map<String, dynamic>>> stageStates;

  /// The timestamp when the job was started (transitioned to JOB_STATE_PENDING). Flexible resource scheduling jobs are started with some delay after job creation, so start_time is unset before start and is updated when the job is started by the Cloud Dataflow service. For other jobs, start_time always equals to create_time and is immutable and set by the Cloud Dataflow service.
  late final pulumi.Output<String> startTime;

  /// Exactly one of step or steps_location should be specified. The top-level steps that constitute the entire job. Only retrieved with JOB_VIEW_ALL.
  late final pulumi.Output<List<Map<String, dynamic>>> steps;

  /// The Cloud Storage location where the steps are stored.
  late final pulumi.Output<String> stepsLocation;

  /// A set of files the system should be aware of that are used for temporary storage. These temporary files will be removed on job completion. No duplicates are allowed. No file patterns are supported. The supported files are: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}
  late final pulumi.Output<List<String>> tempFiles;

  /// The map of transform name prefixes of the job to be replaced to the corresponding name prefixes of the new job.
  late final pulumi.Output<Map<String, String>> transformNameMapping;

  /// The type of Cloud Dataflow job.
  late final pulumi.Output<String> type;

  /// The level of information requested in response.
  late final pulumi.Output<String?> view;

  /// Creates a new [Job].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Job]. {@macro pulumi_dataflow_v1b3_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Job(String name, {JobArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:dataflow/v1b3:Job',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    clientRequestId = registerOutput<String>('clientRequestId');
    createTime = registerOutput<String>('createTime');
    createdFromSnapshotId = registerOutput<String>('createdFromSnapshotId');
    currentState = registerOutput<String>('currentState');
    currentStateTime = registerOutput<String>('currentStateTime');
    environment = registerOutput<EnvironmentResponse>(
      'environment',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EnvironmentResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    executionInfo = registerOutput<JobExecutionInfoResponse>(
      'executionInfo',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return JobExecutionInfoResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    jobMetadata = registerOutput<JobMetadataResponse>(
      'jobMetadata',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return JobMetadataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    pipelineDescription = registerOutput<PipelineDescriptionResponse>(
      'pipelineDescription',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return PipelineDescriptionResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    project = registerOutput<String>('project');
    replaceJobId = registerOutput<String>('replaceJobId');
    replacedByJobId = registerOutput<String>('replacedByJobId');
    requestedState = registerOutput<String>('requestedState');
    runtimeUpdatableParams = registerOutput<RuntimeUpdatableParamsResponse>(
      'runtimeUpdatableParams',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RuntimeUpdatableParamsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    satisfiesPzi = registerOutput<bool>('satisfiesPzi');
    satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    stageStates = registerOutput<List<Map<String, dynamic>>>('stageStates');
    startTime = registerOutput<String>('startTime');
    steps = registerOutput<List<Map<String, dynamic>>>('steps');
    stepsLocation = registerOutput<String>('stepsLocation');
    tempFiles = registerOutput<List<String>>('tempFiles');
    transformNameMapping = registerOutput<Map<String, String>>(
      'transformNameMapping',
    );
    type = registerOutput<String>('type');
    view = registerOutput<String?>('view');
  }
}
