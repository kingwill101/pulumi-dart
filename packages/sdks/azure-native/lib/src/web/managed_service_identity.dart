// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity_type.dart';

/// Managed service identity.
class ManagedServiceIdentity {
  /// Type of managed service identity.
  final pulumi.Input<ManagedServiceIdentityType>? type;

  /// The list of user assigned identities associated with the resource. The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}
  final pulumi.Input<List<String>>? userAssignedIdentities;

  /// Creates a new [ManagedServiceIdentity].
  /// [type] Type of managed service identity.
  /// [userAssignedIdentities] The list of user assigned identities associated with the resource. The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}
  ManagedServiceIdentity({this.type, this.userAssignedIdentities});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedServiceIdentityType,
            String
          >(type, (value) => value.wireValue),
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory ManagedServiceIdentity.fromMap(Map<String, dynamic> map) {
    return ManagedServiceIdentity(
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedServiceIdentityType.fromValue(guardedValue as String),
        );
      })(),
      userAssignedIdentities: (() {
        final guardedValue = map['userAssignedIdentities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
