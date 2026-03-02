// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1beta1_get_annotation_args_doc}
/// Arguments for getAnnotation.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1beta1_get_annotation_args_doc}
class GetAnnotationArgs {
  final pulumi.Input<String> annotationId;
  final pulumi.Input<String> annotationStoreId;
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAnnotationArgs].
  /// [annotationId] Required.
  /// [annotationStoreId] Required.
  /// [datasetId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetAnnotationArgs({
    required this.annotationId,
    required this.annotationStoreId,
    required this.datasetId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationId': annotationId,
      'annotationStoreId': annotationStoreId,
      'datasetId': datasetId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetAnnotationArgs.fromMap(Map<String, dynamic> map) {
    return GetAnnotationArgs(
      annotationId: (map['annotationId'] as String).input(),
      annotationStoreId: (map['annotationStoreId'] as String).input(),
      datasetId: (map['datasetId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

