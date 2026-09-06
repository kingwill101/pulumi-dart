// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity_type.dart';

/// Properties to configure User Assigned Identities for Bring your Own Keys
class Identity {
  /// Type of managed service identity.
  final pulumi.Input<ManagedServiceIdentityType?>? type;
  /// Properties for User Assigned Identities
  final pulumi.Input<List<String>?>? userAssignedIdentities;

  /// Creates a new [Identity].
  /// [type] Type of managed service identity.
  /// [userAssignedIdentities] Properties for User Assigned Identities
  const Identity({
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentityType, String>(type, (value) => value.wireValue),
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory Identity.fromMap(Map<String, dynamic> map) {
    return Identity(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentityType.fromValue(guardedValue as String)); })(),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
