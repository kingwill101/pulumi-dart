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
    required this.location,
    required this.notebookRuntimeTemplateId,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

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
      location: (map['location'] as String).input(),
      notebookRuntimeTemplateId: (map['notebookRuntimeTemplateId'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

