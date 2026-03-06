// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_study_spec_convex_automated_stopping_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_convex_stop_config_response.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_decay_curve_automated_stopping_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_median_automated_stopping_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_metric_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_parameter_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_study_stopping_config_response.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_transfer_learning_config_response.dart';

/// Represents specification of a Study.
class GoogleCloudAiplatformV1beta1StudySpecResponse {
  /// The search algorithm specified for the Study.
  final pulumi.Input<String> algorithm;
  /// The automated early stopping spec using convex stopping rule.
  final pulumi.Input<GoogleCloudAiplatformV1beta1StudySpecConvexAutomatedStoppingSpecResponse> convexAutomatedStoppingSpec;
  /// Deprecated. The automated early stopping using convex stopping rule.
  final pulumi.Input<GoogleCloudAiplatformV1beta1StudySpecConvexStopConfigResponse> convexStopConfig;
  /// The automated early stopping spec using decay curve rule.
  final pulumi.Input<GoogleCloudAiplatformV1beta1StudySpecDecayCurveAutomatedStoppingSpecResponse> decayCurveStoppingSpec;
  /// Describe which measurement selection type will be used
  final pulumi.Input<String> measurementSelectionType;
  /// The automated early stopping spec using median rule.
  final pulumi.Input<GoogleCloudAiplatformV1beta1StudySpecMedianAutomatedStoppingSpecResponse> medianAutomatedStoppingSpec;
  /// Metric specs for the Study.
  final pulumi.Input<List<GoogleCloudAiplatformV1beta1StudySpecMetricSpecResponse>> metrics;
  /// The observation noise level of the study. Currently only supported by the Vertex AI Vizier service. Not supported by HyperparameterTuningJob or TrainingPipeline.
  final pulumi.Input<String> observationNoise;
  /// The set of parameters to tune.
  final pulumi.Input<List<GoogleCloudAiplatformV1beta1StudySpecParameterSpecResponse>> parameters;
  /// Conditions for automated stopping of a Study. Enable automated stopping by configuring at least one condition.
  final pulumi.Input<GoogleCloudAiplatformV1beta1StudySpecStudyStoppingConfigResponse> studyStoppingConfig;
  /// The configuration info/options for transfer learning. Currently supported for Vertex AI Vizier service, not HyperParameterTuningJob
  final pulumi.Input<GoogleCloudAiplatformV1beta1StudySpecTransferLearningConfigResponse> transferLearningConfig;

  /// Creates a new [GoogleCloudAiplatformV1beta1StudySpecResponse].
  /// [algorithm] The search algorithm specified for the Study.
  /// [convexAutomatedStoppingSpec] The automated early stopping spec using convex stopping rule.
  /// [convexStopConfig] Deprecated. The automated early stopping using convex stopping rule.
  /// [decayCurveStoppingSpec] The automated early stopping spec using decay curve rule.
  /// [measurementSelectionType] Describe which measurement selection type will be used
  /// [medianAutomatedStoppingSpec] The automated early stopping spec using median rule.
  /// [metrics] Metric specs for the Study.
  /// [observationNoise] The observation noise level of the study. Currently only supported by the Vertex AI Vizier service. Not supported by HyperparameterTuningJob or TrainingPipeline.
  /// [parameters] The set of parameters to tune.
  /// [studyStoppingConfig] Conditions for automated stopping of a Study. Enable automated stopping by configuring at least one condition.
  /// [transferLearningConfig] The configuration info/options for transfer learning. Currently supported for Vertex AI Vizier service, not HyperParameterTuningJob
  const GoogleCloudAiplatformV1beta1StudySpecResponse({
    required this.algorithm,
    required this.convexAutomatedStoppingSpec,
    required this.convexStopConfig,
    required this.decayCurveStoppingSpec,
    required this.measurementSelectionType,
    required this.medianAutomatedStoppingSpec,
    required this.metrics,
    required this.observationNoise,
    required this.parameters,
    required this.studyStoppingConfig,
    required this.transferLearningConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'convexAutomatedStoppingSpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1StudySpecConvexAutomatedStoppingSpecResponse, Map<String, dynamic>>(convexAutomatedStoppingSpec, (value) => value.toMap()),
      'convexStopConfig': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1StudySpecConvexStopConfigResponse, Map<String, dynamic>>(convexStopConfig, (value) => value.toMap()),
      'decayCurveStoppingSpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1StudySpecDecayCurveAutomatedStoppingSpecResponse, Map<String, dynamic>>(decayCurveStoppingSpec, (value) => value.toMap()),
      'measurementSelectionType': measurementSelectionType,
      'medianAutomatedStoppingSpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1StudySpecMedianAutomatedStoppingSpecResponse, Map<String, dynamic>>(medianAutomatedStoppingSpec, (value) => value.toMap()),
      'metrics': pulumi.Input.mapInputValue<List<GoogleCloudAiplatformV1beta1StudySpecMetricSpecResponse>, List<Map<String, dynamic>>>(metrics, (value) => pulumi.Input.encodeList<GoogleCloudAiplatformV1beta1StudySpecMetricSpecResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'observationNoise': observationNoise,
      'parameters': pulumi.Input.mapInputValue<List<GoogleCloudAiplatformV1beta1StudySpecParameterSpecResponse>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<GoogleCloudAiplatformV1beta1StudySpecParameterSpecResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'studyStoppingConfig': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1StudySpecStudyStoppingConfigResponse, Map<String, dynamic>>(studyStoppingConfig, (value) => value.toMap()),
      'transferLearningConfig': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1StudySpecTransferLearningConfigResponse, Map<String, dynamic>>(transferLearningConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1beta1StudySpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1StudySpecResponse(
      algorithm: pulumi.Input.fromValue(map['algorithm'] as String),
      convexAutomatedStoppingSpec: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1StudySpecConvexAutomatedStoppingSpecResponse.fromMap((map['convexAutomatedStoppingSpec']! as Map).cast<String, dynamic>())),
      convexStopConfig: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1StudySpecConvexStopConfigResponse.fromMap((map['convexStopConfig']! as Map).cast<String, dynamic>())),
      decayCurveStoppingSpec: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1StudySpecDecayCurveAutomatedStoppingSpecResponse.fromMap((map['decayCurveStoppingSpec']! as Map).cast<String, dynamic>())),
      measurementSelectionType: pulumi.Input.fromValue(map['measurementSelectionType'] as String),
      medianAutomatedStoppingSpec: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1StudySpecMedianAutomatedStoppingSpecResponse.fromMap((map['medianAutomatedStoppingSpec']! as Map).cast<String, dynamic>())),
      metrics: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudAiplatformV1beta1StudySpecMetricSpecResponse>(map['metrics']!, (value) => GoogleCloudAiplatformV1beta1StudySpecMetricSpecResponse.fromMap((value as Map).cast<String, dynamic>()))),
      observationNoise: pulumi.Input.fromValue(map['observationNoise'] as String),
      parameters: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudAiplatformV1beta1StudySpecParameterSpecResponse>(map['parameters']!, (value) => GoogleCloudAiplatformV1beta1StudySpecParameterSpecResponse.fromMap((value as Map).cast<String, dynamic>()))),
      studyStoppingConfig: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1StudySpecStudyStoppingConfigResponse.fromMap((map['studyStoppingConfig']! as Map).cast<String, dynamic>())),
      transferLearningConfig: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1StudySpecTransferLearningConfigResponse.fromMap((map['transferLearningConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

