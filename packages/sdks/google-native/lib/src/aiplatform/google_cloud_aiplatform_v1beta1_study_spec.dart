// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_study_spec_algorithm.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_convex_automated_stopping_spec.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_convex_stop_config.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_decay_curve_automated_stopping_spec.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_measurement_selection_type.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_median_automated_stopping_spec.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_metric_spec.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_observation_noise.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_parameter_spec.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_study_stopping_config.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_transfer_learning_config.dart';

/// Represents specification of a Study.
class GoogleCloudAiplatformV1beta1StudySpec {
  /// The search algorithm specified for the Study.
  final pulumi.Input<GoogleCloudAiplatformV1beta1StudySpecAlgorithm>? algorithm;
  /// The automated early stopping spec using convex stopping rule.
  final pulumi.Input<GoogleCloudAiplatformV1beta1StudySpecConvexAutomatedStoppingSpec>? convexAutomatedStoppingSpec;
  /// Deprecated. The automated early stopping using convex stopping rule.
  final pulumi.Input<GoogleCloudAiplatformV1beta1StudySpecConvexStopConfig>? convexStopConfig;
  /// The automated early stopping spec using decay curve rule.
  final pulumi.Input<GoogleCloudAiplatformV1beta1StudySpecDecayCurveAutomatedStoppingSpec>? decayCurveStoppingSpec;
  /// Describe which measurement selection type will be used
  final pulumi.Input<GoogleCloudAiplatformV1beta1StudySpecMeasurementSelectionType>? measurementSelectionType;
  /// The automated early stopping spec using median rule.
  final pulumi.Input<GoogleCloudAiplatformV1beta1StudySpecMedianAutomatedStoppingSpec>? medianAutomatedStoppingSpec;
  /// Metric specs for the Study.
  final pulumi.Input<List<GoogleCloudAiplatformV1beta1StudySpecMetricSpec>> metrics;
  /// The observation noise level of the study. Currently only supported by the Vertex AI Vizier service. Not supported by HyperparameterTuningJob or TrainingPipeline.
  final pulumi.Input<GoogleCloudAiplatformV1beta1StudySpecObservationNoise>? observationNoise;
  /// The set of parameters to tune.
  final pulumi.Input<List<GoogleCloudAiplatformV1beta1StudySpecParameterSpec>> parameters;
  /// Conditions for automated stopping of a Study. Enable automated stopping by configuring at least one condition.
  final pulumi.Input<GoogleCloudAiplatformV1beta1StudySpecStudyStoppingConfig>? studyStoppingConfig;
  /// The configuration info/options for transfer learning. Currently supported for Vertex AI Vizier service, not HyperParameterTuningJob
  final pulumi.Input<GoogleCloudAiplatformV1beta1StudySpecTransferLearningConfig>? transferLearningConfig;

  /// Creates a new [GoogleCloudAiplatformV1beta1StudySpec].
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
  GoogleCloudAiplatformV1beta1StudySpec({
    this.algorithm,
    this.convexAutomatedStoppingSpec,
    this.convexStopConfig,
    this.decayCurveStoppingSpec,
    this.measurementSelectionType,
    this.medianAutomatedStoppingSpec,
    required this.metrics,
    this.observationNoise,
    required this.parameters,
    this.studyStoppingConfig,
    this.transferLearningConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1StudySpecAlgorithm, String>(algorithm, (value) => value.wireValue),
      'convexAutomatedStoppingSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1StudySpecConvexAutomatedStoppingSpec, Map<String, dynamic>>(convexAutomatedStoppingSpec, (value) => value.toMap()),
      'convexStopConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1StudySpecConvexStopConfig, Map<String, dynamic>>(convexStopConfig, (value) => value.toMap()),
      'decayCurveStoppingSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1StudySpecDecayCurveAutomatedStoppingSpec, Map<String, dynamic>>(decayCurveStoppingSpec, (value) => value.toMap()),
      'measurementSelectionType': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1StudySpecMeasurementSelectionType, String>(measurementSelectionType, (value) => value.wireValue),
      'medianAutomatedStoppingSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1StudySpecMedianAutomatedStoppingSpec, Map<String, dynamic>>(medianAutomatedStoppingSpec, (value) => value.toMap()),
      'metrics': pulumi.Input.mapInputValue<List<GoogleCloudAiplatformV1beta1StudySpecMetricSpec>, List<Map<String, dynamic>>>(metrics, (value) => pulumi.Input.encodeList<GoogleCloudAiplatformV1beta1StudySpecMetricSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
      'observationNoise': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1StudySpecObservationNoise, String>(observationNoise, (value) => value.wireValue),
      'parameters': pulumi.Input.mapInputValue<List<GoogleCloudAiplatformV1beta1StudySpecParameterSpec>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<GoogleCloudAiplatformV1beta1StudySpecParameterSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
      'studyStoppingConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1StudySpecStudyStoppingConfig, Map<String, dynamic>>(studyStoppingConfig, (value) => value.toMap()),
      'transferLearningConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1StudySpecTransferLearningConfig, Map<String, dynamic>>(transferLearningConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1beta1StudySpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1StudySpec(
      algorithm: (() { final guardedValue = map['algorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1StudySpecAlgorithm.fromValue(guardedValue as String)); })(),
      convexAutomatedStoppingSpec: (() { final guardedValue = map['convexAutomatedStoppingSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1StudySpecConvexAutomatedStoppingSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      convexStopConfig: (() { final guardedValue = map['convexStopConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1StudySpecConvexStopConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      decayCurveStoppingSpec: (() { final guardedValue = map['decayCurveStoppingSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1StudySpecDecayCurveAutomatedStoppingSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      measurementSelectionType: (() { final guardedValue = map['measurementSelectionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1StudySpecMeasurementSelectionType.fromValue(guardedValue as String)); })(),
      medianAutomatedStoppingSpec: (() { final guardedValue = map['medianAutomatedStoppingSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1StudySpecMedianAutomatedStoppingSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metrics: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudAiplatformV1beta1StudySpecMetricSpec>(map['metrics']!, (value) => GoogleCloudAiplatformV1beta1StudySpecMetricSpec.fromMap((value as Map).cast<String, dynamic>()))),
      observationNoise: (() { final guardedValue = map['observationNoise']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1StudySpecObservationNoise.fromValue(guardedValue as String)); })(),
      parameters: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudAiplatformV1beta1StudySpecParameterSpec>(map['parameters']!, (value) => GoogleCloudAiplatformV1beta1StudySpecParameterSpec.fromMap((value as Map).cast<String, dynamic>()))),
      studyStoppingConfig: (() { final guardedValue = map['studyStoppingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1StudySpecStudyStoppingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      transferLearningConfig: (() { final guardedValue = map['transferLearningConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1StudySpecTransferLearningConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

