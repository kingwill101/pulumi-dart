// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserVolumeGrant {
  /// The ID of the entity this grant applies to.
  final pulumi.Input<int> id;
  /// The level of access this User has to this entity. If null, this User has no access.
  final pulumi.Input<String> permissions;

  /// Creates a new [UserVolumeGrant].
  /// [id] The ID of the entity this grant applies to.
  /// [permissions] The level of access this User has to this entity. If null, this User has no access.
  UserVolumeGrant({
    required this.id,
    required this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'permissions': permissions,
    };
  }

  factory UserVolumeGrant.fromMap(Map<String, dynamic> map) {
    return UserVolumeGrant(
      id: (map['id'] as int).input(),
      permissions: (map['permissions'] as String).input(),
    );
  }
}

