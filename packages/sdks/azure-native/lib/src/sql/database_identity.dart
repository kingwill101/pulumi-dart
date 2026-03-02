// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Active Directory identity configuration for a resource.
class DatabaseIdentity {
  /// The identity type
  final pulumi.Input<String>? type;
  /// The resource ids of the user assigned identities to use
  final pulumi.Input<List<String>>? userAssignedIdentities;

  /// Creates a new [DatabaseIdentity].
  /// [type] The identity type
  /// [userAssignedIdentities] The resource ids of the user assigned identities to use
  DatabaseIdentity({
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory DatabaseIdentity.fromMap(Map<String, dynamic> map) {
    return DatabaseIdentity(
      type: map['type'] == null ? null : (map['type'] as String).input(),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : ((map['userAssignedIdentities'] as List).cast<String>()).input(),
    );
  }
}

