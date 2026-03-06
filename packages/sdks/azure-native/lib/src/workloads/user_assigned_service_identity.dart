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
  const UserAssignedServiceIdentity({
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
      type: pulumi.Input.fromValue(map['type'] as String),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

