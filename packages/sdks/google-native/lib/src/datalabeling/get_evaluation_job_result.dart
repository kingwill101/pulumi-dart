// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datalabeling_v1beta1_attempt_response.dart';
import 'google_cloud_datalabeling_v1beta1_evaluation_job_config_response.dart';

/// Result data returned by getEvaluationJob.
class GetEvaluationJobResult {
  /// Name of the AnnotationSpecSet describing all the labels that your machine learning model outputs. You must create this resource before you create an evaluation job and provide its name in the following format: "projects/{project_id}/annotationSpecSets/{annotation_spec_set_id}"
  final String? annotationSpecSet;
  /// Every time the evaluation job runs and an error occurs, the failed attempt is appended to this array.
  final List<GoogleCloudDatalabelingV1beta1AttemptResponse>? attempts;
  /// Timestamp of when this evaluation job was created.
  final String? createTime;
  /// Description of the job. The description can be up to 25,000 characters long.
  final String? description;
  /// Configuration details for the evaluation job.
  final GoogleCloudDatalabelingV1beta1EvaluationJobConfigResponse? evaluationJobConfig;
  /// Whether you want Data Labeling Service to provide ground truth labels for prediction input. If you want the service to assign human labelers to annotate your data, set this to `true`. If you want to provide your own ground truth labels in the evaluation job's BigQuery table, set this to `false`.
  final bool? labelMissingGroundTruth;
  /// The [AI Platform Prediction model version](/ml-engine/docs/prediction-overview) to be evaluated. Prediction input and output is sampled from this model version. When creating an evaluation job, specify the model version in the following format: "projects/{project_id}/models/{model_name}/versions/{version_name}" There can only be one evaluation job per model version.
  final String? modelVersion;
  /// After you create a job, Data Labeling Service assigns a name to the job with the following format: "projects/{project_id}/evaluationJobs/ {evaluation_job_id}"
  final String? name;
  /// Describes the interval at which the job runs. This interval must be at least 1 day, and it is rounded to the nearest day. For example, if you specify a 50-hour interval, the job runs every 2 days. You can provide the schedule in [crontab format](/scheduler/docs/configuring/cron-job-schedules) or in an [English-like format](/appengine/docs/standard/python/config/cronref#schedule_format). Regardless of what you specify, the job will run at 10:00 AM UTC. Only the interval from this schedule is used, not the specific time of day.
  final String? schedule;
  /// Describes the current state of the job.
  final String? state;

  /// Creates a new [GetEvaluationJobResult].
  /// [annotationSpecSet] Name of the AnnotationSpecSet describing all the labels that your machine learning model outputs. You must create this resource before you create an evaluation job and provide its name in the following format: "projects/{project_id}/annotationSpecSets/{annotation_spec_set_id}"
  /// [attempts] Every time the evaluation job runs and an error occurs, the failed attempt is appended to this array.
  /// [createTime] Timestamp of when this evaluation job was created.
  /// [description] Description of the job. The description can be up to 25,000 characters long.
  /// [evaluationJobConfig] Configuration details for the evaluation job.
  /// [labelMissingGroundTruth] Whether you want Data Labeling Service to provide ground truth labels for prediction input. If you want the service to assign human labelers to annotate your data, set this to `true`. If you want to provide your own ground truth labels in the evaluation job's BigQuery table, set this to `false`.
  /// [modelVersion] The [AI Platform Prediction model version](/ml-engine/docs/prediction-overview) to be evaluated. Prediction input and output is sampled from this model version. When creating an evaluation job, specify the model version in the following format: "projects/{project_id}/models/{model_name}/versions/{version_name}" There can only be one evaluation job per model version.
  /// [name] After you create a job, Data Labeling Service assigns a name to the job with the following format: "projects/{project_id}/evaluationJobs/ {evaluation_job_id}"
  /// [schedule] Describes the interval at which the job runs. This interval must be at least 1 day, and it is rounded to the nearest day. For example, if you specify a 50-hour interval, the job runs every 2 days. You can provide the schedule in [crontab format](/scheduler/docs/configuring/cron-job-schedules) or in an [English-like format](/appengine/docs/standard/python/config/cronref#schedule_format). Regardless of what you specify, the job will run at 10:00 AM UTC. Only the interval from this schedule is used, not the specific time of day.
  /// [state] Describes the current state of the job.
  const GetEvaluationJobResult({
    this.annotationSpecSet,
    this.attempts,
    this.createTime,
    this.description,
    this.evaluationJobConfig,
    this.labelMissingGroundTruth,
    this.modelVersion,
    this.name,
    this.schedule,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationSpecSet': ?annotationSpecSet,
      'attempts': ?(() { final guardedValue = attempts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudDatalabelingV1beta1AttemptResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createTime': ?createTime,
      'description': ?description,
      'evaluationJobConfig': ?evaluationJobConfig?.toMap(),
      'labelMissingGroundTruth': ?labelMissingGroundTruth,
      'modelVersion': ?modelVersion,
      'name': ?name,
      'schedule': ?schedule,
      'state': ?state,
    };
  }

  factory GetEvaluationJobResult.fromMap(Map<String, dynamic> map) {
    return GetEvaluationJobResult(
      annotationSpecSet: (() { final guardedValue = map['annotationSpecSet']; if (guardedValue == null) return null; return guardedValue as String; })(),
      attempts: (() { final guardedValue = map['attempts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudDatalabelingV1beta1AttemptResponse>(guardedValue, (value) => GoogleCloudDatalabelingV1beta1AttemptResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      evaluationJobConfig: (() { final guardedValue = map['evaluationJobConfig']; if (guardedValue == null) return null; return GoogleCloudDatalabelingV1beta1EvaluationJobConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labelMissingGroundTruth: (() { final guardedValue = map['labelMissingGroundTruth']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      modelVersion: (() { final guardedValue = map['modelVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
