// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Config for image classification human labeling task.
class GoogleCloudDatalabelingV1beta1ImageClassificationConfigResponse {
  /// Optional. If allow_multi_label is true, contributors are able to choose multiple labels for one image.
  final pulumi.Input<bool> allowMultiLabel;
  /// Annotation spec set resource name.
  final pulumi.Input<String> annotationSpecSet;
  /// Optional. The type of how to aggregate answers.
  final pulumi.Input<String> answerAggregationType;

  /// Creates a new [GoogleCloudDatalabelingV1beta1ImageClassificationConfigResponse].
  /// [allowMultiLabel] Optional. If allow_multi_label is true, contributors are able to choose multiple labels for one image.
  /// [annotationSpecSet] Annotation spec set resource name.
  /// [answerAggregationType] Optional. The type of how to aggregate answers.
  GoogleCloudDatalabelingV1beta1ImageClassificationConfigResponse({
    required this.allowMultiLabel,
    required this.annotationSpecSet,
    required this.answerAggregationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowMultiLabel': allowMultiLabel,
      'annotationSpecSet': annotationSpecSet,
      'answerAggregationType': answerAggregationType,
    };
  }

  factory GoogleCloudDatalabelingV1beta1ImageClassificationConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1ImageClassificationConfigResponse(
      allowMultiLabel: pulumi.Input.fromValue(map['allowMultiLabel'] as bool),
      annotationSpecSet: pulumi.Input.fromValue(map['annotationSpecSet'] as String),
      answerAggregationType: pulumi.Input.fromValue(map['answerAggregationType'] as String),
    );
  }
}

