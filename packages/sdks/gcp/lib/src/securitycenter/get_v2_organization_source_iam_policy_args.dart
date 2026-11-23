// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_get_v2_organization_source_iam_policy_get_v2_organization_source_iam_policy_args_doc}
/// Arguments for getV2OrganizationSourceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_get_v2_organization_source_iam_policy_get_v2_organization_source_iam_policy_args_doc}
class GetV2OrganizationSourceIamPolicyArgs {
  /// The organization whose Cloud Security Command Center the Source
  /// lives in.
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> organization;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> source;

  /// Creates a new [GetV2OrganizationSourceIamPolicyArgs].
  /// [organization] The organization whose Cloud Security Command Center the Source
  /// [source] Used to find the parent resource to bind the IAM policy to
  const GetV2OrganizationSourceIamPolicyArgs({
    required this.organization,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organization': organization,
      'source': source,
    };
  }

  factory GetV2OrganizationSourceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetV2OrganizationSourceIamPolicyArgs(
      organization: pulumi.Input.fromValue(map['organization'] as String),
      source: pulumi.Input.fromValue(map['source'] as String),
    );
  }
}
