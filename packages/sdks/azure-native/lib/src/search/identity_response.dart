// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity_response.dart';

/// Details about the search service identity. A null value indicates that the search service has no identity assigned.
class IdentityResponse {
  /// The principal ID of the system-assigned identity of the search service.
  final String principalId;
  /// The tenant ID of the system-assigned identity of the search service.
  final String tenantId;
  /// The type of identity used for the resource. The type 'SystemAssigned, UserAssigned' includes both an identity created by the system and a set of user assigned identities. The type 'None' will remove all identities from the service.
  final String type;
  /// The list of user identities associated with the resource. The user identity dictionary key references will be ARM resource IDs in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  final Map<String, UserAssignedIdentityResponse>? userAssignedIdentities;

  /// Creates a new [IdentityResponse].
  /// [principalId] The principal ID of the system-assigned identity of the search service.
  /// [tenantId] The tenant ID of the system-assigned identity of the search service.
  /// [type] The type of identity used for the resource. The type 'SystemAssigned, UserAssigned' includes both an identity created by the system and a set of user assigned identities. The type 'None' will remove all identities from the service.
  /// [userAssignedIdentities] The list of user identities associated with the resource. The user identity dictionary key references will be ARM resource IDs in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  IdentityResponse({
    required this.principalId,
    required this.tenantId,
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'tenantId': tenantId,
      'type': type,
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeMapValues<UserAssignedIdentityResponse, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
    };
  }

  factory IdentityResponse.fromMap(Map<String, dynamic> map) {
    return IdentityResponse(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<UserAssignedIdentityResponse>(map['userAssignedIdentities'], (value) => UserAssignedIdentityResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

