// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_identity_type.dart';

/// The workspace managed identity
class ManagedIdentity {
  /// The type of managed identity for the workspace
  final pulumi.Input<ResourceIdentityType>? type;
  /// The user assigned managed identities.
  final pulumi.Input<List<String>>? userAssignedIdentities;

  /// Creates a new [ManagedIdentity].
  /// [type] The type of managed identity for the workspace
  /// [userAssignedIdentities] The user assigned managed identities.
  const ManagedIdentity({
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?pulumi.Input.mapOptionalInputValue<ResourceIdentityType, String>(type, (value) => value.wireValue),
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory ManagedIdentity.fromMap(Map<String, dynamic> map) {
    return ManagedIdentity(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceIdentityType.fromValue(guardedValue as String)); })(),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

