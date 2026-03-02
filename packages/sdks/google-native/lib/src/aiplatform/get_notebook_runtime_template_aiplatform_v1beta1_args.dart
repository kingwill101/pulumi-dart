// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_notebook_runtime_template_aiplatform_v1beta1_args_doc}
/// Arguments for getNotebookRuntimeTemplate.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_notebook_runtime_template_aiplatform_v1beta1_args_doc}
class GetNotebookRuntimeTemplateAiplatformV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> notebookRuntimeTemplateId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNotebookRuntimeTemplateAiplatformV1beta1Args].
  /// [location] Required.
  /// [notebookRuntimeTemplateId] Required.
  /// [project] Optional.
  GetNotebookRuntimeTemplateAiplatformV1beta1Args({
    required this.location,
    required this.notebookRuntimeTemplateId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'notebookRuntimeTemplateId': notebookRuntimeTemplateId,
      'project': ?project,
    };
  }

  factory GetNotebookRuntimeTemplateAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetNotebookRuntimeTemplateAiplatformV1beta1Args(
      location: (map['location'] as String).input(),
      notebookRuntimeTemplateId: (map['notebookRuntimeTemplateId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

