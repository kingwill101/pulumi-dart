// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the user assigned identity that is contained within the UserAssignedIdentities dictionary on ResourceIdentity
class UserAssignedResourceIdentityResponse {
  /// The principal id of user assigned identity.
  final pulumi.Input<String> principalId;
  /// The tenant id of user assigned identity.
  final pulumi.Input<String> tenantId;

  /// Creates a new [UserAssignedResourceIdentityResponse].
  /// [principalId] The principal id of user assigned identity.
  /// [tenantId] The tenant id of user assigned identity.
  const UserAssignedResourceIdentityResponse({
    required this.principalId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'tenantId': tenantId,
    };
  }

  factory UserAssignedResourceIdentityResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedResourceIdentityResponse(
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}

