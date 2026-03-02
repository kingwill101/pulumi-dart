// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity_response.dart';

/// Describes the managed identities for an Azure resource.
class ManagedIdentityResponse {
  /// The principal id of the managed identity. This property will only be provided for a system assigned identity.
  final pulumi.Input<String> principalId;
  /// The tenant id of the managed identity. This property will only be provided for a system assigned identity.
  final pulumi.Input<String> tenantId;
  /// The type of managed identity for the resource.
  final pulumi.Input<String>? type;
  /// The list of user identities associated with the resource. The user identity dictionary key references will be ARM resource ids in the form:
  /// '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  final pulumi.Input<Map<String, UserAssignedIdentityResponse>>? userAssignedIdentities;

  /// Creates a new [ManagedIdentityResponse].
  /// [principalId] The principal id of the managed identity. This property will only be provided for a system assigned identity.
  /// [tenantId] The tenant id of the managed identity. This property will only be provided for a system assigned identity.
  /// [type] The type of managed identity for the resource.
  /// [userAssignedIdentities] The list of user identities associated with the resource. The user identity dictionary key references will be ARM resource ids in the form:
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
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<Map<String, UserAssignedIdentityResponse>, Map<String, Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeMapValues<UserAssignedIdentityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIdentityResponse(
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (pulumi.Input.decodeMapValues<UserAssignedIdentityResponse>(map['userAssignedIdentities']!, (value) => UserAssignedIdentityResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

