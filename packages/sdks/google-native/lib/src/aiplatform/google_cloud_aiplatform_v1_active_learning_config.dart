// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_sample_config.dart';
import 'google_cloud_aiplatform_v1_training_config.dart';

/// Parameters that configure the active learning pipeline. Active learning will label the data incrementally by several iterations. For every iteration, it will select a batch of data based on the sampling strategy.
class GoogleCloudAiplatformV1ActiveLearningConfig {
  /// Max number of human labeled DataItems.
  final pulumi.Input<String>? maxDataItemCount;
  /// Max percent of total DataItems for human labeling.
  final pulumi.Input<int>? maxDataItemPercentage;
  /// Active learning data sampling config. For every active learning labeling iteration, it will select a batch of data based on the sampling strategy.
  final pulumi.Input<GoogleCloudAiplatformV1SampleConfig>? sampleConfig;
  /// CMLE training config. For every active learning labeling iteration, system will train a machine learning model on CMLE. The trained model will be used by data sampling algorithm to select DataItems.
  final pulumi.Input<GoogleCloudAiplatformV1TrainingConfig>? trainingConfig;

  /// Creates a new [GoogleCloudAiplatformV1ActiveLearningConfig].
  /// [maxDataItemCount] Max number of human labeled DataItems.
  /// [maxDataItemPercentage] Max percent of total DataItems for human labeling.
  /// [sampleConfig] Active learning data sampling config. For every active learning labeling iteration, it will select a batch of data based on the sampling strategy.
  /// [trainingConfig] CMLE training config. For every active learning labeling iteration, system will train a machine learning model on CMLE. The trained model will be used by data sampling algorithm to select DataItems.
  const GoogleCloudAiplatformV1ActiveLearningConfig({
    this.maxDataItemCount,
    this.maxDataItemPercentage,
    this.sampleConfig,
    this.trainingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxDataItemCount': ?maxDataItemCount,
      'maxDataItemPercentage': ?maxDataItemPercentage,
      'sampleConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1SampleConfig, Map<String, dynamic>>(sampleConfig, (value) => value.toMap()),
      'trainingConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1TrainingConfig, Map<String, dynamic>>(trainingConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1ActiveLearningConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ActiveLearningConfig(
      maxDataItemCount: (() { final guardedValue = map['maxDataItemCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxDataItemPercentage: (() { final guardedValue = map['maxDataItemPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sampleConfig: (() { final guardedValue = map['sampleConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1SampleConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trainingConfig: (() { final guardedValue = map['trainingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1TrainingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

