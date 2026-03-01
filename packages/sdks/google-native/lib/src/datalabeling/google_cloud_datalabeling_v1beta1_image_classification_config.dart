// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datalabeling_v1beta1_image_classification_config_answer_aggregation_type.dart';

/// Config for image classification human labeling task.
class GoogleCloudDatalabelingV1beta1ImageClassificationConfig {
  /// Optional. If allow_multi_label is true, contributors are able to choose multiple labels for one image.
  final bool? allowMultiLabel;
  /// Annotation spec set resource name.
  final String annotationSpecSet;
  /// Optional. The type of how to aggregate answers.
  final GoogleCloudDatalabelingV1beta1ImageClassificationConfigAnswerAggregationType? answerAggregationType;

  /// Creates a new [GoogleCloudDatalabelingV1beta1ImageClassificationConfig].
  /// [allowMultiLabel] Optional. If allow_multi_label is true, contributors are able to choose multiple labels for one image.
  /// [annotationSpecSet] Annotation spec set resource name.
  /// [answerAggregationType] Optional. The type of how to aggregate answers.
  GoogleCloudDatalabelingV1beta1ImageClassificationConfig({
    this.allowMultiLabel,
    required this.annotationSpecSet,
    this.answerAggregationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowMultiLabel': ?allowMultiLabel,
      'annotationSpecSet': annotationSpecSet,
      'answerAggregationType': ?answerAggregationType == null ? null : answerAggregationType!.value,
    };
  }

  factory GoogleCloudDatalabelingV1beta1ImageClassificationConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1ImageClassificationConfig(
      allowMultiLabel: map['allowMultiLabel'] == null ? null : map['allowMultiLabel'] as bool,
      annotationSpecSet: map['annotationSpecSet'] as String,
      answerAggregationType: map['answerAggregationType'] == null ? null : GoogleCloudDatalabelingV1beta1ImageClassificationConfigAnswerAggregationType.fromValue(map['answerAggregationType'] as String),
    );
  }
}

