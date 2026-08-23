// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity_property_response.dart';

/// A class represent managed identities used for request and response
class ManagedIdentityResponse {
  /// Get the principal id for the system assigned identity.
  /// Only be used in response.
  final pulumi.Input<String> principalId;
  /// Get the tenant id for the system assigned identity.
  /// Only be used in response
  final pulumi.Input<String> tenantId;
  /// Represents the identity type: systemAssigned, userAssigned, None
  final pulumi.Input<String>? type;
  /// Get or set the user assigned identities
  final pulumi.Input<Map<String, UserAssignedIdentityPropertyResponse>>? userAssignedIdentities;

  /// Creates a new [ManagedIdentityResponse].
  /// [principalId] Get the principal id for the system assigned identity.
  /// [tenantId] Get the tenant id for the system assigned identity.
  /// [type] Represents the identity type: systemAssigned, userAssigned, None
  /// [userAssignedIdentities] Get or set the user assigned identities
  const ManagedIdentityResponse({
    required this.principalId,
    required this.tenantId,
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'tenantId': tenantId,
      'type': ?type,
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<Map<String, UserAssignedIdentityPropertyResponse>, Map<String, Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeMapValues<UserAssignedIdentityPropertyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIdentityResponse(
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<UserAssignedIdentityPropertyResponse>(guardedValue, (value) => UserAssignedIdentityPropertyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
