import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_run_v2_binary_authorization_response.dart';
import 'google_cloud_run_v2_condition_response.dart';
import 'google_cloud_run_v2_execution_reference_response.dart';
import 'google_cloud_run_v2_execution_template_response.dart';
import 'job_args.dart';

/// Creates a Job.
class Job extends pulumi.CustomResource {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected on new resources. All system annotations in v1 now have a corresponding field in v2 Job. This field follows Kubernetes annotations' namespacing, limits, and rules.
  late final pulumi.Output<Map<String, String>> annotations;

  /// Settings for the Binary Authorization feature.
  late final pulumi.Output<GoogleCloudRunV2BinaryAuthorizationResponse>
  binaryAuthorization;

  /// Arbitrary identifier for the API client.
  late final pulumi.Output<String> client;

  /// Arbitrary version identifier for the API client.
  late final pulumi.Output<String> clientVersion;

  /// The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the Job does not reach its desired state. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.
  late final pulumi.Output<List<Map<String, dynamic>>> conditions;

  /// The creation time.
  late final pulumi.Output<String> createTime;

  /// Email address of the authenticated creator.
  late final pulumi.Output<String> creator;

  /// The deletion time.
  late final pulumi.Output<String> deleteTime;

  /// A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
  late final pulumi.Output<String> etag;

  /// Number of executions created for this job.
  late final pulumi.Output<int> executionCount;

  /// For a deleted resource, the time after which it will be permamently deleted.
  late final pulumi.Output<String> expireTime;

  /// A number that monotonically increases every time the user modifies the desired state.
  late final pulumi.Output<String> generation;

  /// Required. The unique identifier for the Job. The name of the job becomes {parent}/jobs/{job_id}.
  late final pulumi.Output<String> jobId;

  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 Job.
  late final pulumi.Output<Map<String, String>> labels;

  /// Email address of the last authenticated modifier.
  late final pulumi.Output<String> lastModifier;

  /// Name of the last created execution.
  late final pulumi.Output<GoogleCloudRunV2ExecutionReferenceResponse>
  latestCreatedExecution;

  /// The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/terms/launch-stages). Cloud Run supports `ALPHA`, `BETA`, and `GA`. If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features. For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  late final pulumi.Output<String> launchStage;
  late final pulumi.Output<String> location;

  /// The fully qualified name of this Job. Format: projects/{project}/locations/{location}/jobs/{job}
  late final pulumi.Output<String> name;

  /// The generation of this Job. See comments in `reconciling` for additional information on reconciliation process in Cloud Run.
  late final pulumi.Output<String> observedGeneration;
  late final pulumi.Output<String> project;

  /// Returns true if the Job is currently being acted upon by the system to bring it into the desired state. When a new Job is created, or an existing one is updated, Cloud Run will asynchronously perform all necessary steps to bring the Job to the desired state. This process is called reconciliation. While reconciliation is in process, `observed_generation` and `latest_succeeded_execution`, will have transient values that might mismatch the intended state: Once reconciliation is over (and this field is false), there are two possible outcomes: reconciliation succeeded and the state matches the Job, or there was an error, and reconciliation failed. This state can be found in `terminal_condition.state`. If reconciliation succeeded, the following fields will match: `observed_generation` and `generation`, `latest_succeeded_execution` and `latest_created_execution`. If reconciliation failed, `observed_generation` and `latest_succeeded_execution` will have the state of the last succeeded execution or empty for newly created Job. Additional information on the failure can be found in `terminal_condition` and `conditions`.
  late final pulumi.Output<bool> reconciling;

  /// Reserved for future use.
  late final pulumi.Output<bool> satisfiesPzs;

  /// The template used to create executions for this Job.
  late final pulumi.Output<GoogleCloudRunV2ExecutionTemplateResponse> template;

  /// The Condition of this Job, containing its readiness status, and detailed error information in case it did not reach the desired state.
  late final pulumi.Output<GoogleCloudRunV2ConditionResponse> terminalCondition;

  /// Server assigned unique identifier for the Execution. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  late final pulumi.Output<String> uid;

  /// The last-modified time.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Job].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Job]. {@macro pulumi_run_v2_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Job(String name, {JobArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:run/v2:Job',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    annotations = registerOutput<Map<String, String>>('annotations');
    binaryAuthorization =
        registerOutput<GoogleCloudRunV2BinaryAuthorizationResponse>(
          'binaryAuthorization',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudRunV2BinaryAuthorizationResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    client = registerOutput<String>('client');
    clientVersion = registerOutput<String>('clientVersion');
    conditions = registerOutput<List<Map<String, dynamic>>>('conditions');
    createTime = registerOutput<String>('createTime');
    creator = registerOutput<String>('creator');
    deleteTime = registerOutput<String>('deleteTime');
    etag = registerOutput<String>('etag');
    executionCount = registerOutput<int>('executionCount');
    expireTime = registerOutput<String>('expireTime');
    generation = registerOutput<String>('generation');
    jobId = registerOutput<String>('jobId');
    labels = registerOutput<Map<String, String>>('labels');
    lastModifier = registerOutput<String>('lastModifier');
    latestCreatedExecution =
        registerOutput<GoogleCloudRunV2ExecutionReferenceResponse>(
          'latestCreatedExecution',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return GoogleCloudRunV2ExecutionReferenceResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    launchStage = registerOutput<String>('launchStage');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    observedGeneration = registerOutput<String>('observedGeneration');
    project = registerOutput<String>('project');
    reconciling = registerOutput<bool>('reconciling');
    satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    template = registerOutput<GoogleCloudRunV2ExecutionTemplateResponse>(
      'template',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GoogleCloudRunV2ExecutionTemplateResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    terminalCondition = registerOutput<GoogleCloudRunV2ConditionResponse>(
      'terminalCondition',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return GoogleCloudRunV2ConditionResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
