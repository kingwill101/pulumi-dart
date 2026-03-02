// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_managed_identity_response.dart';

/// The workspace managed identity
class ManagedIdentityResponse {
  /// The principal ID of the workspace managed identity
  final pulumi.Input<String> principalId;
  /// The tenant ID of the workspace managed identity
  final pulumi.Input<String> tenantId;
  /// The type of managed identity for the workspace
  final pulumi.Input<String>? type;
  /// The user assigned managed identities.
  final pulumi.Input<Map<String, UserAssignedManagedIdentityResponse>>? userAssignedIdentities;

  /// Creates a new [ManagedIdentityResponse].
  /// [principalId] The principal ID of the workspace managed identity
  /// [tenantId] The tenant ID of the workspace managed identity
  /// [type] The type of managed identity for the workspace
  /// [userAssignedIdentities] The user assigned managed identities.
  ManagedIdentityResponse({
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
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<Map<String, UserAssignedManagedIdentityResponse>, Map<String, Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeMapValues<UserAssignedManagedIdentityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIdentityResponse(
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (pulumi.Input.decodeMapValues<UserAssignedManagedIdentityResponse>(map['userAssignedIdentities'], (value) => UserAssignedManagedIdentityResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

