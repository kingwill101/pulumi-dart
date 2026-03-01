// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_managed_identity_response.dart';

/// The workspace managed identity
class ManagedIdentityResponse {
  /// The principal ID of the workspace managed identity
  final String principalId;
  /// The tenant ID of the workspace managed identity
  final String tenantId;
  /// The type of managed identity for the workspace
  final String? type;
  /// The user assigned managed identities.
  final Map<String, UserAssignedManagedIdentityResponse>? userAssignedIdentities;

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
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeMapValues<UserAssignedManagedIdentityResponse, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
    };
  }

  factory ManagedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIdentityResponse(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<UserAssignedManagedIdentityResponse>(map['userAssignedIdentities'], (value) => UserAssignedManagedIdentityResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

