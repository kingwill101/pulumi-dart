// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Active Directory identity configuration for a resource.
class ManagedIdentity {
  /// The identity type
  final pulumi.Input<String>? type;

  /// The resource ids of the user assigned identities to use
  final pulumi.Input<List<String>>? userAssignedIdentities;

  /// Creates a new [ManagedIdentity].
  /// [type] The identity type
  /// [userAssignedIdentities] The resource ids of the user assigned identities to use
  ManagedIdentity({this.type, this.userAssignedIdentities});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory ManagedIdentity.fromMap(Map<String, dynamic> map) {
    return ManagedIdentity(
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userAssignedIdentities: (() {
        final guardedValue = map['userAssignedIdentities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
