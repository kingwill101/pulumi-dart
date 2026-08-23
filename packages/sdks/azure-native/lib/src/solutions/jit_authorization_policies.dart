// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The JIT authorization policies.
class JitAuthorizationPolicies {
  /// The the principal id that will be granted JIT access.
  final pulumi.Input<String> principalId;
  /// The role definition id that will be granted to the Principal.
  final pulumi.Input<String> roleDefinitionId;

  /// Creates a new [JitAuthorizationPolicies].
  /// [principalId] The the principal id that will be granted JIT access.
  /// [roleDefinitionId] The role definition id that will be granted to the Principal.
  const JitAuthorizationPolicies({
    required this.principalId,
    required this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'roleDefinitionId': roleDefinitionId,
    };
  }

  factory JitAuthorizationPolicies.fromMap(Map<String, dynamic> map) {
    return JitAuthorizationPolicies(
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      roleDefinitionId: pulumi.Input.fromValue(map['roleDefinitionId'] as String),
    );
  }
}
