// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_user_group_members_get_user_group_members_args_doc}
/// Arguments for getUserGroupMembers.
/// {@endtemplate}
/// {@macro pulumi_index_get_user_group_members_get_user_group_members_args_doc}
class GetUserGroupMembersArgs {
  /// Account identifier tag.
  final pulumi.Input<String> accountId;
  /// The sort order of returned user group members by email.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// A string used for filtering members by partial email match.
  final pulumi.Input<String?>? fuzzyEmail;
  /// User Group identifier tag.
  final pulumi.Input<String> userGroupId;

  /// Creates a new [GetUserGroupMembersArgs].
  /// [accountId] Account identifier tag.
  /// [direction] The sort order of returned user group members by email.
  /// [fuzzyEmail] A string used for filtering members by partial email match.
  /// [userGroupId] User Group identifier tag.
  const GetUserGroupMembersArgs({
    required this.accountId,
    this.direction,
    this.fuzzyEmail,
    required this.userGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'direction': ?direction,
      'fuzzyEmail': ?fuzzyEmail,
      'userGroupId': userGroupId,
    };
  }

  factory GetUserGroupMembersArgs.fromMap(Map<String, dynamic> map) {
    return GetUserGroupMembersArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fuzzyEmail: (() { final guardedValue = map['fuzzyEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userGroupId: pulumi.Input.fromValue(map['userGroupId'] as String),
    );
  }
}
