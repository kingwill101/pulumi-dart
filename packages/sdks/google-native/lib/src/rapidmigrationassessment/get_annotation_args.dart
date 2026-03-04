// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rapidmigrationassessment_v1_get_annotation_args_doc}
/// Arguments for getAnnotation.
/// {@endtemplate}
/// {@macro pulumi_rapidmigrationassessment_v1_get_annotation_args_doc}
class GetAnnotationArgs {
  final pulumi.Input<String> annotationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAnnotationArgs].
  /// [annotationId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetAnnotationArgs({
    required this.annotationId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationId': annotationId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetAnnotationArgs.fromMap(Map<String, dynamic> map) {
    return GetAnnotationArgs(
      annotationId: pulumi.Input.fromValue(map['annotationId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
