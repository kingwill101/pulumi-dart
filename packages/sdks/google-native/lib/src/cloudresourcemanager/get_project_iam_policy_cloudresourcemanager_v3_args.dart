// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudresourcemanager_v3_get_project_iam_policy_cloudresourcemanager_v3_args_doc}
/// Arguments for getProjectIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudresourcemanager_v3_get_project_iam_policy_cloudresourcemanager_v3_args_doc}
class GetProjectIamPolicyCloudresourcemanagerV3Args {
  final pulumi.Input<String>? project;

  /// Creates a new [GetProjectIamPolicyCloudresourcemanagerV3Args].
  /// [project] Optional.
  GetProjectIamPolicyCloudresourcemanagerV3Args({
    pulumi.Output<String>? project,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
    };
  }

  factory GetProjectIamPolicyCloudresourcemanagerV3Args.fromMap(Map<String, dynamic> map) {
    return GetProjectIamPolicyCloudresourcemanagerV3Args(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

