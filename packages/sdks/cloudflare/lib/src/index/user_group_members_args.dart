// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_group_members_member.dart';

/// {@template pulumi_index_user_group_members_user_group_members_args_doc}
/// The set of arguments for UserGroupMembers.
/// {@endtemplate}
/// {@macro pulumi_index_user_group_members_user_group_members_args_doc}
class UserGroupMembersArgs {
  /// Account identifier tag.
  final pulumi.Input<String> accountId;
  final pulumi.Input<List<UserGroupMembersMember>> members;
  /// User Group identifier tag.
  final pulumi.Input<String> userGroupId;

  /// Creates a new [UserGroupMembersArgs].
  /// [accountId] Account identifier tag.
  /// [members] Required.
  /// [userGroupId] User Group identifier tag.
  const UserGroupMembersArgs({
    required this.accountId,
    required this.members,
    required this.userGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'members': pulumi.Input.mapInputValue<List<UserGroupMembersMember>, List<Map<String, dynamic>>>(members, (value) => pulumi.Input.encodeList<UserGroupMembersMember, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userGroupId': userGroupId,
    };
  }

  factory UserGroupMembersArgs.fromMap(Map<String, dynamic> map) {
    return UserGroupMembersArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      members: pulumi.Input.fromValue(pulumi.Input.decodeList<UserGroupMembersMember>(map['members']!, (value) => UserGroupMembersMember.fromMap((value as Map).cast<String, dynamic>()))),
      userGroupId: pulumi.Input.fromValue(map['userGroupId'] as String),
    );
  }
}
