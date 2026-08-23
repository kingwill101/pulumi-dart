// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity_response.dart';

/// Managed service identity (user assigned identities)
class SAPVirtualInstanceIdentityResponse {
  /// The type of managed identity assigned to this resource.
  final pulumi.Input<String> type;
  /// The identities assigned to this resource by the user.
  final pulumi.Input<Map<String, UserAssignedIdentityResponse>>? userAssignedIdentities;

  /// Creates a new [SAPVirtualInstanceIdentityResponse].
  /// [type] The type of managed identity assigned to this resource.
  /// [userAssignedIdentities] The identities assigned to this resource by the user.
  const SAPVirtualInstanceIdentityResponse({
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<Map<String, UserAssignedIdentityResponse>, Map<String, Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeMapValues<UserAssignedIdentityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SAPVirtualInstanceIdentityResponse.fromMap(Map<String, dynamic> map) {
    return SAPVirtualInstanceIdentityResponse(
      type: pulumi.Input.fromValue(map['type'] as String),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<UserAssignedIdentityResponse>(guardedValue, (value) => UserAssignedIdentityResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
