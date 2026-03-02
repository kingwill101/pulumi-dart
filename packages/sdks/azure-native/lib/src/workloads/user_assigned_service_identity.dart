// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed service identity (user assigned identities)
class UserAssignedServiceIdentity {
  /// Type of manage identity
  final pulumi.Input<String> type;
  /// User assigned identities dictionary
  final pulumi.Input<List<String>>? userAssignedIdentities;

  /// Creates a new [UserAssignedServiceIdentity].
  /// [type] Type of manage identity
  /// [userAssignedIdentities] User assigned identities dictionary
  UserAssignedServiceIdentity({
    required this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory UserAssignedServiceIdentity.fromMap(Map<String, dynamic> map) {
    return UserAssignedServiceIdentity(
      type: (map['type'] as String).input(),
      userAssignedIdentities: map['userAssignedIdentities'] == null ? null : ((map['userAssignedIdentities']! as List).cast<String>()).input(),
    );
  }
}

