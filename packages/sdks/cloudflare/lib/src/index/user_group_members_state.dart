// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_group_members_member.dart';

/// Input properties used for looking up and filtering UserGroupMembers resources.
class UserGroupMembersState {
  /// Account identifier tag.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<List<UserGroupMembersMember>?>? members;
  /// User Group identifier tag.
  final pulumi.Input<String?>? userGroupId;

  /// Creates a new [UserGroupMembersState].
  /// [accountId] Account identifier tag.
  /// [members] Optional.
  /// [userGroupId] User Group identifier tag.
  const UserGroupMembersState({
    this.accountId,
    this.members,
    this.userGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'members': ?pulumi.Input.mapOptionalInputValue<List<UserGroupMembersMember>, List<Map<String, dynamic>>>(members, (value) => pulumi.Input.encodeList<UserGroupMembersMember, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userGroupId': ?userGroupId,
    };
  }

  factory UserGroupMembersState.fromMap(Map<String, dynamic> map) {
    return UserGroupMembersState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      members: (() { final guardedValue = map['members']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserGroupMembersMember>(guardedValue, (value) => UserGroupMembersMember.fromMap((value as Map).cast<String, dynamic>()))); })(),
      userGroupId: (() { final guardedValue = map['userGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
