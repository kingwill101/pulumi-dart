// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_memberships_membership_member_key.dart';
import 'get_group_memberships_membership_preferred_member_key.dart';
import 'get_group_memberships_membership_role.dart';

class GetGroupMembershipsMembership {
  /// If set to true, skip group member creation if a membership with the same name already exists. Defaults to false.
  final pulumi.Input<bool> createIgnoreAlreadyExists;
  /// The time when the Membership was created.
  final pulumi.Input<String> createTime;
  /// The parent Group resource under which to lookup the Membership names. Must be of the form groups/{group_id}.
  final pulumi.Input<String> group;
  /// EntityKey of the member.  Structure is documented below.
  final pulumi.Input<List<GetGroupMembershipsMembershipMemberKey>> memberKeys;
  /// The name of the MembershipRole. One of OWNER, MANAGER, MEMBER.
  final pulumi.Input<String> name;
  /// EntityKey of the member.  Structure is documented below.
  final pulumi.Input<List<GetGroupMembershipsMembershipPreferredMemberKey>> preferredMemberKeys;
  /// The MembershipRoles that apply to the Membership. Structure is documented below.
  final pulumi.Input<List<GetGroupMembershipsMembershipRole>> roles;
  /// The type of the membership.
  final pulumi.Input<String> type;
  /// The time when the Membership was last updated.
  final pulumi.Input<String> updateTime;

  /// Creates a new [GetGroupMembershipsMembership].
  /// [createIgnoreAlreadyExists] If set to true, skip group member creation if a membership with the same name already exists. Defaults to false.
  /// [createTime] The time when the Membership was created.
  /// [group] The parent Group resource under which to lookup the Membership names. Must be of the form groups/{group_id}.
  /// [memberKeys] EntityKey of the member.  Structure is documented below.
  /// [name] The name of the MembershipRole. One of OWNER, MANAGER, MEMBER.
  /// [preferredMemberKeys] EntityKey of the member.  Structure is documented below.
  /// [roles] The MembershipRoles that apply to the Membership. Structure is documented below.
  /// [type] The type of the membership.
  /// [updateTime] The time when the Membership was last updated.
  GetGroupMembershipsMembership({
    required this.createIgnoreAlreadyExists,
    required this.createTime,
    required this.group,
    required this.memberKeys,
    required this.name,
    required this.preferredMemberKeys,
    required this.roles,
    required this.type,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createIgnoreAlreadyExists': createIgnoreAlreadyExists,
      'createTime': createTime,
      'group': group,
      'memberKeys': pulumi.Input.mapInputValue<List<GetGroupMembershipsMembershipMemberKey>, List<Map<String, dynamic>>>(memberKeys, (value) => pulumi.Input.encodeList<GetGroupMembershipsMembershipMemberKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'preferredMemberKeys': pulumi.Input.mapInputValue<List<GetGroupMembershipsMembershipPreferredMemberKey>, List<Map<String, dynamic>>>(preferredMemberKeys, (value) => pulumi.Input.encodeList<GetGroupMembershipsMembershipPreferredMemberKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'roles': pulumi.Input.mapInputValue<List<GetGroupMembershipsMembershipRole>, List<Map<String, dynamic>>>(roles, (value) => pulumi.Input.encodeList<GetGroupMembershipsMembershipRole, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'updateTime': updateTime,
    };
  }

  factory GetGroupMembershipsMembership.fromMap(Map<String, dynamic> map) {
    return GetGroupMembershipsMembership(
      createIgnoreAlreadyExists: (map['createIgnoreAlreadyExists'] as bool).input(),
      createTime: (map['createTime'] as String).input(),
      group: (map['group'] as String).input(),
      memberKeys: (pulumi.Input.decodeList<GetGroupMembershipsMembershipMemberKey>(map['memberKeys'], (value) => GetGroupMembershipsMembershipMemberKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      preferredMemberKeys: (pulumi.Input.decodeList<GetGroupMembershipsMembershipPreferredMemberKey>(map['preferredMemberKeys'], (value) => GetGroupMembershipsMembershipPreferredMemberKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      roles: (pulumi.Input.decodeList<GetGroupMembershipsMembershipRole>(map['roles'], (value) => GetGroupMembershipsMembershipRole.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: (map['type'] as String).input(),
      updateTime: (map['updateTime'] as String).input(),
    );
  }
}

