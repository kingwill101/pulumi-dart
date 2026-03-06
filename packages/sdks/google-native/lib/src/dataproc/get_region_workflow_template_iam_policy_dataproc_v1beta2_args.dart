// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1beta2_get_region_workflow_template_iam_policy_dataproc_v1beta2_args_doc}
/// Arguments for getRegionWorkflowTemplateIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1beta2_get_region_workflow_template_iam_policy_dataproc_v1beta2_args_doc}
class GetRegionWorkflowTemplateIamPolicyDataprocV1beta2Args {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> regionId;
  final pulumi.Input<String> workflowTemplateId;

  /// Creates a new [GetRegionWorkflowTemplateIamPolicyDataprocV1beta2Args].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [regionId] Required.
  /// [workflowTemplateId] Required.
  const GetRegionWorkflowTemplateIamPolicyDataprocV1beta2Args({
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.regionId,
    required this.workflowTemplateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'regionId': regionId,
      'workflowTemplateId': workflowTemplateId,
    };
  }

  factory GetRegionWorkflowTemplateIamPolicyDataprocV1beta2Args.fromMap(Map<String, dynamic> map) {
    return GetRegionWorkflowTemplateIamPolicyDataprocV1beta2Args(
      optionsRequestedPolicyVersion: (() { final guardedValue = map['optionsRequestedPolicyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      workflowTemplateId: pulumi.Input.fromValue(map['workflowTemplateId'] as String),
    );
  }
}

