// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datalabeling_v1beta1_evaluation_job_config.dart';

/// {@template pulumi_datalabeling_v1beta1_evaluation_job_args_doc}
/// The set of arguments for EvaluationJob.
/// {@endtemplate}
/// {@macro pulumi_datalabeling_v1beta1_evaluation_job_args_doc}
class EvaluationJobArgs {
  /// Name of the AnnotationSpecSet describing all the labels that your machine learning model outputs. You must create this resource before you create an evaluation job and provide its name in the following format: "projects/{project_id}/annotationSpecSets/{annotation_spec_set_id}"
  final pulumi.Input<String> annotationSpecSet;
  /// Description of the job. The description can be up to 25,000 characters long.
  final pulumi.Input<String> description;
  /// Configuration details for the evaluation job.
  final pulumi.Input<GoogleCloudDatalabelingV1beta1EvaluationJobConfig> evaluationJobConfig;
  /// Whether you want Data Labeling Service to provide ground truth labels for prediction input. If you want the service to assign human labelers to annotate your data, set this to `true`. If you want to provide your own ground truth labels in the evaluation job's BigQuery table, set this to `false`.
  final pulumi.Input<bool> labelMissingGroundTruth;
  /// The [AI Platform Prediction model version](/ml-engine/docs/prediction-overview) to be evaluated. Prediction input and output is sampled from this model version. When creating an evaluation job, specify the model version in the following format: "projects/{project_id}/models/{model_name}/versions/{version_name}" There can only be one evaluation job per model version.
  final pulumi.Input<String> modelVersion;
  final pulumi.Input<String>? project;
  /// Describes the interval at which the job runs. This interval must be at least 1 day, and it is rounded to the nearest day. For example, if you specify a 50-hour interval, the job runs every 2 days. You can provide the schedule in [crontab format](/scheduler/docs/configuring/cron-job-schedules) or in an [English-like format](/appengine/docs/standard/python/config/cronref#schedule_format). Regardless of what you specify, the job will run at 10:00 AM UTC. Only the interval from this schedule is used, not the specific time of day.
  final pulumi.Input<String> schedule;

  /// Creates a new [EvaluationJobArgs].
  /// [annotationSpecSet] Name of the AnnotationSpecSet describing all the labels that your machine learning model outputs. You must create this resource before you create an evaluation job and provide its name in the following format: "projects/{project_id}/annotationSpecSets/{annotation_spec_set_id}"
  /// [description] Description of the job. The description can be up to 25,000 characters long.
  /// [evaluationJobConfig] Configuration details for the evaluation job.
  /// [labelMissingGroundTruth] Whether you want Data Labeling Service to provide ground truth labels for prediction input. If you want the service to assign human labelers to annotate your data, set this to `true`. If you want to provide your own ground truth labels in the evaluation job's BigQuery table, set this to `false`.
  /// [modelVersion] The [AI Platform Prediction model version](/ml-engine/docs/prediction-overview) to be evaluated. Prediction input and output is sampled from this model version. When creating an evaluation job, specify the model version in the following format: "projects/{project_id}/models/{model_name}/versions/{version_name}" There can only be one evaluation job per model version.
  /// [project] Optional.
  /// [schedule] Describes the interval at which the job runs. This interval must be at least 1 day, and it is rounded to the nearest day. For example, if you specify a 50-hour interval, the job runs every 2 days. You can provide the schedule in [crontab format](/scheduler/docs/configuring/cron-job-schedules) or in an [English-like format](/appengine/docs/standard/python/config/cronref#schedule_format). Regardless of what you specify, the job will run at 10:00 AM UTC. Only the interval from this schedule is used, not the specific time of day.
  EvaluationJobArgs({
    required pulumi.Output<String> annotationSpecSet,
    required pulumi.Output<String> description,
    required pulumi.Output<GoogleCloudDatalabelingV1beta1EvaluationJobConfig> evaluationJobConfig,
    required pulumi.Output<bool> labelMissingGroundTruth,
    required pulumi.Output<String> modelVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> schedule,
  }) :
      annotationSpecSet = pulumi.Input.asInput<String>(annotationSpecSet),
      description = pulumi.Input.asInput<String>(description),
      evaluationJobConfig = pulumi.Input.asInput<GoogleCloudDatalabelingV1beta1EvaluationJobConfig>(evaluationJobConfig),
      labelMissingGroundTruth = pulumi.Input.asInput<bool>(labelMissingGroundTruth),
      modelVersion = pulumi.Input.asInput<String>(modelVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      schedule = pulumi.Input.asInput<String>(schedule);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationSpecSet': annotationSpecSet,
      'description': description,
      'evaluationJobConfig': pulumi.Input.mapInputValue<GoogleCloudDatalabelingV1beta1EvaluationJobConfig, Map<String, dynamic>>(evaluationJobConfig, (value) => value.toMap()),
      'labelMissingGroundTruth': labelMissingGroundTruth,
      'modelVersion': modelVersion,
      'project': ?project,
      'schedule': schedule,
    };
  }

  factory EvaluationJobArgs.fromMap(Map<String, dynamic> map) {
    return EvaluationJobArgs(
      annotationSpecSet: pulumi.Output.create<String>(map['annotationSpecSet'] as String),
      description: pulumi.Output.create<String>(map['description'] as String),
      evaluationJobConfig: pulumi.Output.create<GoogleCloudDatalabelingV1beta1EvaluationJobConfig>(GoogleCloudDatalabelingV1beta1EvaluationJobConfig.fromMap((map['evaluationJobConfig'] as Map).cast<String, dynamic>())),
      labelMissingGroundTruth: pulumi.Output.create<bool>(map['labelMissingGroundTruth'] as bool),
      modelVersion: pulumi.Output.create<String>(map['modelVersion'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      schedule: pulumi.Output.create<String>(map['schedule'] as String),
    );
  }
}

