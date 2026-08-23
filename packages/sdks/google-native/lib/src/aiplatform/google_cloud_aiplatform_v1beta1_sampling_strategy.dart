// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_sampling_strategy_random_sample_config.dart';

/// Sampling Strategy for logging, can be for both training and prediction dataset.
class GoogleCloudAiplatformV1beta1SamplingStrategy {
  /// Random sample config. Will support more sampling strategies later.
  final pulumi.Input<GoogleCloudAiplatformV1beta1SamplingStrategyRandomSampleConfig>? randomSampleConfig;

  /// Creates a new [GoogleCloudAiplatformV1beta1SamplingStrategy].
  /// [randomSampleConfig] Random sample config. Will support more sampling strategies later.
  const GoogleCloudAiplatformV1beta1SamplingStrategy({
    this.randomSampleConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'randomSampleConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1SamplingStrategyRandomSampleConfig, Map<String, dynamic>>(randomSampleConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1beta1SamplingStrategy.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1SamplingStrategy(
      randomSampleConfig: (() { final guardedValue = map['randomSampleConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1SamplingStrategyRandomSampleConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
