// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_automated_stopping_config_response.dart';
import 'google_cloud_ml_v1_study_config_metric_spec_response.dart';
import 'google_cloud_ml_v1_study_config_parameter_spec_response.dart';

/// Represents configuration of a study.
class GoogleCloudMlV1StudyConfigResponse {
  /// The search algorithm specified for the study.
  final pulumi.Input<String> algorithm;

  /// Configuration for automated stopping of unpromising Trials.
  final pulumi.Input<GoogleCloudMlV1AutomatedStoppingConfigResponse>
  automatedStoppingConfig;

  /// Metric specs for the study.
  final pulumi.Input<List<GoogleCloudMlV1StudyConfigMetricSpecResponse>>
  metrics;

  /// The set of parameters to tune.
  final pulumi.Input<List<GoogleCloudMlV1StudyConfigParameterSpecResponse>>
  parameters;

  /// Creates a new [GoogleCloudMlV1StudyConfigResponse].
  /// [algorithm] The search algorithm specified for the study.
  /// [automatedStoppingConfig] Configuration for automated stopping of unpromising Trials.
  /// [metrics] Metric specs for the study.
  /// [parameters] The set of parameters to tune.
  GoogleCloudMlV1StudyConfigResponse({
    required this.algorithm,
    required this.automatedStoppingConfig,
    required this.metrics,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'automatedStoppingConfig':
          pulumi.Input.mapInputValue<
            GoogleCloudMlV1AutomatedStoppingConfigResponse,
            Map<String, dynamic>
          >(automatedStoppingConfig, (value) => value.toMap()),
      'metrics':
          pulumi.Input.mapInputValue<
            List<GoogleCloudMlV1StudyConfigMetricSpecResponse>,
            List<Map<String, dynamic>>
          >(
            metrics,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudMlV1StudyConfigMetricSpecResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'parameters':
          pulumi.Input.mapInputValue<
            List<GoogleCloudMlV1StudyConfigParameterSpecResponse>,
            List<Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudMlV1StudyConfigParameterSpecResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GoogleCloudMlV1StudyConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1StudyConfigResponse(
      algorithm: pulumi.Input.fromValue(map['algorithm'] as String),
      automatedStoppingConfig: pulumi.Input.fromValue(
        GoogleCloudMlV1AutomatedStoppingConfigResponse.fromMap(
          (map['automatedStoppingConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      metrics: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GoogleCloudMlV1StudyConfigMetricSpecResponse>(
          map['metrics']!,
          (value) => GoogleCloudMlV1StudyConfigMetricSpecResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      parameters: pulumi.Input.fromValue(
        pulumi
            .Input.decodeList<GoogleCloudMlV1StudyConfigParameterSpecResponse>(
          map['parameters']!,
          (value) => GoogleCloudMlV1StudyConfigParameterSpecResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
