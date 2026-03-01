// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1_get_workflow_template_args_doc}
/// Arguments for getWorkflowTemplate.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_get_workflow_template_args_doc}
class GetWorkflowTemplateArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<int>? version;
  final pulumi.Input<String> workflowTemplateId;

  /// Creates a new [GetWorkflowTemplateArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [version] Optional.
  /// [workflowTemplateId] Required.
  GetWorkflowTemplateArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    pulumi.Output<int>? version,
    required pulumi.Output<String> workflowTemplateId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      version = pulumi.Input.asOptionalInput<int>(version),
      workflowTemplateId = pulumi.Input.asInput<String>(workflowTemplateId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'version': ?version,
      'workflowTemplateId': workflowTemplateId,
    };
  }

  factory GetWorkflowTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkflowTemplateArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<int>(map['version'] as int),
      workflowTemplateId: pulumi.Output.create<String>(map['workflowTemplateId'] as String),
    );
  }
}

