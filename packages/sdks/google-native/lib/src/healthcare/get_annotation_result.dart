// ignore_for_file: unused_element, unnecessary_cast

import 'annotation_source_response.dart';
import 'image_annotation_response.dart';
import 'resource_annotation_response.dart';
import 'sensitive_text_annotation_response.dart';

/// Result data returned by getAnnotation.
class GetAnnotationResult {
  /// Details of the source.
  final AnnotationSourceResponse? annotationSource;
  /// Additional information for this annotation record, such as annotator and verifier information or study campaign.
  final Map<String, String>? customData;
  /// Annotations for images. For example, bounding polygons.
  final ImageAnnotationResponse? imageAnnotation;
  /// Resource name of the Annotation, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/annotationStores/{annotation_store_id}/annotations/{annotation_id}`.
  final String? name;
  /// Annotations for resource. For example, classification tags.
  final ResourceAnnotationResponse? resourceAnnotation;
  /// Annotations for sensitive texts. For example, a range that describes the location of sensitive text.
  final SensitiveTextAnnotationResponse? textAnnotation;

  /// Creates a new [GetAnnotationResult].
  /// [annotationSource] Details of the source.
  /// [customData] Additional information for this annotation record, such as annotator and verifier information or study campaign.
  /// [imageAnnotation] Annotations for images. For example, bounding polygons.
  /// [name] Resource name of the Annotation, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/annotationStores/{annotation_store_id}/annotations/{annotation_id}`.
  /// [resourceAnnotation] Annotations for resource. For example, classification tags.
  /// [textAnnotation] Annotations for sensitive texts. For example, a range that describes the location of sensitive text.
  const GetAnnotationResult({
    this.annotationSource,
    this.customData,
    this.imageAnnotation,
    this.name,
    this.resourceAnnotation,
    this.textAnnotation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationSource': ?annotationSource?.toMap(),
      'customData': ?customData,
      'imageAnnotation': ?imageAnnotation?.toMap(),
      'name': ?name,
      'resourceAnnotation': ?resourceAnnotation?.toMap(),
      'textAnnotation': ?textAnnotation?.toMap(),
    };
  }

  factory GetAnnotationResult.fromMap(Map<String, dynamic> map) {
    return GetAnnotationResult(
      annotationSource: (() { final guardedValue = map['annotationSource']; if (guardedValue == null) return null; return AnnotationSourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      customData: (() { final guardedValue = map['customData']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      imageAnnotation: (() { final guardedValue = map['imageAnnotation']; if (guardedValue == null) return null; return ImageAnnotationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceAnnotation: (() { final guardedValue = map['resourceAnnotation']; if (guardedValue == null) return null; return ResourceAnnotationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      textAnnotation: (() { final guardedValue = map['textAnnotation']; if (guardedValue == null) return null; return SensitiveTextAnnotationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
