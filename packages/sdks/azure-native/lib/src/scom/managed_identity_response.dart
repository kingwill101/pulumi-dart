// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_identity_response.dart';

/// Azure Active Directory identity configuration for a resource.
class ManagedIdentityResponse {
  /// System Assigned Identity ObjectId.
  final String principalId;
  /// The Azure Active Directory tenant id.
  final String tenantId;
  /// The identity type
  final String? type;
  /// The resource ids of the user assigned identities to use
  final Map<String, UserIdentityResponse>? userAssignedIdentities;

  /// Creates a new [ManagedIdentityResponse].
  /// [principalId] System Assigned Identity ObjectId.
  /// [tenantId] The Azure Active Directory tenant id.
  /// [type] The identity type
  /// [userAssignedIdentities] The resource ids of the user assigned identities to use
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
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeMapValues<UserIdentityResponse, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
    };
  }

  factory ManagedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIdentityResponse(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<UserIdentityResponse>(map['userAssignedIdentities'], (value) => UserIdentityResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

