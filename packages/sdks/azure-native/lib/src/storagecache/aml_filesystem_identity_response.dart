// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identities_response_user_assigned_identities.dart';

/// Managed Identity properties.
class AmlFilesystemIdentityResponse {
  /// The principal ID for the user-assigned identity of the resource.
  final pulumi.Input<String> principalId;
  /// The tenant ID associated with the resource.
  final pulumi.Input<String> tenantId;
  /// The type of identity used for the resource.
  final pulumi.Input<String>? type;
  /// A dictionary where each key is a user assigned identity resource ID, and each key's value is an empty dictionary.
  final pulumi.Input<Map<String, UserAssignedIdentitiesResponseUserAssignedIdentities>>? userAssignedIdentities;

  /// Creates a new [AmlFilesystemIdentityResponse].
  /// [principalId] The principal ID for the user-assigned identity of the resource.
  /// [tenantId] The tenant ID associated with the resource.
  /// [type] The type of identity used for the resource.
  /// [userAssignedIdentities] A dictionary where each key is a user assigned identity resource ID, and each key's value is an empty dictionary.
  const AmlFilesystemIdentityResponse({
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
      'userAssignedIdentities': ?pulumi.Input.mapOptionalInputValue<Map<String, UserAssignedIdentitiesResponseUserAssignedIdentities>, Map<String, Map<String, dynamic>>>(userAssignedIdentities, (value) => pulumi.Input.encodeMapValues<UserAssignedIdentitiesResponseUserAssignedIdentities, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AmlFilesystemIdentityResponse.fromMap(Map<String, dynamic> map) {
    return AmlFilesystemIdentityResponse(
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<UserAssignedIdentitiesResponseUserAssignedIdentities>(guardedValue, (value) => UserAssignedIdentitiesResponseUserAssignedIdentities.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

