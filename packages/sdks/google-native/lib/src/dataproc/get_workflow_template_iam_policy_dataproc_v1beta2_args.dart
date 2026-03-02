// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1beta2_get_workflow_template_iam_policy_dataproc_v1beta2_args_doc}
/// Arguments for getWorkflowTemplateIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1beta2_get_workflow_template_iam_policy_dataproc_v1beta2_args_doc}
class GetWorkflowTemplateIamPolicyDataprocV1beta2Args {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> workflowTemplateId;

  /// Creates a new [GetWorkflowTemplateIamPolicyDataprocV1beta2Args].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [workflowTemplateId] Required.
  GetWorkflowTemplateIamPolicyDataprocV1beta2Args({
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.workflowTemplateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'workflowTemplateId': workflowTemplateId,
    };
  }

  factory GetWorkflowTemplateIamPolicyDataprocV1beta2Args.fromMap(Map<String, dynamic> map) {
    return GetWorkflowTemplateIamPolicyDataprocV1beta2Args(
      location: (map['location'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      workflowTemplateId: (map['workflowTemplateId'] as String).input(),
    );
  }
}

