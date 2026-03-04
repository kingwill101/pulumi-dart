// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudresourcemanager_v1_get_organization_iam_policy_args_doc}
/// Arguments for getOrganizationIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudresourcemanager_v1_get_organization_iam_policy_args_doc}
class GetOrganizationIamPolicyArgs {
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetOrganizationIamPolicyArgs].
  /// [organizationId] Required.
  GetOrganizationIamPolicyArgs({required this.organizationId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'organizationId': organizationId};
  }

  factory GetOrganizationIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationIamPolicyArgs(
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}
