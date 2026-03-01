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
  final GoogleCloudAiplatformV1StudySpecAlgorithm? algorithm;
  /// The automated early stopping spec using convex stopping rule.
  final GoogleCloudAiplatformV1StudySpecConvexAutomatedStoppingSpec? convexAutomatedStoppingSpec;
  /// The automated early stopping spec using decay curve rule.
  final GoogleCloudAiplatformV1StudySpecDecayCurveAutomatedStoppingSpec? decayCurveStoppingSpec;
  /// Describe which measurement selection type will be used
  final GoogleCloudAiplatformV1StudySpecMeasurementSelectionType? measurementSelectionType;
  /// The automated early stopping spec using median rule.
  final GoogleCloudAiplatformV1StudySpecMedianAutomatedStoppingSpec? medianAutomatedStoppingSpec;
  /// Metric specs for the Study.
  final List<GoogleCloudAiplatformV1StudySpecMetricSpec> metrics;
  /// The observation noise level of the study. Currently only supported by the Vertex AI Vizier service. Not supported by HyperparameterTuningJob or TrainingPipeline.
  final GoogleCloudAiplatformV1StudySpecObservationNoise? observationNoise;
  /// The set of parameters to tune.
  final List<GoogleCloudAiplatformV1StudySpecParameterSpec> parameters;
  /// Conditions for automated stopping of a Study. Enable automated stopping by configuring at least one condition.
  final GoogleCloudAiplatformV1StudySpecStudyStoppingConfig? studyStoppingConfig;

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
      'algorithm': ?algorithm == null ? null : algorithm!.value,
      'convexAutomatedStoppingSpec': ?convexAutomatedStoppingSpec == null ? null : convexAutomatedStoppingSpec!.toMap(),
      'decayCurveStoppingSpec': ?decayCurveStoppingSpec == null ? null : decayCurveStoppingSpec!.toMap(),
      'measurementSelectionType': ?measurementSelectionType == null ? null : measurementSelectionType!.value,
      'medianAutomatedStoppingSpec': ?medianAutomatedStoppingSpec == null ? null : medianAutomatedStoppingSpec!.toMap(),
      'metrics': pulumi.Input.encodeList<GoogleCloudAiplatformV1StudySpecMetricSpec, Map<String, dynamic>>(metrics, (value) => value.toMap()),
      'observationNoise': ?observationNoise == null ? null : observationNoise!.value,
      'parameters': pulumi.Input.encodeList<GoogleCloudAiplatformV1StudySpecParameterSpec, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'studyStoppingConfig': ?studyStoppingConfig == null ? null : studyStoppingConfig!.toMap(),
    };
  }

  factory GoogleCloudAiplatformV1StudySpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1StudySpec(
      algorithm: map['algorithm'] == null ? null : GoogleCloudAiplatformV1StudySpecAlgorithm.fromValue(map['algorithm'] as String),
      convexAutomatedStoppingSpec: map['convexAutomatedStoppingSpec'] == null ? null : GoogleCloudAiplatformV1StudySpecConvexAutomatedStoppingSpec.fromMap((map['convexAutomatedStoppingSpec'] as Map).cast<String, dynamic>()),
      decayCurveStoppingSpec: map['decayCurveStoppingSpec'] == null ? null : GoogleCloudAiplatformV1StudySpecDecayCurveAutomatedStoppingSpec.fromMap((map['decayCurveStoppingSpec'] as Map).cast<String, dynamic>()),
      measurementSelectionType: map['measurementSelectionType'] == null ? null : GoogleCloudAiplatformV1StudySpecMeasurementSelectionType.fromValue(map['measurementSelectionType'] as String),
      medianAutomatedStoppingSpec: map['medianAutomatedStoppingSpec'] == null ? null : GoogleCloudAiplatformV1StudySpecMedianAutomatedStoppingSpec.fromMap((map['medianAutomatedStoppingSpec'] as Map).cast<String, dynamic>()),
      metrics: pulumi.Input.decodeList<GoogleCloudAiplatformV1StudySpecMetricSpec>(map['metrics'], (value) => GoogleCloudAiplatformV1StudySpecMetricSpec.fromMap((value as Map).cast<String, dynamic>())),
      observationNoise: map['observationNoise'] == null ? null : GoogleCloudAiplatformV1StudySpecObservationNoise.fromValue(map['observationNoise'] as String),
      parameters: pulumi.Input.decodeList<GoogleCloudAiplatformV1StudySpecParameterSpec>(map['parameters'], (value) => GoogleCloudAiplatformV1StudySpecParameterSpec.fromMap((value as Map).cast<String, dynamic>())),
      studyStoppingConfig: map['studyStoppingConfig'] == null ? null : GoogleCloudAiplatformV1StudySpecStudyStoppingConfig.fromMap((map['studyStoppingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

