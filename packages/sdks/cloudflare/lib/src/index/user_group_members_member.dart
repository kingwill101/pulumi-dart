// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserGroupMembersMember {
  /// The identifier of an existing account Member.
  final pulumi.Input<String> id;

  /// Creates a new [UserGroupMembersMember].
  /// [id] The identifier of an existing account Member.
  const UserGroupMembersMember({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory UserGroupMembersMember.fromMap(Map<String, dynamic> map) {
    return UserGroupMembersMember(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
