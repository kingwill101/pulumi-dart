// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datalabeling_v1beta1_bounding_poly_config.dart';
import 'google_cloud_datalabeling_v1beta1_evaluation_config.dart';
import 'google_cloud_datalabeling_v1beta1_evaluation_job_alert_config.dart';
import 'google_cloud_datalabeling_v1beta1_human_annotation_config.dart';
import 'google_cloud_datalabeling_v1beta1_image_classification_config.dart';
import 'google_cloud_datalabeling_v1beta1_input_config.dart';
import 'google_cloud_datalabeling_v1beta1_text_classification_config.dart';

/// Configures specific details of how a continuous evaluation job works. Provide this configuration when you create an EvaluationJob.
class GoogleCloudDatalabelingV1beta1EvaluationJobConfig {
  /// Prediction keys that tell Data Labeling Service where to find the data for evaluation in your BigQuery table. When the service samples prediction input and output from your model version and saves it to BigQuery, the data gets stored as JSON strings in the BigQuery table. These keys tell Data Labeling Service how to parse the JSON. You can provide the following entries in this field: * `data_json_key`: the data key for prediction input. You must provide either this key or `reference_json_key`. * `reference_json_key`: the data reference key for prediction input. You must provide either this key or `data_json_key`. * `label_json_key`: the label key for prediction output. Required. * `label_score_json_key`: the score key for prediction output. Required. * `bounding_box_json_key`: the bounding box key for prediction output. Required if your model version perform image object detection. Learn [how to configure prediction keys](/ml-engine/docs/continuous-evaluation/create-job#prediction-keys).
  final pulumi.Input<Map<String, String>> bigqueryImportKeys;

  /// Specify this field if your model version performs image object detection (bounding box detection). `annotationSpecSet` in this configuration must match EvaluationJob.annotationSpecSet.
  final pulumi.Input<GoogleCloudDatalabelingV1beta1BoundingPolyConfig>?
  boundingPolyConfig;

  /// Details for calculating evaluation metrics and creating Evaulations. If your model version performs image object detection, you must specify the `boundingBoxEvaluationOptions` field within this configuration. Otherwise, provide an empty object for this configuration.
  final pulumi.Input<GoogleCloudDatalabelingV1beta1EvaluationConfig>
  evaluationConfig;

  /// Optional. Configuration details for evaluation job alerts. Specify this field if you want to receive email alerts if the evaluation job finds that your predictions have low mean average precision during a run.
  final pulumi.Input<GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig>?
  evaluationJobAlertConfig;

  /// The maximum number of predictions to sample and save to BigQuery during each evaluation interval. This limit overrides `example_sample_percentage`: even if the service has not sampled enough predictions to fulfill `example_sample_perecentage` during an interval, it stops sampling predictions when it meets this limit.
  final pulumi.Input<int> exampleCount;

  /// Fraction of predictions to sample and save to BigQuery during each evaluation interval. For example, 0.1 means 10% of predictions served by your model version get saved to BigQuery.
  final pulumi.Input<double> exampleSamplePercentage;

  /// Optional. Details for human annotation of your data. If you set labelMissingGroundTruth to `true` for this evaluation job, then you must specify this field. If you plan to provide your own ground truth labels, then omit this field. Note that you must create an Instruction resource before you can specify this field. Provide the name of the instruction resource in the `instruction` field within this configuration.
  final pulumi.Input<GoogleCloudDatalabelingV1beta1HumanAnnotationConfig>?
  humanAnnotationConfig;

  /// Specify this field if your model version performs image classification or general classification. `annotationSpecSet` in this configuration must match EvaluationJob.annotationSpecSet. `allowMultiLabel` in this configuration must match `classificationMetadata.isMultiLabel` in input_config.
  final pulumi.Input<GoogleCloudDatalabelingV1beta1ImageClassificationConfig>?
  imageClassificationConfig;

