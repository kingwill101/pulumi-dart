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
    required this.location,
    this.project,
    this.version,
    required this.workflowTemplateId,
  });

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
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as int).input(),
      workflowTemplateId: (map['workflowTemplateId'] as String).input(),
    );
  }
}

