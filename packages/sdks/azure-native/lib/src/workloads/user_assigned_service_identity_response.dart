// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity_response.dart';

/// Managed service identity (user assigned identities)
class UserAssignedServiceIdentityResponse {
  /// Type of manage identity
  final String type;
  /// User assigned identities dictionary
  final Map<String, UserAssignedIdentityResponse>? userAssignedIdentities;

  /// Creates a new [UserAssignedServiceIdentityResponse].
  /// [type] Type of manage identity
  /// [userAssignedIdentities] User assigned identities dictionary
  UserAssignedServiceIdentityResponse({
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeMapValues<UserAssignedIdentityResponse, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
    };
  }

  factory UserAssignedServiceIdentityResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedServiceIdentityResponse(
      type: map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<UserAssignedIdentityResponse>(map['userAssignedIdentities'], (value) => UserAssignedIdentityResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

