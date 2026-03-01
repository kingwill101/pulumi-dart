// ignore_for_file: unused_element, unnecessary_cast


/// Specifies how to store annotations during de-identification operation.
class AnnotationConfig {
  /// The name of the annotation store, in the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/annotationStores/{annotation_store_id}`). * The destination annotation store must be in the same project as the source data. De-identifying data across multiple projects is not supported. * The destination annotation store must exist when using DeidentifyDicomStore or DeidentifyFhirStore. DeidentifyDataset automatically creates the destination annotation store.
  final String? annotationStoreName;
  /// If set to true, the sensitive texts are included in SensitiveTextAnnotation of Annotation.
  final bool? storeQuote;

  /// Creates a new [AnnotationConfig].
  /// [annotationStoreName] The name of the annotation store, in the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/annotationStores/{annotation_store_id}`). * The destination annotation store must be in the same project as the source data. De-identifying data across multiple projects is not supported. * The destination annotation store must exist when using DeidentifyDicomStore or DeidentifyFhirStore. DeidentifyDataset automatically creates the destination annotation store.
  /// [storeQuote] If set to true, the sensitive texts are included in SensitiveTextAnnotation of Annotation.
  AnnotationConfig({
    this.annotationStoreName,
    this.storeQuote,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationStoreName': ?annotationStoreName,
      'storeQuote': ?storeQuote,
    };
  }

  factory AnnotationConfig.fromMap(Map<String, dynamic> map) {
    return AnnotationConfig(
      annotationStoreName: map['annotationStoreName'] == null ? null : map['annotationStoreName'] as String,
      storeQuote: map['storeQuote'] == null ? null : map['storeQuote'] as bool,
    );
  }
}

