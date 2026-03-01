// ignore_for_file: unused_element, unnecessary_cast


/// Options regarding evaluation between bounding boxes.
class GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptionsResponse {
  /// Minimum [intersection-over-union (IOU)](/vision/automl/object-detection/docs/evaluate#intersection-over-union) required for 2 bounding boxes to be considered a match. This must be a number between 0 and 1.
  final double iouThreshold;

  /// Creates a new [GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptionsResponse].
  /// [iouThreshold] Minimum [intersection-over-union (IOU)](/vision/automl/object-detection/docs/evaluate#intersection-over-union) required for 2 bounding boxes to be considered a match. This must be a number between 0 and 1.
  GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptionsResponse({
    required this.iouThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iouThreshold': iouThreshold,
    };
  }

  factory GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptionsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptionsResponse(
      iouThreshold: map['iouThreshold'] as double,
    );
  }
}