  /// Rquired. Details for the sampled prediction input. Within this configuration, there are requirements for several fields: * `dataType` must be one of `IMAGE`, `TEXT`, or `GENERAL_DATA`. * `annotationType` must be one of `IMAGE_CLASSIFICATION_ANNOTATION`, `TEXT_CLASSIFICATION_ANNOTATION`, `GENERAL_CLASSIFICATION_ANNOTATION`, or `IMAGE_BOUNDING_BOX_ANNOTATION` (image object detection). * If your machine learning model performs classification, you must specify `classificationMetadata.isMultiLabel`. * You must specify `bigquerySource` (not `gcsSource`).
  final pulumi.Input<GoogleCloudDatalabelingV1beta1InputConfig>? inputConfig;

  /// Specify this field if your model version performs text classification. `annotationSpecSet` in this configuration must match EvaluationJob.annotationSpecSet. `allowMultiLabel` in this configuration must match `classificationMetadata.isMultiLabel` in input_config.
  final pulumi.Input<GoogleCloudDatalabelingV1beta1TextClassificationConfig>?
  textClassificationConfig;

  /// Creates a new [GoogleCloudDatalabelingV1beta1EvaluationJobConfig].
  /// [bigqueryImportKeys] Prediction keys that tell Data Labeling Service where to find the data for evaluation in your BigQuery table. When the service samples prediction input and output from your model version and saves it to BigQuery, the data gets stored as JSON strings in the BigQuery table. These keys tell Data Labeling Service how to parse the JSON. You can provide the following entries in this field: * `data_json_key`: the data key for prediction input. You must provide either this key or `reference_json_key`. * `reference_json_key`: the data reference key for prediction input. You must provide either this key or `data_json_key`. * `label_json_key`: the label key for prediction output. Required. * `label_score_json_key`: the score key for prediction output. Required. * `bounding_box_json_key`: the bounding box key for prediction output. Required if your model version perform image object detection. Learn [how to configure prediction keys](/ml-engine/docs/continuous-evaluation/create-job#prediction-keys).
  /// [boundingPolyConfig] Specify this field if your model version performs image object detection (bounding box detection). `annotationSpecSet` in this configuration must match EvaluationJob.annotationSpecSet.
  /// [evaluationConfig] Details for calculating evaluation metrics and creating Evaulations. If your model version performs image object detection, you must specify the `boundingBoxEvaluationOptions` field within this configuration. Otherwise, provide an empty object for this configuration.
  /// [evaluationJobAlertConfig] Optional. Configuration details for evaluation job alerts. Specify this field if you want to receive email alerts if the evaluation job finds that your predictions have low mean average precision during a run.
  /// [exampleCount] The maximum number of predictions to sample and save to BigQuery during each evaluation interval. This limit overrides `example_sample_percentage`: even if the service has not sampled enough predictions to fulfill `example_sample_perecentage` during an interval, it stops sampling predictions when it meets this limit.
  /// [exampleSamplePercentage] Fraction of predictions to sample and save to BigQuery during each evaluation interval. For example, 0.1 means 10% of predictions served by your model version get saved to BigQuery.
  /// [humanAnnotationConfig] Optional. Details for human annotation of your data. If you set labelMissingGroundTruth to `true` for this evaluation job, then you must specify this field. If you plan to provide your own ground truth labels, then omit this field. Note that you must create an Instruction resource before you can specify this field. Provide the name of the instruction resource in the `instruction` field within this configuration.
  /// [imageClassificationConfig] Specify this field if your model version performs image classification or general classification. `annotationSpecSet` in this configuration must match EvaluationJob.annotationSpecSet. `allowMultiLabel` in this configuration must match `classificationMetadata.isMultiLabel` in input_config.
  /// [inputConfig] Rquired. Details for the sampled prediction input. Within this configuration, there are requirements for several fields: * `dataType` must be one of `IMAGE`, `TEXT`, or `GENERAL_DATA`. * `annotationType` must be one of `IMAGE_CLASSIFICATION_ANNOTATION`, `TEXT_CLASSIFICATION_ANNOTATION`, `GENERAL_CLASSIFICATION_ANNOTATION`, or `IMAGE_BOUNDING_BOX_ANNOTATION` (image object detection). * If your machine learning model performs classification, you must specify `classificationMetadata.isMultiLabel`. * You must specify `bigquerySource` (not `gcsSource`).
  /// [textClassificationConfig] Specify this field if your model version performs text classification. `annotationSpecSet` in this configuration must match EvaluationJob.annotationSpecSet. `allowMultiLabel` in this configuration must match `classificationMetadata.isMultiLabel` in input_config.
  GoogleCloudDatalabelingV1beta1EvaluationJobConfig({
    required this.bigqueryImportKeys,
    this.boundingPolyConfig,
    required this.evaluationConfig,
    this.evaluationJobAlertConfig,
    required this.exampleCount,
    required this.exampleSamplePercentage,
    this.humanAnnotationConfig,
    this.imageClassificationConfig,
    this.inputConfig,
    this.textClassificationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryImportKeys': bigqueryImportKeys,
      'boundingPolyConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDatalabelingV1beta1BoundingPolyConfig,
            Map<String, dynamic>
          >(boundingPolyConfig, (value) => value.toMap()),
      'evaluationConfig':
          pulumi.Input.mapInputValue<
            GoogleCloudDatalabelingV1beta1EvaluationConfig,
            Map<String, dynamic>
          >(evaluationConfig, (value) => value.toMap()),
      'evaluationJobAlertConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig,
            Map<String, dynamic>
          >(evaluationJobAlertConfig, (value) => value.toMap()),
      'exampleCount': exampleCount,
      'exampleSamplePercentage': exampleSamplePercentage,
      'humanAnnotationConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDatalabelingV1beta1HumanAnnotationConfig,
            Map<String, dynamic>
          >(humanAnnotationConfig, (value) => value.toMap()),
      'imageClassificationConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDatalabelingV1beta1ImageClassificationConfig,
            Map<String, dynamic>
          >(imageClassificationConfig, (value) => value.toMap()),
      'inputConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDatalabelingV1beta1InputConfig,
            Map<String, dynamic>
          >(inputConfig, (value) => value.toMap()),
      'textClassificationConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudDatalabelingV1beta1TextClassificationConfig,
            Map<String, dynamic>
          >(textClassificationConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDatalabelingV1beta1EvaluationJobConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatalabelingV1beta1EvaluationJobConfig(
      bigqueryImportKeys: pulumi.Input.fromValue(
        (map['bigqueryImportKeys'] as Map).cast<String, String>(),
      ),
      boundingPolyConfig: (() {
        final guardedValue = map['boundingPolyConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDatalabelingV1beta1BoundingPolyConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      evaluationConfig: pulumi.Input.fromValue(
        GoogleCloudDatalabelingV1beta1EvaluationConfig.fromMap(
          (map['evaluationConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      evaluationJobAlertConfig: (() {
        final guardedValue = map['evaluationJobAlertConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      exampleCount: pulumi.Input.fromValue(map['exampleCount'] as int),
      exampleSamplePercentage: pulumi.Input.fromValue(
        map['exampleSamplePercentage'] as double,
      ),
      humanAnnotationConfig: (() {
        final guardedValue = map['humanAnnotationConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDatalabelingV1beta1HumanAnnotationConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      imageClassificationConfig: (() {
        final guardedValue = map['imageClassificationConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDatalabelingV1beta1ImageClassificationConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      inputConfig: (() {
        final guardedValue = map['inputConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDatalabelingV1beta1InputConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      textClassificationConfig: (() {
        final guardedValue = map['textClassificationConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudDatalabelingV1beta1TextClassificationConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
