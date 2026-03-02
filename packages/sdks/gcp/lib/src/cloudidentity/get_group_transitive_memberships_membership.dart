// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_transitive_memberships_membership_preferred_member_key.dart';
import 'get_group_transitive_memberships_membership_role.dart';

class GetGroupTransitiveMembershipsMembership {
  /// EntityKey of the member.  This value will be either a userKey in the format `users/000000000000000000000` with a numerical id or a groupKey in the format `groups/000ab0000ab0000` with a hexadecimal id.
  final pulumi.Input<String> member;
  /// EntityKey of the member.  Structure is documented below.
  final pulumi.Input<List<GetGroupTransitiveMembershipsMembershipPreferredMemberKey>> preferredMemberKeys;
  /// The relation between the group and the transitive member. The value can be DIRECT, INDIRECT, or DIRECT_AND_INDIRECT.
  final pulumi.Input<String> relationType;
  /// The TransitiveMembershipRoles that apply to the Membership. Structure is documented below.
  final pulumi.Input<List<GetGroupTransitiveMembershipsMembershipRole>> roles;

  /// Creates a new [GetGroupTransitiveMembershipsMembership].
  /// [member] EntityKey of the member.  This value will be either a userKey in the format `users/000000000000000000000` with a numerical id or a groupKey in the format `groups/000ab0000ab0000` with a hexadecimal id.
  /// [preferredMemberKeys] EntityKey of the member.  Structure is documented below.
  /// [relationType] The relation between the group and the transitive member. The value can be DIRECT, INDIRECT, or DIRECT_AND_INDIRECT.
  /// [roles] The TransitiveMembershipRoles that apply to the Membership. Structure is documented below.
  GetGroupTransitiveMembershipsMembership({
    required this.member,
    required this.preferredMemberKeys,
    required this.relationType,
    required this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'member': member,
      'preferredMemberKeys': pulumi.Input.mapInputValue<List<GetGroupTransitiveMembershipsMembershipPreferredMemberKey>, List<Map<String, dynamic>>>(preferredMemberKeys, (value) => pulumi.Input.encodeList<GetGroupTransitiveMembershipsMembershipPreferredMemberKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'relationType': relationType,
      'roles': pulumi.Input.mapInputValue<List<GetGroupTransitiveMembershipsMembershipRole>, List<Map<String, dynamic>>>(roles, (value) => pulumi.Input.encodeList<GetGroupTransitiveMembershipsMembershipRole, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetGroupTransitiveMembershipsMembership.fromMap(Map<String, dynamic> map) {
    return GetGroupTransitiveMembershipsMembership(
      member: (map['member'] as String).input(),
      preferredMemberKeys: (pulumi.Input.decodeList<GetGroupTransitiveMembershipsMembershipPreferredMemberKey>(map['preferredMemberKeys'], (value) => GetGroupTransitiveMembershipsMembershipPreferredMemberKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      relationType: (map['relationType'] as String).input(),
      roles: (pulumi.Input.decodeList<GetGroupTransitiveMembershipsMembershipRole>(map['roles'], (value) => GetGroupTransitiveMembershipsMembershipRole.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

