// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_group_members_member.dart';

/// Result data returned by getUserGroupMembers.
class GetUserGroupMembersResult {
  /// Account identifier tag.
  final String? accountId;
  /// The sort order of returned user group members by email.
  /// Available values: "asc", "desc".
  final String? direction;
  /// A string used for filtering members by partial email match.
  final String? fuzzyEmail;
  /// User Group identifier tag.
  final String? id;
  /// List of members in the user group.
  final List<GetUserGroupMembersMember>? members;
  /// User Group identifier tag.
  final String? userGroupId;

  /// Creates a new [GetUserGroupMembersResult].
  /// [accountId] Account identifier tag.
  /// [direction] The sort order of returned user group members by email.
  /// [fuzzyEmail] A string used for filtering members by partial email match.
  /// [id] User Group identifier tag.
  /// [members] List of members in the user group.
  /// [userGroupId] User Group identifier tag.
  const GetUserGroupMembersResult({
    this.accountId,
    this.direction,
    this.fuzzyEmail,
    this.id,
    this.members,
    this.userGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'direction': ?direction,
      'fuzzyEmail': ?fuzzyEmail,
      'id': ?id,
      'members': ?(() { final guardedValue = members; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetUserGroupMembersMember, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'userGroupId': ?userGroupId,
    };
  }

  factory GetUserGroupMembersResult.fromMap(Map<String, dynamic> map) {
    return GetUserGroupMembersResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fuzzyEmail: (() { final guardedValue = map['fuzzyEmail']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      members: (() { final guardedValue = map['members']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetUserGroupMembersMember>(guardedValue, (value) => GetUserGroupMembersMember.fromMap((value as Map).cast<String, dynamic>())); })(),
      userGroupId: (() { final guardedValue = map['userGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
