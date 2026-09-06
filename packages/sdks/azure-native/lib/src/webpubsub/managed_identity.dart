// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A class represent managed identities used for request and response
class ManagedIdentity {
  /// Represents the identity type: systemAssigned, userAssigned, None
  final pulumi.Input<dynamic>? type;
  /// Get or set the user assigned identities
  final pulumi.Input<List<String>?>? userAssignedIdentities;

  /// Creates a new [ManagedIdentity].
  /// [type] Represents the identity type: systemAssigned, userAssigned, None
  /// [userAssignedIdentities] Get or set the user assigned identities
  const ManagedIdentity({
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory ManagedIdentity.fromMap(Map<String, dynamic> map) {
    return ManagedIdentity(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
