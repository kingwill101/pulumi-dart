// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1_get_region_workflow_template_iam_policy_args_doc}
/// Arguments for getRegionWorkflowTemplateIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_get_region_workflow_template_iam_policy_args_doc}
class GetRegionWorkflowTemplateIamPolicyArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> regionId;
  final pulumi.Input<String> workflowTemplateId;

  /// Creates a new [GetRegionWorkflowTemplateIamPolicyArgs].
  /// [project] Optional.
  /// [regionId] Required.
  /// [workflowTemplateId] Required.
  const GetRegionWorkflowTemplateIamPolicyArgs({
    this.project,
    required this.regionId,
    required this.workflowTemplateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'regionId': regionId,
      'workflowTemplateId': workflowTemplateId,
    };
  }

  factory GetRegionWorkflowTemplateIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionWorkflowTemplateIamPolicyArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      workflowTemplateId: pulumi.Input.fromValue(map['workflowTemplateId'] as String),
    );
  }
}

