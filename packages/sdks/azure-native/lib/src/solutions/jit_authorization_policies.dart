// ignore_for_file: unused_element, unnecessary_cast


/// The JIT authorization policies.
class JitAuthorizationPolicies {
  /// The the principal id that will be granted JIT access.
  final String principalId;
  /// The role definition id that will be granted to the Principal.
  final String roleDefinitionId;

  /// Creates a new [JitAuthorizationPolicies].
  /// [principalId] The the principal id that will be granted JIT access.
  /// [roleDefinitionId] The role definition id that will be granted to the Principal.
  JitAuthorizationPolicies({
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
      principalId: map['principalId'] as String,
      roleDefinitionId: map['roleDefinitionId'] as String,
    );
  }
}

