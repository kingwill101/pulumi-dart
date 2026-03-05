// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudresourcemanager_v1beta1_get_project_iam_policy_cloudresourcemanager_v1beta1_args_doc}
/// Arguments for getProjectIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudresourcemanager_v1beta1_get_project_iam_policy_cloudresourcemanager_v1beta1_args_doc}
class GetProjectIamPolicyCloudresourcemanagerV1beta1Args {
  final pulumi.Input<String> resource;

  /// Creates a new [GetProjectIamPolicyCloudresourcemanagerV1beta1Args].
  /// [resource] Required.
  GetProjectIamPolicyCloudresourcemanagerV1beta1Args({
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': resource,
    };
  }

  factory GetProjectIamPolicyCloudresourcemanagerV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetProjectIamPolicyCloudresourcemanagerV1beta1Args(
      resource: pulumi.Input.fromValue(map['resource'] as String),
    );
  }
}

