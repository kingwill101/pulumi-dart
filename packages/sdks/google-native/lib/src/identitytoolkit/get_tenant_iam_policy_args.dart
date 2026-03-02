// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identitytoolkit_v2_get_tenant_iam_policy_args_doc}
/// Arguments for getTenantIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_identitytoolkit_v2_get_tenant_iam_policy_args_doc}
class GetTenantIamPolicyArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tenantId;

  /// Creates a new [GetTenantIamPolicyArgs].
  /// [project] Optional.
  /// [tenantId] Required.
  GetTenantIamPolicyArgs({
    this.project,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'tenantId': tenantId,
    };
  }

  factory GetTenantIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTenantIamPolicyArgs(
      project: map['project'] == null ? null : (map['project'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
    );
  }
}

