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
    required pulumi.Output<String> location,
    required pulumi.Output<String> notebookRuntimeTemplateId,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      notebookRuntimeTemplateId = pulumi.Input.asInput<String>(notebookRuntimeTemplateId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'notebookRuntimeTemplateId': notebookRuntimeTemplateId,
      'project': ?project,
    };
  }

  factory GetNotebookRuntimeTemplateAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetNotebookRuntimeTemplateAiplatformV1beta1Args(
      location: pulumi.Output.create<String>(map['location'] as String),
      notebookRuntimeTemplateId: pulumi.Output.create<String>(map['notebookRuntimeTemplateId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

