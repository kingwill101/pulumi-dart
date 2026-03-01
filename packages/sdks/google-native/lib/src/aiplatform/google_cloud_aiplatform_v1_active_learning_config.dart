// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_sample_config.dart';
import 'google_cloud_aiplatform_v1_training_config.dart';

/// Parameters that configure the active learning pipeline. Active learning will label the data incrementally by several iterations. For every iteration, it will select a batch of data based on the sampling strategy.
class GoogleCloudAiplatformV1ActiveLearningConfig {
  /// Max number of human labeled DataItems.
  final String? maxDataItemCount;
  /// Max percent of total DataItems for human labeling.
  final int? maxDataItemPercentage;
  /// Active learning data sampling config. For every active learning labeling iteration, it will select a batch of data based on the sampling strategy.
  final GoogleCloudAiplatformV1SampleConfig? sampleConfig;
  /// CMLE training config. For every active learning labeling iteration, system will train a machine learning model on CMLE. The trained model will be used by data sampling algorithm to select DataItems.
  final GoogleCloudAiplatformV1TrainingConfig? trainingConfig;

  /// Creates a new [GoogleCloudAiplatformV1ActiveLearningConfig].
  /// [maxDataItemCount] Max number of human labeled DataItems.
  /// [maxDataItemPercentage] Max percent of total DataItems for human labeling.
  /// [sampleConfig] Active learning data sampling config. For every active learning labeling iteration, it will select a batch of data based on the sampling strategy.
  /// [trainingConfig] CMLE training config. For every active learning labeling iteration, system will train a machine learning model on CMLE. The trained model will be used by data sampling algorithm to select DataItems.
  GoogleCloudAiplatformV1ActiveLearningConfig({
    this.maxDataItemCount,
    this.maxDataItemPercentage,
    this.sampleConfig,
    this.trainingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxDataItemCount': ?maxDataItemCount,
      'maxDataItemPercentage': ?maxDataItemPercentage,
      'sampleConfig': ?sampleConfig == null ? null : sampleConfig!.toMap(),
      'trainingConfig': ?trainingConfig == null ? null : trainingConfig!.toMap(),
    };
  }

  factory GoogleCloudAiplatformV1ActiveLearningConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ActiveLearningConfig(
      maxDataItemCount: map['maxDataItemCount'] == null ? null : map['maxDataItemCount'] as String,
      maxDataItemPercentage: map['maxDataItemPercentage'] == null ? null : map['maxDataItemPercentage'] as int,
      sampleConfig: map['sampleConfig'] == null ? null : GoogleCloudAiplatformV1SampleConfig.fromMap((map['sampleConfig'] as Map).cast<String, dynamic>()),
      trainingConfig: map['trainingConfig'] == null ? null : GoogleCloudAiplatformV1TrainingConfig.fromMap((map['trainingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

