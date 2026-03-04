/// Optional. The type of annotation to be performed on this data. You must specify this field if you are using this InputConfig in an EvaluationJob.
enum GoogleCloudDatalabelingV1beta1InputConfigAnnotationType {
  annotationTypeUnspecified("ANNOTATION_TYPE_UNSPECIFIED"),
  imageClassificationAnnotation("IMAGE_CLASSIFICATION_ANNOTATION"),
  imageBoundingBoxAnnotation("IMAGE_BOUNDING_BOX_ANNOTATION"),
  imageOrientedBoundingBoxAnnotation("IMAGE_ORIENTED_BOUNDING_BOX_ANNOTATION"),
  imageBoundingPolyAnnotation("IMAGE_BOUNDING_POLY_ANNOTATION"),
  imagePolylineAnnotation("IMAGE_POLYLINE_ANNOTATION"),
  imageSegmentationAnnotation("IMAGE_SEGMENTATION_ANNOTATION"),
  videoShotsClassificationAnnotation("VIDEO_SHOTS_CLASSIFICATION_ANNOTATION"),
  videoObjectTrackingAnnotation("VIDEO_OBJECT_TRACKING_ANNOTATION"),
  videoObjectDetectionAnnotation("VIDEO_OBJECT_DETECTION_ANNOTATION"),
  videoEventAnnotation("VIDEO_EVENT_ANNOTATION"),
  textClassificationAnnotation("TEXT_CLASSIFICATION_ANNOTATION"),
  textEntityExtractionAnnotation("TEXT_ENTITY_EXTRACTION_ANNOTATION"),
  generalClassificationAnnotation("GENERAL_CLASSIFICATION_ANNOTATION");

  const GoogleCloudDatalabelingV1beta1InputConfigAnnotationType(this.wireValue);
  final String wireValue;

  static GoogleCloudDatalabelingV1beta1InputConfigAnnotationType fromValue(
    String value,
  ) {
    for (final item
        in GoogleCloudDatalabelingV1beta1InputConfigAnnotationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudDatalabelingV1beta1InputConfigAnnotationType value: $value',
    );
  }
}
