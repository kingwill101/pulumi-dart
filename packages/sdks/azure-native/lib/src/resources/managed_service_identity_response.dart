// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identity_response.dart';

/// Managed identity generic object.
class ManagedServiceIdentityResponse {
  /// ID of the Azure Active Directory.
  final pulumi.Input<String> tenantId;

  /// Type of the managed identity.
  final pulumi.Input<String>? type;

  /// The list of user-assigned managed identities associated with the resource. Key is the Azure resource Id of the managed identity.
  final pulumi.Input<Map<String, UserAssignedIdentityResponse>>?
  userAssignedIdentities;

  /// Creates a new [ManagedServiceIdentityResponse].
  /// [tenantId] ID of the Azure Active Directory.
  /// [type] Type of the managed identity.
  /// [userAssignedIdentities] The list of user-assigned managed identities associated with the resource. Key is the Azure resource Id of the managed identity.
  ManagedServiceIdentityResponse({
    required this.tenantId,
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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

  factory ManagedServiceIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ManagedServiceIdentityResponse(
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
