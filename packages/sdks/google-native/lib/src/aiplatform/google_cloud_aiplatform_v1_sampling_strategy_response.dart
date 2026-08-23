// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_sampling_strategy_random_sample_config_response.dart';

/// Sampling Strategy for logging, can be for both training and prediction dataset.
class GoogleCloudAiplatformV1SamplingStrategyResponse {
  /// Random sample config. Will support more sampling strategies later.
  final pulumi.Input<GoogleCloudAiplatformV1SamplingStrategyRandomSampleConfigResponse> randomSampleConfig;

  /// Creates a new [GoogleCloudAiplatformV1SamplingStrategyResponse].
  /// [randomSampleConfig] Random sample config. Will support more sampling strategies later.
  const GoogleCloudAiplatformV1SamplingStrategyResponse({
    required this.randomSampleConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'randomSampleConfig': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1SamplingStrategyRandomSampleConfigResponse, Map<String, dynamic>>(randomSampleConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1SamplingStrategyResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1SamplingStrategyResponse(
      randomSampleConfig: pulumi.Input.fromValue(GoogleCloudAiplatformV1SamplingStrategyRandomSampleConfigResponse.fromMap((map['randomSampleConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
