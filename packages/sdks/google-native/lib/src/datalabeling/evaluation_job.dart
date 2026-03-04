import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_job_args.dart';
import 'google_cloud_datalabeling_v1beta1_evaluation_job_config_response.dart';

/// Creates an evaluation job.
/// Auto-naming is currently not supported for this resource.
class EvaluationJob extends pulumi.CustomResource {
  /// Name of the AnnotationSpecSet describing all the labels that your machine learning model outputs. You must create this resource before you create an evaluation job and provide its name in the following format: "projects/{project_id}/annotationSpecSets/{annotation_spec_set_id}"
  late final pulumi.Output<String> annotationSpecSet;

  /// Every time the evaluation job runs and an error occurs, the failed attempt is appended to this array.
  late final pulumi.Output<List<Map<String, dynamic>>> attempts;

  /// Timestamp of when this evaluation job was created.
  late final pulumi.Output<String> createTime;

  /// Description of the job. The description can be up to 25,000 characters long.
  late final pulumi.Output<String> description;

  /// Configuration details for the evaluation job.
  late final pulumi.Output<
    GoogleCloudDatalabelingV1beta1EvaluationJobConfigResponse
  >
  evaluationJobConfig;

  /// Whether you want Data Labeling Service to provide ground truth labels for prediction input. If you want the service to assign human labelers to annotate your data, set this to `true`. If you want to provide your own ground truth labels in the evaluation job's BigQuery table, set this to `false`.
  late final pulumi.Output<bool> labelMissingGroundTruth;

  /// The [AI Platform Prediction model version](/ml-engine/docs/prediction-overview) to be evaluated. Prediction input and output is sampled from this model version. When creating an evaluation job, specify the model version in the following format: "projects/{project_id}/models/{model_name}/versions/{version_name}" There can only be one evaluation job per model version.
  late final pulumi.Output<String> modelVersion;

  /// After you create a job, Data Labeling Service assigns a name to the job with the following format: "projects/{project_id}/evaluationJobs/ {evaluation_job_id}"
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Describes the interval at which the job runs. This interval must be at least 1 day, and it is rounded to the nearest day. For example, if you specify a 50-hour interval, the job runs every 2 days. You can provide the schedule in [crontab format](/scheduler/docs/configuring/cron-job-schedules) or in an [English-like format](/appengine/docs/standard/python/config/cronref#schedule_format). Regardless of what you specify, the job will run at 10:00 AM UTC. Only the interval from this schedule is used, not the specific time of day.
  late final pulumi.Output<String> schedule;

  /// Describes the current state of the job.
  late final pulumi.Output<String> state;

  /// Creates a new [EvaluationJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EvaluationJob]. {@macro pulumi_datalabeling_v1beta1_evaluation_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EvaluationJob(
    String name, {
    EvaluationJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:datalabeling/v1beta1:EvaluationJob',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    annotationSpecSet = registerOutput<String>('annotationSpecSet');
    attempts = registerOutput<List<Map<String, dynamic>>>('attempts');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    evaluationJobConfig =
        registerOutput<
          GoogleCloudDatalabelingV1beta1EvaluationJobConfigResponse
        >('evaluationJobConfig');
    labelMissingGroundTruth = registerOutput<bool>('labelMissingGroundTruth');
    modelVersion = registerOutput<String>('modelVersion');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    schedule = registerOutput<String>('schedule');
    state = registerOutput<String>('state');
  }
}
