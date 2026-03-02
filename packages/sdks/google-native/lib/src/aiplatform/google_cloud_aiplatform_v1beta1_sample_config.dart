// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_sample_config_sample_strategy.dart';

/// Active learning data sampling config. For every active learning labeling iteration, it will select a batch of data based on the sampling strategy.
class GoogleCloudAiplatformV1beta1SampleConfig {
  /// The percentage of data needed to be labeled in each following batch (except the first batch).
  final pulumi.Input<int>? followingBatchSamplePercentage;
  /// The percentage of data needed to be labeled in the first batch.
  final pulumi.Input<int>? initialBatchSamplePercentage;
  /// Field to choose sampling strategy. Sampling strategy will decide which data should be selected for human labeling in every batch.
  final pulumi.Input<GoogleCloudAiplatformV1beta1SampleConfigSampleStrategy>? sampleStrategy;

  /// Creates a new [GoogleCloudAiplatformV1beta1SampleConfig].
  /// [followingBatchSamplePercentage] The percentage of data needed to be labeled in each following batch (except the first batch).
  /// [initialBatchSamplePercentage] The percentage of data needed to be labeled in the first batch.
  /// [sampleStrategy] Field to choose sampling strategy. Sampling strategy will decide which data should be selected for human labeling in every batch.
  GoogleCloudAiplatformV1beta1SampleConfig({
    this.followingBatchSamplePercentage,
    this.initialBatchSamplePercentage,
    this.sampleStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'followingBatchSamplePercentage': ?followingBatchSamplePercentage,
      'initialBatchSamplePercentage': ?initialBatchSamplePercentage,
      'sampleStrategy': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1SampleConfigSampleStrategy, String>(sampleStrategy, (value) => value.value),
    };
  }

  factory GoogleCloudAiplatformV1beta1SampleConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1SampleConfig(
      followingBatchSamplePercentage: map['followingBatchSamplePercentage'] == null ? null : (map['followingBatchSamplePercentage']! as int).input(),
      initialBatchSamplePercentage: map['initialBatchSamplePercentage'] == null ? null : (map['initialBatchSamplePercentage']! as int).input(),
      sampleStrategy: map['sampleStrategy'] == null ? null : (GoogleCloudAiplatformV1beta1SampleConfigSampleStrategy.fromValue(map['sampleStrategy']! as String)).input(),
    );
  }
}

