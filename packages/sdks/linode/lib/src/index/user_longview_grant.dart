// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserLongviewGrant {
  /// The ID of the entity this grant applies to.
  final pulumi.Input<int> id;

  /// The level of access this User has to this entity. If null, this User has no access.
  final pulumi.Input<String> permissions;

  /// Creates a new [UserLongviewGrant].
  /// [id] The ID of the entity this grant applies to.
  /// [permissions] The level of access this User has to this entity. If null, this User has no access.
  UserLongviewGrant({required this.id, required this.permissions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'permissions': permissions};
  }

  factory UserLongviewGrant.fromMap(Map<String, dynamic> map) {
    return UserLongviewGrant(
      id: pulumi.Input.fromValue(map['id'] as int),
      permissions: pulumi.Input.fromValue(map['permissions'] as String),
    );
  }
}
