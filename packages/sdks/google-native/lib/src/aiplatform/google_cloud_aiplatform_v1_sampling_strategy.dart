// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_sampling_strategy_random_sample_config.dart';

/// Sampling Strategy for logging, can be for both training and prediction dataset.
class GoogleCloudAiplatformV1SamplingStrategy {
  /// Random sample config. Will support more sampling strategies later.
  final pulumi.Input<GoogleCloudAiplatformV1SamplingStrategyRandomSampleConfig>? randomSampleConfig;

  /// Creates a new [GoogleCloudAiplatformV1SamplingStrategy].
  /// [randomSampleConfig] Random sample config. Will support more sampling strategies later.
  GoogleCloudAiplatformV1SamplingStrategy({
    this.randomSampleConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'randomSampleConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1SamplingStrategyRandomSampleConfig, Map<String, dynamic>>(randomSampleConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1SamplingStrategy.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1SamplingStrategy(
      randomSampleConfig: map['randomSampleConfig'] == null ? null : (GoogleCloudAiplatformV1SamplingStrategyRandomSampleConfig.fromMap((map['randomSampleConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

