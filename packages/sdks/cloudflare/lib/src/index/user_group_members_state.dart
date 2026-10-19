// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_group_members_member.dart';

/// Input properties used for looking up and filtering UserGroupMembers resources.
class UserGroupMembersState {
  /// Account identifier tag.
  final pulumi.Input<String?>? accountId;
  /// The sort order of returned user group members by email.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// A string used for filtering members by partial email match.
  final pulumi.Input<String?>? fuzzyEmail;
  final pulumi.Input<List<UserGroupMembersMember>?>? members;
  /// Page number of paginated results.
  final pulumi.Input<double?>? page;
  /// Maximum number of results per page.
  final pulumi.Input<double?>? perPage;
  /// User Group identifier tag.
  final pulumi.Input<String?>? userGroupId;

  /// Creates a new [UserGroupMembersState].
  /// [accountId] Account identifier tag.
  /// [direction] The sort order of returned user group members by email.
  /// [fuzzyEmail] A string used for filtering members by partial email match.
  /// [members] Optional.
  /// [page] Page number of paginated results.
  /// [perPage] Maximum number of results per page.
  /// [userGroupId] User Group identifier tag.
  const UserGroupMembersState({
    this.accountId,
    this.direction,
    this.fuzzyEmail,
    this.members,
    this.page,
    this.perPage,
    this.userGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'direction': ?direction,
      'fuzzyEmail': ?fuzzyEmail,
      'members': ?pulumi.Input.mapOptionalInputValue<List<UserGroupMembersMember>, List<Map<String, dynamic>>>(members, (value) => pulumi.Input.encodeList<UserGroupMembersMember, Map<String, dynamic>>(value, (value) => value.toMap())),
      'page': ?page,
      'perPage': ?perPage,
      'userGroupId': ?userGroupId,
    };
  }

  factory UserGroupMembersState.fromMap(Map<String, dynamic> map) {
    return UserGroupMembersState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fuzzyEmail: (() { final guardedValue = map['fuzzyEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      members: (() { final guardedValue = map['members']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserGroupMembersMember>(guardedValue, (value) => UserGroupMembersMember.fromMap((value as Map).cast<String, dynamic>()))); })(),
      page: (() { final guardedValue = map['page']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      perPage: (() { final guardedValue = map['perPage']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      userGroupId: (() { final guardedValue = map['userGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
