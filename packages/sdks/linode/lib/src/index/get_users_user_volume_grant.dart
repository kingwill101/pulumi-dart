// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUsersUserVolumeGrant {
  /// The ID of entity this grant applies to.
  final pulumi.Input<int> id;

  /// The current label of the entity this grant applies to, for display purposes.
  final pulumi.Input<String> label;

  /// The level of access this User has to this entity. If null, this User has no access.
  final pulumi.Input<String> permissions;

  /// Creates a new [GetUsersUserVolumeGrant].
  /// [id] The ID of entity this grant applies to.
  /// [label] The current label of the entity this grant applies to, for display purposes.
  /// [permissions] The level of access this User has to this entity. If null, this User has no access.
  GetUsersUserVolumeGrant({
    required this.id,
    required this.label,
    required this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'label': label,
      'permissions': permissions,
    };
  }

  factory GetUsersUserVolumeGrant.fromMap(Map<String, dynamic> map) {
    return GetUsersUserVolumeGrant(
      id: pulumi.Input.fromValue(map['id'] as int),
      label: pulumi.Input.fromValue(map['label'] as String),
      permissions: pulumi.Input.fromValue(map['permissions'] as String),
    );
  }
}
