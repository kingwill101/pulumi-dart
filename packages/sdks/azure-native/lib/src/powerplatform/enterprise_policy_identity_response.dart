// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The identity of the EnterprisePolicy.
class EnterprisePolicyIdentityResponse {
  /// The principal id of EnterprisePolicy identity.
  final pulumi.Input<String> systemAssignedIdentityPrincipalId;
  /// The tenant id associated with the EnterprisePolicy.
  final pulumi.Input<String> tenantId;
  /// The type of identity used for the EnterprisePolicy. Currently, the only supported type is 'SystemAssigned', which implicitly creates an identity.
  final pulumi.Input<String?>? type;

  /// Creates a new [EnterprisePolicyIdentityResponse].
  /// [systemAssignedIdentityPrincipalId] The principal id of EnterprisePolicy identity.
  /// [tenantId] The tenant id associated with the EnterprisePolicy.
  /// [type] The type of identity used for the EnterprisePolicy. Currently, the only supported type is 'SystemAssigned', which implicitly creates an identity.
  const EnterprisePolicyIdentityResponse({
    required this.systemAssignedIdentityPrincipalId,
    required this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'systemAssignedIdentityPrincipalId': systemAssignedIdentityPrincipalId,
      'tenantId': tenantId,
      'type': ?type,
    };
  }

  factory EnterprisePolicyIdentityResponse.fromMap(Map<String, dynamic> map) {
    return EnterprisePolicyIdentityResponse(
      systemAssignedIdentityPrincipalId: pulumi.Input.fromValue(map['systemAssignedIdentityPrincipalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
