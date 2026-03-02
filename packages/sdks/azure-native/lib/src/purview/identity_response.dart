// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity_response.dart';

/// The Managed Identity of the resource
class IdentityResponse {
  /// Service principal object Id
  final pulumi.Input<String> principalId;
  /// Tenant Id
  final pulumi.Input<String> tenantId;
  /// Identity Type
  final pulumi.Input<String>? type;
  /// User Assigned Identities
  final pulumi.Input<Map<String, UserAssignedIdentityResponse>>? userAssignedIdentities;

  /// Creates a new [IdentityResponse].
  /// [principalId] Service principal object Id
  /// [tenantId] Tenant Id
  /// [type] Identity Type
  /// [userAssignedIdentities] User Assigned Identities
  IdentityResponse({
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

  factory IdentityResponse.fromMap(Map<String, dynamic> map) {
    return IdentityResponse(
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (pulumi.Input.decodeMapValues<UserAssignedIdentityResponse>(map['userAssignedIdentities']!, (value) => UserAssignedIdentityResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

