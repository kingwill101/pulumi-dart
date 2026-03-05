// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGroupTransitiveMembershipsMembershipRole {
  /// The name of the TransitiveMembershipRole. One of OWNER, MANAGER, MEMBER.
  final pulumi.Input<String> role;

  /// Creates a new [GetGroupTransitiveMembershipsMembershipRole].
  /// [role] The name of the TransitiveMembershipRole. One of OWNER, MANAGER, MEMBER.
  GetGroupTransitiveMembershipsMembershipRole({
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'role': role,
    };
  }

  factory GetGroupTransitiveMembershipsMembershipRole.fromMap(Map<String, dynamic> map) {
    return GetGroupTransitiveMembershipsMembershipRole(
      role: pulumi.Input.fromValue(map['role'] as String),
    );
  }
}

