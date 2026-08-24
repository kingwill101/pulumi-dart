// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserGroupPolicyPermissionGroup {
  /// Permission Group identifier tag.
  final pulumi.Input<String> id;

  /// Creates a new [UserGroupPolicyPermissionGroup].
  /// [id] Permission Group identifier tag.
  const UserGroupPolicyPermissionGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory UserGroupPolicyPermissionGroup.fromMap(Map<String, dynamic> map) {
    return UserGroupPolicyPermissionGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
