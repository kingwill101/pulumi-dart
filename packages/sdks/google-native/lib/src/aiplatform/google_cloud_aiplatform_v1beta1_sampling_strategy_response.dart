// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_sampling_strategy_random_sample_config_response.dart';

/// Sampling Strategy for logging, can be for both training and prediction dataset.
class GoogleCloudAiplatformV1beta1SamplingStrategyResponse {
  /// Random sample config. Will support more sampling strategies later.
  final pulumi.Input<
    GoogleCloudAiplatformV1beta1SamplingStrategyRandomSampleConfigResponse
  >
  randomSampleConfig;

  /// Creates a new [GoogleCloudAiplatformV1beta1SamplingStrategyResponse].
  /// [randomSampleConfig] Random sample config. Will support more sampling strategies later.
  GoogleCloudAiplatformV1beta1SamplingStrategyResponse({
    required this.randomSampleConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'randomSampleConfig':
          pulumi.Input.mapInputValue<
            GoogleCloudAiplatformV1beta1SamplingStrategyRandomSampleConfigResponse,
            Map<String, dynamic>
          >(randomSampleConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1beta1SamplingStrategyResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1SamplingStrategyResponse(
      randomSampleConfig: pulumi.Input.fromValue(
        GoogleCloudAiplatformV1beta1SamplingStrategyRandomSampleConfigResponse.fromMap(
          (map['randomSampleConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
