// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_study_spec_convex_automated_stopping_spec_response.dart';
import 'google_cloud_aiplatform_v1_study_spec_decay_curve_automated_stopping_spec_response.dart';
import 'google_cloud_aiplatform_v1_study_spec_median_automated_stopping_spec_response.dart';
import 'google_cloud_aiplatform_v1_study_spec_metric_spec_response.dart';
import 'google_cloud_aiplatform_v1_study_spec_parameter_spec_response.dart';
import 'google_cloud_aiplatform_v1_study_spec_study_stopping_config_response.dart';

/// Represents specification of a Study.
class GoogleCloudAiplatformV1StudySpecResponse {
  /// The search algorithm specified for the Study.
  final pulumi.Input<String> algorithm;
  /// The automated early stopping spec using convex stopping rule.
  final pulumi.Input<GoogleCloudAiplatformV1StudySpecConvexAutomatedStoppingSpecResponse> convexAutomatedStoppingSpec;
  /// The automated early stopping spec using decay curve rule.
  final pulumi.Input<GoogleCloudAiplatformV1StudySpecDecayCurveAutomatedStoppingSpecResponse> decayCurveStoppingSpec;
  /// Describe which measurement selection type will be used
  final pulumi.Input<String> measurementSelectionType;
  /// The automated early stopping spec using median rule.
  final pulumi.Input<GoogleCloudAiplatformV1StudySpecMedianAutomatedStoppingSpecResponse> medianAutomatedStoppingSpec;
  /// Metric specs for the Study.
  final pulumi.Input<List<GoogleCloudAiplatformV1StudySpecMetricSpecResponse>> metrics;
  /// The observation noise level of the study. Currently only supported by the Vertex AI Vizier service. Not supported by HyperparameterTuningJob or TrainingPipeline.
  final pulumi.Input<String> observationNoise;
  /// The set of parameters to tune.
  final pulumi.Input<List<GoogleCloudAiplatformV1StudySpecParameterSpecResponse>> parameters;
  /// Conditions for automated stopping of a Study. Enable automated stopping by configuring at least one condition.
  final pulumi.Input<GoogleCloudAiplatformV1StudySpecStudyStoppingConfigResponse> studyStoppingConfig;

  /// Creates a new [GoogleCloudAiplatformV1StudySpecResponse].
  /// [algorithm] The search algorithm specified for the Study.
  /// [convexAutomatedStoppingSpec] The automated early stopping spec using convex stopping rule.
  /// [decayCurveStoppingSpec] The automated early stopping spec using decay curve rule.
  /// [measurementSelectionType] Describe which measurement selection type will be used
  /// [medianAutomatedStoppingSpec] The automated early stopping spec using median rule.
  /// [metrics] Metric specs for the Study.
  /// [observationNoise] The observation noise level of the study. Currently only supported by the Vertex AI Vizier service. Not supported by HyperparameterTuningJob or TrainingPipeline.
  /// [parameters] The set of parameters to tune.
  /// [studyStoppingConfig] Conditions for automated stopping of a Study. Enable automated stopping by configuring at least one condition.
  const GoogleCloudAiplatformV1StudySpecResponse({
    required this.algorithm,
    required this.convexAutomatedStoppingSpec,
    required this.decayCurveStoppingSpec,
    required this.measurementSelectionType,
    required this.medianAutomatedStoppingSpec,
    required this.metrics,
    required this.observationNoise,
    required this.parameters,
    required this.studyStoppingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'convexAutomatedStoppingSpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1StudySpecConvexAutomatedStoppingSpecResponse, Map<String, dynamic>>(convexAutomatedStoppingSpec, (value) => value.toMap()),
      'decayCurveStoppingSpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1StudySpecDecayCurveAutomatedStoppingSpecResponse, Map<String, dynamic>>(decayCurveStoppingSpec, (value) => value.toMap()),
      'measurementSelectionType': measurementSelectionType,
      'medianAutomatedStoppingSpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1StudySpecMedianAutomatedStoppingSpecResponse, Map<String, dynamic>>(medianAutomatedStoppingSpec, (value) => value.toMap()),
      'metrics': pulumi.Input.mapInputValue<List<GoogleCloudAiplatformV1StudySpecMetricSpecResponse>, List<Map<String, dynamic>>>(metrics, (value) => pulumi.Input.encodeList<GoogleCloudAiplatformV1StudySpecMetricSpecResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'observationNoise': observationNoise,
      'parameters': pulumi.Input.mapInputValue<List<GoogleCloudAiplatformV1StudySpecParameterSpecResponse>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<GoogleCloudAiplatformV1StudySpecParameterSpecResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'studyStoppingConfig': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1StudySpecStudyStoppingConfigResponse, Map<String, dynamic>>(studyStoppingConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1StudySpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1StudySpecResponse(
      algorithm: pulumi.Input.fromValue(map['algorithm'] as String),
      convexAutomatedStoppingSpec: pulumi.Input.fromValue(GoogleCloudAiplatformV1StudySpecConvexAutomatedStoppingSpecResponse.fromMap((map['convexAutomatedStoppingSpec']! as Map).cast<String, dynamic>())),
      decayCurveStoppingSpec: pulumi.Input.fromValue(GoogleCloudAiplatformV1StudySpecDecayCurveAutomatedStoppingSpecResponse.fromMap((map['decayCurveStoppingSpec']! as Map).cast<String, dynamic>())),
      measurementSelectionType: pulumi.Input.fromValue(map['measurementSelectionType'] as String),
      medianAutomatedStoppingSpec: pulumi.Input.fromValue(GoogleCloudAiplatformV1StudySpecMedianAutomatedStoppingSpecResponse.fromMap((map['medianAutomatedStoppingSpec']! as Map).cast<String, dynamic>())),
      metrics: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudAiplatformV1StudySpecMetricSpecResponse>(map['metrics']!, (value) => GoogleCloudAiplatformV1StudySpecMetricSpecResponse.fromMap((value as Map).cast<String, dynamic>()))),
      observationNoise: pulumi.Input.fromValue(map['observationNoise'] as String),
      parameters: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudAiplatformV1StudySpecParameterSpecResponse>(map['parameters']!, (value) => GoogleCloudAiplatformV1StudySpecParameterSpecResponse.fromMap((value as Map).cast<String, dynamic>()))),
      studyStoppingConfig: pulumi.Input.fromValue(GoogleCloudAiplatformV1StudySpecStudyStoppingConfigResponse.fromMap((map['studyStoppingConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
