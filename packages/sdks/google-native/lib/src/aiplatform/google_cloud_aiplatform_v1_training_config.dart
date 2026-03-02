// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CMLE training config. For every active learning labeling iteration, system will train a machine learning model on CMLE. The trained model will be used by data sampling algorithm to select DataItems.
class GoogleCloudAiplatformV1TrainingConfig {
  /// The timeout hours for the CMLE training job, expressed in milli hours i.e. 1,000 value in this field means 1 hour.
  final pulumi.Input<String>? timeoutTrainingMilliHours;

  /// Creates a new [GoogleCloudAiplatformV1TrainingConfig].
  /// [timeoutTrainingMilliHours] The timeout hours for the CMLE training job, expressed in milli hours i.e. 1,000 value in this field means 1 hour.
  GoogleCloudAiplatformV1TrainingConfig({
    this.timeoutTrainingMilliHours,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timeoutTrainingMilliHours': ?timeoutTrainingMilliHours,
    };
  }

  factory GoogleCloudAiplatformV1TrainingConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1TrainingConfig(
      timeoutTrainingMilliHours: map['timeoutTrainingMilliHours'] == null ? null : (map['timeoutTrainingMilliHours'] as String).input(),
    );
  }
}

