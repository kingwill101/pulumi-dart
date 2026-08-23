// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Options regarding evaluation between bounding boxes.
class GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions {
  /// Minimum [intersection-over-union (IOU)](/vision/automl/object-detection/docs/evaluate#intersection-over-union) required for 2 bounding boxes to be considered a match. This must be a number between 0 and 1.
  final pulumi.Input<double>? iouThreshold;

  /// Creates a new [GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions].
  /// [iouThreshold] Minimum [intersection-over-union (IOU)](/vision/automl/object-detection/docs/evaluate#intersection-over-union) required for 2 bounding boxes to be considered a match. This must be a number between 0 and 1.
  const GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions({
    this.iouThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iouThreshold': ?iouThreshold,
    };
  }

  factory GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions(
      iouThreshold: (() { final guardedValue = map['iouThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
