// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_identity_response.dart';

/// Azure Active Directory identity configuration for a resource.
class ResourceIdentityResponse {
  /// The Azure Active Directory principal id.
  final String principalId;
  /// The Azure Active Directory tenant id.
  final String tenantId;
  /// The identity type. Set this to 'SystemAssigned' in order to automatically create and assign an Azure Active Directory principal for the resource.
  final String? type;
  /// The resource ids of the user assigned identities to use
  final Map<String, UserIdentityResponse>? userAssignedIdentities;

  /// Creates a new [ResourceIdentityResponse].
  /// [principalId] The Azure Active Directory principal id.
  /// [tenantId] The Azure Active Directory tenant id.
  /// [type] The identity type. Set this to 'SystemAssigned' in order to automatically create and assign an Azure Active Directory principal for the resource.
  /// [userAssignedIdentities] The resource ids of the user assigned identities to use
  ResourceIdentityResponse({
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

  factory ResourceIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ResourceIdentityResponse(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<UserIdentityResponse>(map['userAssignedIdentities'], (value) => UserIdentityResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

