// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_v1_get_organization_source_iam_policy_args_doc}
/// Arguments for getOrganizationSourceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v1_get_organization_source_iam_policy_args_doc}
class GetOrganizationSourceIamPolicyArgs {
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> sourceId;

  /// Creates a new [GetOrganizationSourceIamPolicyArgs].
  /// [organizationId] Required.
  /// [sourceId] Required.
  const GetOrganizationSourceIamPolicyArgs({
    required this.organizationId,
    required this.sourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationId': organizationId,
      'sourceId': sourceId,
    };
  }

  factory GetOrganizationSourceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationSourceIamPolicyArgs(
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      sourceId: pulumi.Input.fromValue(map['sourceId'] as String),
    );
  }
}

