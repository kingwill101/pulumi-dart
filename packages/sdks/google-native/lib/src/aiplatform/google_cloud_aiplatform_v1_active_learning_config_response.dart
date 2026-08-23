// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_sample_config_response.dart';
import 'google_cloud_aiplatform_v1_training_config_response.dart';

/// Parameters that configure the active learning pipeline. Active learning will label the data incrementally by several iterations. For every iteration, it will select a batch of data based on the sampling strategy.
class GoogleCloudAiplatformV1ActiveLearningConfigResponse {
  /// Max number of human labeled DataItems.
  final pulumi.Input<String> maxDataItemCount;
  /// Max percent of total DataItems for human labeling.
  final pulumi.Input<int> maxDataItemPercentage;
  /// Active learning data sampling config. For every active learning labeling iteration, it will select a batch of data based on the sampling strategy.
  final pulumi.Input<GoogleCloudAiplatformV1SampleConfigResponse> sampleConfig;
  /// CMLE training config. For every active learning labeling iteration, system will train a machine learning model on CMLE. The trained model will be used by data sampling algorithm to select DataItems.
  final pulumi.Input<GoogleCloudAiplatformV1TrainingConfigResponse> trainingConfig;

  /// Creates a new [GoogleCloudAiplatformV1ActiveLearningConfigResponse].
  /// [maxDataItemCount] Max number of human labeled DataItems.
  /// [maxDataItemPercentage] Max percent of total DataItems for human labeling.
  /// [sampleConfig] Active learning data sampling config. For every active learning labeling iteration, it will select a batch of data based on the sampling strategy.
  /// [trainingConfig] CMLE training config. For every active learning labeling iteration, system will train a machine learning model on CMLE. The trained model will be used by data sampling algorithm to select DataItems.
  const GoogleCloudAiplatformV1ActiveLearningConfigResponse({
    required this.maxDataItemCount,
    required this.maxDataItemPercentage,
    required this.sampleConfig,
    required this.trainingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxDataItemCount': maxDataItemCount,
      'maxDataItemPercentage': maxDataItemPercentage,
      'sampleConfig': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1SampleConfigResponse, Map<String, dynamic>>(sampleConfig, (value) => value.toMap()),
      'trainingConfig': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1TrainingConfigResponse, Map<String, dynamic>>(trainingConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1ActiveLearningConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ActiveLearningConfigResponse(
      maxDataItemCount: pulumi.Input.fromValue(map['maxDataItemCount'] as String),
      maxDataItemPercentage: pulumi.Input.fromValue(map['maxDataItemPercentage'] as int),
      sampleConfig: pulumi.Input.fromValue(GoogleCloudAiplatformV1SampleConfigResponse.fromMap((map['sampleConfig']! as Map).cast<String, dynamic>())),
      trainingConfig: pulumi.Input.fromValue(GoogleCloudAiplatformV1TrainingConfigResponse.fromMap((map['trainingConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
