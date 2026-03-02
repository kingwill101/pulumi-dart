// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rbac_policy_response.dart';

/// [Deprecated] Authorization configuration provides service-level and method-level access control for a service. control for a service.
class AuthorizationConfigResponse {
  /// List of RbacPolicies.
  final pulumi.Input<List<RbacPolicyResponse>> policies;

  /// Creates a new [AuthorizationConfigResponse].
  /// [policies] List of RbacPolicies.
  AuthorizationConfigResponse({
    required this.policies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policies': pulumi.Input.mapInputValue<List<RbacPolicyResponse>, List<Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeList<RbacPolicyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AuthorizationConfigResponse.fromMap(Map<String, dynamic> map) {
    return AuthorizationConfigResponse(
      policies: (pulumi.Input.decodeList<RbacPolicyResponse>(map['policies'], (value) => RbacPolicyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

