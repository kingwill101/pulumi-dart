// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudresourcemanager_v1beta1_get_organization_iam_policy_cloudresourcemanager_v1beta1_args_doc}
/// Arguments for getOrganizationIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudresourcemanager_v1beta1_get_organization_iam_policy_cloudresourcemanager_v1beta1_args_doc}
class GetOrganizationIamPolicyCloudresourcemanagerV1beta1Args {
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetOrganizationIamPolicyCloudresourcemanagerV1beta1Args].
  /// [organizationId] Required.
  GetOrganizationIamPolicyCloudresourcemanagerV1beta1Args({
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationId': organizationId,
    };
  }

  factory GetOrganizationIamPolicyCloudresourcemanagerV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetOrganizationIamPolicyCloudresourcemanagerV1beta1Args(
      organizationId: (map['organizationId'] as String).input(),
    );
  }
}

