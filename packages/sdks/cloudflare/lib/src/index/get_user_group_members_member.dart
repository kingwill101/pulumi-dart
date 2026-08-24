// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserGroupMembersMember {
  /// The contact email address of the user.
  final pulumi.Input<String> email;
  /// Account member identifier.
  final pulumi.Input<String> id;
  /// The member's status in the account.
  /// Available values: "accepted", "pending".
  final pulumi.Input<String> status;

  /// Creates a new [GetUserGroupMembersMember].
  /// [email] The contact email address of the user.
  /// [id] Account member identifier.
  /// [status] The member's status in the account.
  const GetUserGroupMembersMember({
    required this.email,
    required this.id,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'id': id,
      'status': status,
    };
  }

  factory GetUserGroupMembersMember.fromMap(Map<String, dynamic> map) {
    return GetUserGroupMembersMember(
      email: pulumi.Input.fromValue(map['email'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
