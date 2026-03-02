// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'annotation_source.dart';
import 'image_annotation.dart';
import 'resource_annotation.dart';
import 'sensitive_text_annotation.dart';

/// {@template pulumi_healthcare_v1beta1_annotation_args_doc}
/// The set of arguments for Annotation.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1beta1_annotation_args_doc}
class AnnotationArgs {
  /// Details of the source.
  final pulumi.Input<AnnotationSource>? annotationSource;
  final pulumi.Input<String> annotationStoreId;
  /// Additional information for this annotation record, such as annotator and verifier information or study campaign.
  final pulumi.Input<Map<String, String>>? customData;
  final pulumi.Input<String> datasetId;
  /// Annotations for images. For example, bounding polygons.
  final pulumi.Input<ImageAnnotation>? imageAnnotation;
  final pulumi.Input<String>? location;
  /// Resource name of the Annotation, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/annotationStores/{annotation_store_id}/annotations/{annotation_id}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Annotations for resource. For example, classification tags.
  final pulumi.Input<ResourceAnnotation>? resourceAnnotation;
  /// Annotations for sensitive texts. For example, a range that describes the location of sensitive text.
  final pulumi.Input<SensitiveTextAnnotation>? textAnnotation;

  /// Creates a new [AnnotationArgs].
  /// [annotationSource] Details of the source.
  /// [annotationStoreId] Required.
  /// [customData] Additional information for this annotation record, such as annotator and verifier information or study campaign.
  /// [datasetId] Required.
  /// [imageAnnotation] Annotations for images. For example, bounding polygons.
  /// [location] Optional.
  /// [name] Resource name of the Annotation, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/annotationStores/{annotation_store_id}/annotations/{annotation_id}`.
  /// [project] Optional.
  /// [resourceAnnotation] Annotations for resource. For example, classification tags.
  /// [textAnnotation] Annotations for sensitive texts. For example, a range that describes the location of sensitive text.
  AnnotationArgs({
    this.annotationSource,
    required this.annotationStoreId,
    this.customData,
    required this.datasetId,
    this.imageAnnotation,
    this.location,
    this.name,
    this.project,
    this.resourceAnnotation,
    this.textAnnotation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationSource': ?pulumi.Input.mapOptionalInputValue<AnnotationSource, Map<String, dynamic>>(annotationSource, (value) => value.toMap()),
      'annotationStoreId': annotationStoreId,
      'customData': ?customData,
      'datasetId': datasetId,
      'imageAnnotation': ?pulumi.Input.mapOptionalInputValue<ImageAnnotation, Map<String, dynamic>>(imageAnnotation, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'resourceAnnotation': ?pulumi.Input.mapOptionalInputValue<ResourceAnnotation, Map<String, dynamic>>(resourceAnnotation, (value) => value.toMap()),
      'textAnnotation': ?pulumi.Input.mapOptionalInputValue<SensitiveTextAnnotation, Map<String, dynamic>>(textAnnotation, (value) => value.toMap()),
    };
  }

  factory AnnotationArgs.fromMap(Map<String, dynamic> map) {
    return AnnotationArgs(
      annotationSource: map['annotationSource'] == null ? null : (AnnotationSource.fromMap((map['annotationSource']! as Map).cast<String, dynamic>())).input(),
      annotationStoreId: (map['annotationStoreId'] as String).input(),
      customData: map['customData'] == null ? null : ((map['customData']! as Map).cast<String, String>()).input(),
      datasetId: (map['datasetId'] as String).input(),
      imageAnnotation: map['imageAnnotation'] == null ? null : (ImageAnnotation.fromMap((map['imageAnnotation']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      resourceAnnotation: map['resourceAnnotation'] == null ? null : (ResourceAnnotation.fromMap((map['resourceAnnotation']! as Map).cast<String, dynamic>())).input(),
      textAnnotation: map['textAnnotation'] == null ? null : (SensitiveTextAnnotation.fromMap((map['textAnnotation']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

