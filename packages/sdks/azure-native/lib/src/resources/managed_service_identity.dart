// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed identity generic object.
class ManagedServiceIdentity {
  /// Type of the managed identity.
  final pulumi.Input<String>? type;
  /// The list of user-assigned managed identities associated with the resource. Key is the Azure resource Id of the managed identity.
  final pulumi.Input<List<String>>? userAssignedIdentities;

  /// Creates a new [ManagedServiceIdentity].
  /// [type] Type of the managed identity.
  /// [userAssignedIdentities] The list of user-assigned managed identities associated with the resource. Key is the Azure resource Id of the managed identity.
  ManagedServiceIdentity({
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory ManagedServiceIdentity.fromMap(Map<String, dynamic> map) {
    return ManagedServiceIdentity(
      type: map['type'] == null ? null : (map['type']! as String).input(),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : ((map['userAssignedIdentities']! as List).cast<String>()).input(),
    );
  }
}

