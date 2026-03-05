// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_membership_member_key.dart';
import 'group_membership_preferred_member_key.dart';
import 'group_membership_role.dart';

/// {@template pulumi_cloudidentity_group_membership_group_membership_args_doc}
/// The set of arguments for GroupMembership.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_group_membership_group_membership_args_doc}
class GroupMembershipArgs {
  /// If set to true, skip group member creation if a membership with the same name already exists. Defaults to false.
  final pulumi.Input<bool>? createIgnoreAlreadyExists;
  /// The name of the Group to create this membership in.
  final pulumi.Input<String> group;
  /// EntityKey of the member.
  /// Structure is documented below.
  final pulumi.Input<GroupMembershipMemberKey>? memberKey;
  /// EntityKey of the member.
  /// Structure is documented below.
  final pulumi.Input<GroupMembershipPreferredMemberKey>? preferredMemberKey;
  /// The MembershipRoles that apply to the Membership.
  /// Must not contain duplicate MembershipRoles with the same name.
  /// Structure is documented below.
  final pulumi.Input<List<GroupMembershipRole>> roles;

  /// Creates a new [GroupMembershipArgs].
  /// [createIgnoreAlreadyExists] If set to true, skip group member creation if a membership with the same name already exists. Defaults to false.
  /// [group] The name of the Group to create this membership in.
  /// [memberKey] EntityKey of the member.
  /// [preferredMemberKey] EntityKey of the member.
  /// [roles] The MembershipRoles that apply to the Membership.
  GroupMembershipArgs({
    this.createIgnoreAlreadyExists,
    required this.group,
    this.memberKey,
    this.preferredMemberKey,
    required this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createIgnoreAlreadyExists': ?createIgnoreAlreadyExists,
      'group': group,
      'memberKey': ?pulumi.Input.mapOptionalInputValue<GroupMembershipMemberKey, Map<String, dynamic>>(memberKey, (value) => value.toMap()),
      'preferredMemberKey': ?pulumi.Input.mapOptionalInputValue<GroupMembershipPreferredMemberKey, Map<String, dynamic>>(preferredMemberKey, (value) => value.toMap()),
      'roles': pulumi.Input.mapInputValue<List<GroupMembershipRole>, List<Map<String, dynamic>>>(roles, (value) => pulumi.Input.encodeList<GroupMembershipRole, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GroupMembershipArgs.fromMap(Map<String, dynamic> map) {
    return GroupMembershipArgs(
      createIgnoreAlreadyExists: (() { final guardedValue = map['createIgnoreAlreadyExists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      group: pulumi.Input.fromValue(map['group'] as String),
      memberKey: (() { final guardedValue = map['memberKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupMembershipMemberKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preferredMemberKey: (() { final guardedValue = map['preferredMemberKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupMembershipPreferredMemberKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      roles: pulumi.Input.fromValue(pulumi.Input.decodeList<GroupMembershipRole>(map['roles']!, (value) => GroupMembershipRole.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

