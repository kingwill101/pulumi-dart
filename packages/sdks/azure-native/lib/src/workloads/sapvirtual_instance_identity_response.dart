// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity_response.dart';

/// Managed service identity (user assigned identities)
class SAPVirtualInstanceIdentityResponse {
  /// The type of managed identity assigned to this resource.
  final String type;
  /// The identities assigned to this resource by the user.
  final Map<String, UserAssignedIdentityResponse>? userAssignedIdentities;

  /// Creates a new [SAPVirtualInstanceIdentityResponse].
  /// [type] The type of managed identity assigned to this resource.
  /// [userAssignedIdentities] The identities assigned to this resource by the user.
  SAPVirtualInstanceIdentityResponse({
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeMapValues<UserAssignedIdentityResponse, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
    };
  }

  factory SAPVirtualInstanceIdentityResponse.fromMap(Map<String, dynamic> map) {
    return SAPVirtualInstanceIdentityResponse(
      type: map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<UserAssignedIdentityResponse>(map['userAssignedIdentities'], (value) => UserAssignedIdentityResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

