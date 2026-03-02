// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_identity_response.dart';

/// Azure Active Directory identity configuration for a resource.
class ManagedIdentityResponse {
  /// System Assigned Identity ObjectId.
  final pulumi.Input<String> principalId;
  /// The Azure Active Directory tenant id.
  final pulumi.Input<String> tenantId;
  /// The identity type
  final pulumi.Input<String>? type;
  /// The resource ids of the user assigned identities to use
  final pulumi.Input<Map<String, UserIdentityResponse>>? userAssignedIdentities;

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
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<Map<String, UserIdentityResponse>, Map<String, Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeMapValues<UserIdentityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIdentityResponse(
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (pulumi.Input.decodeMapValues<UserIdentityResponse>(map['userAssignedIdentities'], (value) => UserIdentityResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

