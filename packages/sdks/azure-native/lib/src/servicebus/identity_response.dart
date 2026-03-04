// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity_response.dart';

/// Properties to configure User Assigned Identities for Bring your Own Keys
class IdentityResponse {
  /// ObjectId from the KeyVault
  final pulumi.Input<String> principalId;

  /// TenantId from the KeyVault
  final pulumi.Input<String> tenantId;

  /// Type of managed service identity.
  final pulumi.Input<String>? type;

  /// Properties for User Assigned Identities
  final pulumi.Input<Map<String, UserAssignedIdentityResponse>>?
  userAssignedIdentities;

  /// Creates a new [IdentityResponse].
  /// [principalId] ObjectId from the KeyVault
  /// [tenantId] TenantId from the KeyVault
  /// [type] Type of managed service identity.
  /// [userAssignedIdentities] Properties for User Assigned Identities
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
      'userAssignedIdentities':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, UserAssignedIdentityResponse>,
            Map<String, Map<String, dynamic>>
          >(
            userAssignedIdentities,
            (value) =>
                pulumi.Input.encodeMapValues<
                  UserAssignedIdentityResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory IdentityResponse.fromMap(Map<String, dynamic> map) {
    return IdentityResponse(
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userAssignedIdentities: (() {
        final guardedValue = map['userAssignedIdentities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<UserAssignedIdentityResponse>(
            guardedValue,
            (value) => UserAssignedIdentityResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
