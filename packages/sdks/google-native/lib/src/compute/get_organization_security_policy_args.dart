// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_organization_security_policy_args_doc}
/// Arguments for getOrganizationSecurityPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_organization_security_policy_args_doc}
class GetOrganizationSecurityPolicyArgs {
  final pulumi.Input<String> securityPolicy;

  /// Creates a new [GetOrganizationSecurityPolicyArgs].
  /// [securityPolicy] Required.
  const GetOrganizationSecurityPolicyArgs({
    required this.securityPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityPolicy': securityPolicy,
    };
  }

  factory GetOrganizationSecurityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationSecurityPolicyArgs(
      securityPolicy: pulumi.Input.fromValue(map['securityPolicy'] as String),
    );
  }
}
