// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudresourcemanager_v3_get_organization_iam_policy_cloudresourcemanager_v3_args_doc}
/// Arguments for getOrganizationIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudresourcemanager_v3_get_organization_iam_policy_cloudresourcemanager_v3_args_doc}
class GetOrganizationIamPolicyCloudresourcemanagerV3Args {
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetOrganizationIamPolicyCloudresourcemanagerV3Args].
  /// [organizationId] Required.
  GetOrganizationIamPolicyCloudresourcemanagerV3Args({
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationId': organizationId,
    };
  }

  factory GetOrganizationIamPolicyCloudresourcemanagerV3Args.fromMap(Map<String, dynamic> map) {
    return GetOrganizationIamPolicyCloudresourcemanagerV3Args(
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}

