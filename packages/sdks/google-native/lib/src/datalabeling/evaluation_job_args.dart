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
  const EvaluationJobArgs({
    required this.annotationSpecSet,
    required this.description,
    required this.evaluationJobConfig,
    required this.labelMissingGroundTruth,
    required this.modelVersion,
    this.project,
    required this.schedule,
  });

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
      annotationSpecSet: pulumi.Input.fromValue(map['annotationSpecSet'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      evaluationJobConfig: pulumi.Input.fromValue(GoogleCloudDatalabelingV1beta1EvaluationJobConfig.fromMap((map['evaluationJobConfig']! as Map).cast<String, dynamic>())),
      labelMissingGroundTruth: pulumi.Input.fromValue(map['labelMissingGroundTruth'] as bool),
      modelVersion: pulumi.Input.fromValue(map['modelVersion'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedule: pulumi.Input.fromValue(map['schedule'] as String),
    );
  }
}

