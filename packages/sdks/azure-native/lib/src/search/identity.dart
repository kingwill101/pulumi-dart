// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details about the search service identity. A null value indicates that the search service has no identity assigned.
class Identity {
  /// The type of identity used for the resource. The type 'SystemAssigned, UserAssigned' includes both an identity created by the system and a set of user assigned identities. The type 'None' will remove all identities from the service.
  final pulumi.Input<dynamic> type;
  /// The list of user identities associated with the resource. The user identity dictionary key references will be ARM resource IDs in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  final pulumi.Input<List<String>?>? userAssignedIdentities;

  /// Creates a new [Identity].
  /// [type] The type of identity used for the resource. The type 'SystemAssigned, UserAssigned' includes both an identity created by the system and a set of user assigned identities. The type 'None' will remove all identities from the service.
  /// [userAssignedIdentities] The list of user identities associated with the resource. The user identity dictionary key references will be ARM resource IDs in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
  const Identity({
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory Identity.fromMap(Map<String, dynamic> map) {
    return Identity(
      type: pulumi.Input.fromValue(map['type']),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
