// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies how to store annotations during de-identification operation.
class AnnotationConfigResponse {
  /// The name of the annotation store, in the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/annotationStores/{annotation_store_id}`). * The destination annotation store must be in the same project as the source data. De-identifying data across multiple projects is not supported. * The destination annotation store must exist when using DeidentifyDicomStore or DeidentifyFhirStore. DeidentifyDataset automatically creates the destination annotation store.
  final pulumi.Input<String> annotationStoreName;
  /// If set to true, the sensitive texts are included in SensitiveTextAnnotation of Annotation.
  final pulumi.Input<bool> storeQuote;

  /// Creates a new [AnnotationConfigResponse].
  /// [annotationStoreName] The name of the annotation store, in the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/annotationStores/{annotation_store_id}`). * The destination annotation store must be in the same project as the source data. De-identifying data across multiple projects is not supported. * The destination annotation store must exist when using DeidentifyDicomStore or DeidentifyFhirStore. DeidentifyDataset automatically creates the destination annotation store.
  /// [storeQuote] If set to true, the sensitive texts are included in SensitiveTextAnnotation of Annotation.
  AnnotationConfigResponse({
    required this.annotationStoreName,
    required this.storeQuote,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationStoreName': annotationStoreName,
      'storeQuote': storeQuote,
    };
  }

  factory AnnotationConfigResponse.fromMap(Map<String, dynamic> map) {
    return AnnotationConfigResponse(
      annotationStoreName: pulumi.Input.fromValue(map['annotationStoreName'] as String),
      storeQuote: pulumi.Input.fromValue(map['storeQuote'] as bool),
    );
  }
}

