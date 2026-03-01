// ignore_for_file: unused_element, unnecessary_cast

import 'managed_service_identity_type.dart';

/// Managed service identity.
class ManagedServiceIdentity {
  /// Type of managed service identity.
  final ManagedServiceIdentityType? type;
  /// The list of user assigned identities associated with the resource. The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}
  final List<String>? userAssignedIdentities;

  /// Creates a new [ManagedServiceIdentity].
  /// [type] Type of managed service identity.
  /// [userAssignedIdentities] The list of user assigned identities associated with the resource. The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}
  ManagedServiceIdentity({
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type == null ? null : type!.value,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory ManagedServiceIdentity.fromMap(Map<String, dynamic> map) {
    return ManagedServiceIdentity(
      type: map['type'] == null ? null : ManagedServiceIdentityType.fromValue(map['type'] as String),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : (map['userAssignedIdentities'] as List).cast<String>(),
    );
  }
}

