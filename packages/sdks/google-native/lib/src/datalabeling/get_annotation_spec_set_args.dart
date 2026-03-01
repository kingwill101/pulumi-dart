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
    required pulumi.Output<String> annotationSpecSetId,
    pulumi.Output<String>? project,
  }) :
      annotationSpecSetId = pulumi.Input.asInput<String>(annotationSpecSetId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationSpecSetId': annotationSpecSetId,
      'project': ?project,
    };
  }

  factory GetAnnotationSpecSetArgs.fromMap(Map<String, dynamic> map) {
    return GetAnnotationSpecSetArgs(
      annotationSpecSetId: pulumi.Output.create<String>(map['annotationSpecSetId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

