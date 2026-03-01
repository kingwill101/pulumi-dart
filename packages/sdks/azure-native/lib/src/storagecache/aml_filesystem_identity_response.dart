// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_identities_response_user_assigned_identities.dart';

/// Managed Identity properties.
class AmlFilesystemIdentityResponse {
  /// The principal ID for the user-assigned identity of the resource.
  final String principalId;
  /// The tenant ID associated with the resource.
  final String tenantId;
  /// The type of identity used for the resource.
  final String? type;
  /// A dictionary where each key is a user assigned identity resource ID, and each key's value is an empty dictionary.
  final Map<String, UserAssignedIdentitiesResponseUserAssignedIdentities>? userAssignedIdentities;

  /// Creates a new [AmlFilesystemIdentityResponse].
  /// [principalId] The principal ID for the user-assigned identity of the resource.
  /// [tenantId] The tenant ID associated with the resource.
  /// [type] The type of identity used for the resource.
  /// [userAssignedIdentities] A dictionary where each key is a user assigned identity resource ID, and each key's value is an empty dictionary.
  AmlFilesystemIdentityResponse({
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
      'userAssignedIdentities': ?userAssignedIdentities == null ? null : pulumi.Input.encodeMapValues<UserAssignedIdentitiesResponseUserAssignedIdentities, Map<String, dynamic>>(userAssignedIdentities!, (value) => value.toMap()),
    };
  }

  factory AmlFilesystemIdentityResponse.fromMap(Map<String, dynamic> map) {
    return AmlFilesystemIdentityResponse(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : pulumi.Input.decodeMapValues<UserAssignedIdentitiesResponseUserAssignedIdentities>(map['userAssignedIdentities'], (value) => UserAssignedIdentitiesResponseUserAssignedIdentities.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

