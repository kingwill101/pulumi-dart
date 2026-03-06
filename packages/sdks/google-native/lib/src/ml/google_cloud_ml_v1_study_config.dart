// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_automated_stopping_config.dart';
import 'google_cloud_ml_v1_study_config_algorithm.dart';
import 'google_cloud_ml_v1_study_config_metric_spec.dart';
import 'google_cloud_ml_v1_study_config_parameter_spec.dart';

/// Represents configuration of a study.
class GoogleCloudMlV1StudyConfig {
  /// The search algorithm specified for the study.
  final pulumi.Input<GoogleCloudMlV1StudyConfigAlgorithm>? algorithm;
  /// Configuration for automated stopping of unpromising Trials.
  final pulumi.Input<GoogleCloudMlV1AutomatedStoppingConfig>? automatedStoppingConfig;
  /// Metric specs for the study.
  final pulumi.Input<List<GoogleCloudMlV1StudyConfigMetricSpec>>? metrics;
  /// The set of parameters to tune.
  final pulumi.Input<List<GoogleCloudMlV1StudyConfigParameterSpec>> parameters;

  /// Creates a new [GoogleCloudMlV1StudyConfig].
  /// [algorithm] The search algorithm specified for the study.
  /// [automatedStoppingConfig] Configuration for automated stopping of unpromising Trials.
  /// [metrics] Metric specs for the study.
  /// [parameters] The set of parameters to tune.
  const GoogleCloudMlV1StudyConfig({
    this.algorithm,
    this.automatedStoppingConfig,
    this.metrics,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?pulumi.Input.mapOptionalInputValue<GoogleCloudMlV1StudyConfigAlgorithm, String>(algorithm, (value) => value.wireValue),
      'automatedStoppingConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudMlV1AutomatedStoppingConfig, Map<String, dynamic>>(automatedStoppingConfig, (value) => value.toMap()),
      'metrics': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudMlV1StudyConfigMetricSpec>, List<Map<String, dynamic>>>(metrics, (value) => pulumi.Input.encodeList<GoogleCloudMlV1StudyConfigMetricSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parameters': pulumi.Input.mapInputValue<List<GoogleCloudMlV1StudyConfigParameterSpec>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<GoogleCloudMlV1StudyConfigParameterSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudMlV1StudyConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1StudyConfig(
      algorithm: (() { final guardedValue = map['algorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudMlV1StudyConfigAlgorithm.fromValue(guardedValue as String)); })(),
      automatedStoppingConfig: (() { final guardedValue = map['automatedStoppingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudMlV1AutomatedStoppingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metrics: (() { final guardedValue = map['metrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudMlV1StudyConfigMetricSpec>(guardedValue, (value) => GoogleCloudMlV1StudyConfigMetricSpec.fromMap((value as Map).cast<String, dynamic>()))); })(),
      parameters: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudMlV1StudyConfigParameterSpec>(map['parameters']!, (value) => GoogleCloudMlV1StudyConfigParameterSpec.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

