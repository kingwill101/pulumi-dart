// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datalabeling_v1beta1_image_classification_config_answer_aggregation_type.dart';

/// Config for image classification human labeling task.
class GoogleCloudDatalabelingV1beta1ImageClassificationConfig {
  /// Optional. If allow_multi_label is true, contributors are able to choose multiple labels for one image.
  final pulumi.Input<bool>? allowMultiLabel;
  /// Annotation spec set resource name.
  final pulumi.Input<String> annotationSpecSet;
  /// Optional. The type of how to aggregate answers.
  final pulumi.Input<GoogleCloudDatalabelingV1beta1ImageClassificationConfigAnswerAggregationType>? answerAggregationType;

  /// Creates a new [GoogleCloudDatalabelingV1beta1ImageClassificationConfig].
  /// [allowMultiLabel] Optional. If allow_multi_label is true, contributors are able to choose multiple labels for one image.
  /// [annotationSpecSet] Annotation spec set resource name.
  /// [answerAggregationType] Optional. The type of how to aggregate answers.
  const GoogleCloudDatalabelingV1beta1ImageClassificationConfig({
    this.allowMultiLabel,
    required this.annotationSpecSet,
    this.answerAggregationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowMultiLabel': ?allowMultiLabel,
      'annotationSpecSet': annotationSpecSet,
      'answerAggregationType': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatalabelingV1beta1ImageClassificationConfigAnswerAggregationType, String>(answerAggregationType, (value) => value.wireValue),
    };
  }

  factory GoogleCloudDatalabelingV1beta1ImageClassificationConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1ImageClassificationConfig(
      allowMultiLabel: (() { final guardedValue = map['allowMultiLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      annotationSpecSet: pulumi.Input.fromValue(map['annotationSpecSet'] as String),
      answerAggregationType: (() { final guardedValue = map['answerAggregationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDatalabelingV1beta1ImageClassificationConfigAnswerAggregationType.fromValue(guardedValue as String)); })(),
    );
  }
}

