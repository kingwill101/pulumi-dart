// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1beta2_get_workflow_template_dataproc_v1beta2_args_doc}
/// Arguments for getWorkflowTemplate.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1beta2_get_workflow_template_dataproc_v1beta2_args_doc}
class GetWorkflowTemplateDataprocV1beta2Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<int>? version;
  final pulumi.Input<String> workflowTemplateId;

  /// Creates a new [GetWorkflowTemplateDataprocV1beta2Args].
  /// [location] Required.
  /// [project] Optional.
  /// [version] Optional.
  /// [workflowTemplateId] Required.
  const GetWorkflowTemplateDataprocV1beta2Args({
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

  factory GetWorkflowTemplateDataprocV1beta2Args.fromMap(Map<String, dynamic> map) {
    return GetWorkflowTemplateDataprocV1beta2Args(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      workflowTemplateId: pulumi.Input.fromValue(map['workflowTemplateId'] as String),
    );
  }
}
