// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_notebook_runtime_template_iam_policy_args_doc}
/// Arguments for getNotebookRuntimeTemplateIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_notebook_runtime_template_iam_policy_args_doc}
class GetNotebookRuntimeTemplateIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> notebookRuntimeTemplateId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetNotebookRuntimeTemplateIamPolicyArgs].
  /// [location] Required.
  /// [notebookRuntimeTemplateId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetNotebookRuntimeTemplateIamPolicyArgs({
    required pulumi.Output<String> location,
    required pulumi.Output<String> notebookRuntimeTemplateId,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      notebookRuntimeTemplateId = pulumi.Input.asInput<String>(notebookRuntimeTemplateId),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'notebookRuntimeTemplateId': notebookRuntimeTemplateId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetNotebookRuntimeTemplateIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetNotebookRuntimeTemplateIamPolicyArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      notebookRuntimeTemplateId: pulumi.Output.create<String>(map['notebookRuntimeTemplateId'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

