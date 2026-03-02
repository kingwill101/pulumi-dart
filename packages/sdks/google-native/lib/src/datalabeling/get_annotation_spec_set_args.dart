// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datalabeling_v1beta1_get_annotation_spec_set_args_doc}
/// Arguments for getAnnotationSpecSet.
/// {@endtemplate}
/// {@macro pulumi_datalabeling_v1beta1_get_annotation_spec_set_args_doc}
class GetAnnotationSpecSetArgs {
  final pulumi.Input<String> annotationSpecSetId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAnnotationSpecSetArgs].
  /// [annotationSpecSetId] Required.
  /// [project] Optional.
  GetAnnotationSpecSetArgs({
    required this.annotationSpecSetId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationSpecSetId': annotationSpecSetId,
      'project': ?project,
    };
  }

  factory GetAnnotationSpecSetArgs.fromMap(Map<String, dynamic> map) {
    return GetAnnotationSpecSetArgs(
      annotationSpecSetId: (map['annotationSpecSetId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

