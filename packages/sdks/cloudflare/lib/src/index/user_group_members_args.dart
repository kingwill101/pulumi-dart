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
  /// The sort order of returned user group members by email.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// A string used for filtering members by partial email match.
  final pulumi.Input<String?>? fuzzyEmail;
  final pulumi.Input<List<UserGroupMembersMember>> members;
  /// Page number of paginated results.
  final pulumi.Input<double?>? page;
  /// Maximum number of results per page.
  final pulumi.Input<double?>? perPage;
  /// User Group identifier tag.
  final pulumi.Input<String> userGroupId;

  /// Creates a new [UserGroupMembersArgs].
  /// [accountId] Account identifier tag.
  /// [direction] The sort order of returned user group members by email.
  /// [fuzzyEmail] A string used for filtering members by partial email match.
  /// [members] Required.
  /// [page] Page number of paginated results.
  /// [perPage] Maximum number of results per page.
  /// [userGroupId] User Group identifier tag.
  const UserGroupMembersArgs({
    required this.accountId,
    this.direction,
    this.fuzzyEmail,
    required this.members,
    this.page,
    this.perPage,
    required this.userGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'direction': ?direction,
      'fuzzyEmail': ?fuzzyEmail,
      'members': pulumi.Input.mapInputValue<List<UserGroupMembersMember>, List<Map<String, dynamic>>>(members, (value) => pulumi.Input.encodeList<UserGroupMembersMember, Map<String, dynamic>>(value, (value) => value.toMap())),
      'page': ?page,
      'perPage': ?perPage,
      'userGroupId': userGroupId,
    };
  }

  factory UserGroupMembersArgs.fromMap(Map<String, dynamic> map) {
    return UserGroupMembersArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fuzzyEmail: (() { final guardedValue = map['fuzzyEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      members: pulumi.Input.fromValue(pulumi.Input.decodeList<UserGroupMembersMember>(map['members']!, (value) => UserGroupMembersMember.fromMap((value as Map).cast<String, dynamic>()))),
      page: (() { final guardedValue = map['page']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      perPage: (() { final guardedValue = map['perPage']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      userGroupId: pulumi.Input.fromValue(map['userGroupId'] as String),
    );
  }
}
