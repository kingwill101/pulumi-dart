// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_study_spec_algorithm.dart';
import 'google_cloud_aiplatform_v1_study_spec_convex_automated_stopping_spec.dart';
import 'google_cloud_aiplatform_v1_study_spec_decay_curve_automated_stopping_spec.dart';
import 'google_cloud_aiplatform_v1_study_spec_measurement_selection_type.dart';
import 'google_cloud_aiplatform_v1_study_spec_median_automated_stopping_spec.dart';
import 'google_cloud_aiplatform_v1_study_spec_metric_spec.dart';
import 'google_cloud_aiplatform_v1_study_spec_observation_noise.dart';
import 'google_cloud_aiplatform_v1_study_spec_parameter_spec.dart';
import 'google_cloud_aiplatform_v1_study_spec_study_stopping_config.dart';

/// Represents specification of a Study.
class GoogleCloudAiplatformV1StudySpec {
  /// The search algorithm specified for the Study.
  final pulumi.Input<GoogleCloudAiplatformV1StudySpecAlgorithm>? algorithm;
  /// The automated early stopping spec using convex stopping rule.
  final pulumi.Input<GoogleCloudAiplatformV1StudySpecConvexAutomatedStoppingSpec>? convexAutomatedStoppingSpec;
  /// The automated early stopping spec using decay curve rule.
  final pulumi.Input<GoogleCloudAiplatformV1StudySpecDecayCurveAutomatedStoppingSpec>? decayCurveStoppingSpec;
  /// Describe which measurement selection type will be used
  final pulumi.Input<GoogleCloudAiplatformV1StudySpecMeasurementSelectionType>? measurementSelectionType;
  /// The automated early stopping spec using median rule.
  final pulumi.Input<GoogleCloudAiplatformV1StudySpecMedianAutomatedStoppingSpec>? medianAutomatedStoppingSpec;
  /// Metric specs for the Study.
  final pulumi.Input<List<GoogleCloudAiplatformV1StudySpecMetricSpec>> metrics;
  /// The observation noise level of the study. Currently only supported by the Vertex AI Vizier service. Not supported by HyperparameterTuningJob or TrainingPipeline.
  final pulumi.Input<GoogleCloudAiplatformV1StudySpecObservationNoise>? observationNoise;
  /// The set of parameters to tune.
  final pulumi.Input<List<GoogleCloudAiplatformV1StudySpecParameterSpec>> parameters;
  /// Conditions for automated stopping of a Study. Enable automated stopping by configuring at least one condition.
  final pulumi.Input<GoogleCloudAiplatformV1StudySpecStudyStoppingConfig>? studyStoppingConfig;

  /// Creates a new [GoogleCloudAiplatformV1StudySpec].
  /// [algorithm] The search algorithm specified for the Study.
  /// [convexAutomatedStoppingSpec] The automated early stopping spec using convex stopping rule.
  /// [decayCurveStoppingSpec] The automated early stopping spec using decay curve rule.
  /// [measurementSelectionType] Describe which measurement selection type will be used
  /// [medianAutomatedStoppingSpec] The automated early stopping spec using median rule.
  /// [metrics] Metric specs for the Study.
  /// [observationNoise] The observation noise level of the study. Currently only supported by the Vertex AI Vizier service. Not supported by HyperparameterTuningJob or TrainingPipeline.
  /// [parameters] The set of parameters to tune.
  /// [studyStoppingConfig] Conditions for automated stopping of a Study. Enable automated stopping by configuring at least one condition.
  GoogleCloudAiplatformV1StudySpec({
    this.algorithm,
    this.convexAutomatedStoppingSpec,
    this.decayCurveStoppingSpec,
    this.measurementSelectionType,
    this.medianAutomatedStoppingSpec,
    required this.metrics,
    this.observationNoise,
    required this.parameters,
    this.studyStoppingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1StudySpecAlgorithm, String>(algorithm, (value) => value.value),
      'convexAutomatedStoppingSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1StudySpecConvexAutomatedStoppingSpec, Map<String, dynamic>>(convexAutomatedStoppingSpec, (value) => value.toMap()),
      'decayCurveStoppingSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1StudySpecDecayCurveAutomatedStoppingSpec, Map<String, dynamic>>(decayCurveStoppingSpec, (value) => value.toMap()),
      'measurementSelectionType': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1StudySpecMeasurementSelectionType, String>(measurementSelectionType, (value) => value.value),
      'medianAutomatedStoppingSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1StudySpecMedianAutomatedStoppingSpec, Map<String, dynamic>>(medianAutomatedStoppingSpec, (value) => value.toMap()),
      'metrics': pulumi.Input.mapInputValue<List<GoogleCloudAiplatformV1StudySpecMetricSpec>, List<Map<String, dynamic>>>(metrics, (value) => pulumi.Input.encodeList<GoogleCloudAiplatformV1StudySpecMetricSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
      'observationNoise': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1StudySpecObservationNoise, String>(observationNoise, (value) => value.value),
      'parameters': pulumi.Input.mapInputValue<List<GoogleCloudAiplatformV1StudySpecParameterSpec>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<GoogleCloudAiplatformV1StudySpecParameterSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
      'studyStoppingConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1StudySpecStudyStoppingConfig, Map<String, dynamic>>(studyStoppingConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1StudySpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1StudySpec(
      algorithm: map['algorithm'] == null ? null : (GoogleCloudAiplatformV1StudySpecAlgorithm.fromValue(map['algorithm']! as String)).input(),
      convexAutomatedStoppingSpec: map['convexAutomatedStoppingSpec'] == null ? null : (GoogleCloudAiplatformV1StudySpecConvexAutomatedStoppingSpec.fromMap((map['convexAutomatedStoppingSpec']! as Map).cast<String, dynamic>())).input(),
      decayCurveStoppingSpec: map['decayCurveStoppingSpec'] == null ? null : (GoogleCloudAiplatformV1StudySpecDecayCurveAutomatedStoppingSpec.fromMap((map['decayCurveStoppingSpec']! as Map).cast<String, dynamic>())).input(),
      measurementSelectionType: map['measurementSelectionType'] == null ? null : (GoogleCloudAiplatformV1StudySpecMeasurementSelectionType.fromValue(map['measurementSelectionType']! as String)).input(),
      medianAutomatedStoppingSpec: map['medianAutomatedStoppingSpec'] == null ? null : (GoogleCloudAiplatformV1StudySpecMedianAutomatedStoppingSpec.fromMap((map['medianAutomatedStoppingSpec']! as Map).cast<String, dynamic>())).input(),
      metrics: (pulumi.Input.decodeList<GoogleCloudAiplatformV1StudySpecMetricSpec>(map['metrics'], (value) => GoogleCloudAiplatformV1StudySpecMetricSpec.fromMap((value as Map).cast<String, dynamic>()))).input(),
      observationNoise: map['observationNoise'] == null ? null : (GoogleCloudAiplatformV1StudySpecObservationNoise.fromValue(map['observationNoise']! as String)).input(),
      parameters: (pulumi.Input.decodeList<GoogleCloudAiplatformV1StudySpecParameterSpec>(map['parameters'], (value) => GoogleCloudAiplatformV1StudySpecParameterSpec.fromMap((value as Map).cast<String, dynamic>()))).input(),
      studyStoppingConfig: map['studyStoppingConfig'] == null ? null : (GoogleCloudAiplatformV1StudySpecStudyStoppingConfig.fromMap((map['studyStoppingConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

