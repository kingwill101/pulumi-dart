// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_membership_member_key.dart';
import 'group_membership_preferred_member_key.dart';
import 'group_membership_role.dart';

/// Input properties used for looking up and filtering GroupMembership resources.
class GroupMembershipState {
  /// If set to true, skip group member creation if a membership with the same name already exists. Defaults to false.
  final pulumi.Input<bool>? createIgnoreAlreadyExists;
  /// The time when the Membership was created.
  final pulumi.Input<String>? createTime;
  /// The name of the Group to create this membership in.
  final pulumi.Input<String>? group;
  /// EntityKey of the member.
  /// Structure is documented below.
  final pulumi.Input<GroupMembershipMemberKey>? memberKey;
  /// The resource name of the Membership, of the form groups/{group_id}/memberships/{membership_id}.
  final pulumi.Input<String>? name;
  /// EntityKey of the member.
  /// Structure is documented below.
  final pulumi.Input<GroupMembershipPreferredMemberKey>? preferredMemberKey;
  /// The MembershipRoles that apply to the Membership.
  /// Must not contain duplicate MembershipRoles with the same name.
  /// Structure is documented below.
  final pulumi.Input<List<GroupMembershipRole>>? roles;
  /// The type of the membership.
  final pulumi.Input<String>? type;
  /// The time when the Membership was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [GroupMembershipState].
  /// [createIgnoreAlreadyExists] If set to true, skip group member creation if a membership with the same name already exists. Defaults to false.
  /// [createTime] The time when the Membership was created.
  /// [group] The name of the Group to create this membership in.
  /// [memberKey] EntityKey of the member.
  /// [name] The resource name of the Membership, of the form groups/{group_id}/memberships/{membership_id}.
  /// [preferredMemberKey] EntityKey of the member.
  /// [roles] The MembershipRoles that apply to the Membership.
  /// [type] The type of the membership.
  /// [updateTime] The time when the Membership was last updated.
  GroupMembershipState({
    pulumi.Output<bool>? createIgnoreAlreadyExists,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? group,
    pulumi.Output<GroupMembershipMemberKey>? memberKey,
    pulumi.Output<String>? name,
    pulumi.Output<GroupMembershipPreferredMemberKey>? preferredMemberKey,
    pulumi.Output<List<GroupMembershipRole>>? roles,
    pulumi.Output<String>? type,
    pulumi.Output<String>? updateTime,
  }) :
      createIgnoreAlreadyExists = pulumi.Input.asOptionalInput<bool>(createIgnoreAlreadyExists),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      group = pulumi.Input.asOptionalInput<String>(group),
      memberKey = pulumi.Input.asOptionalInput<GroupMembershipMemberKey>(memberKey),
      name = pulumi.Input.asOptionalInput<String>(name),
      preferredMemberKey = pulumi.Input.asOptionalInput<GroupMembershipPreferredMemberKey>(preferredMemberKey),
      roles = pulumi.Input.asOptionalInput<List<GroupMembershipRole>>(roles),
      type = pulumi.Input.asOptionalInput<String>(type),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createIgnoreAlreadyExists': ?createIgnoreAlreadyExists,
      'createTime': ?createTime,
      'group': ?group,
      'memberKey': ?pulumi.Input.mapOptionalInputValue<GroupMembershipMemberKey, Map<String, dynamic>>(memberKey, (value) => value.toMap()),
      'name': ?name,
      'preferredMemberKey': ?pulumi.Input.mapOptionalInputValue<GroupMembershipPreferredMemberKey, Map<String, dynamic>>(preferredMemberKey, (value) => value.toMap()),
      'roles': ?pulumi.Input.mapOptionalInputValue<List<GroupMembershipRole>, List<Map<String, dynamic>>>(roles, (value) => pulumi.Input.encodeList<GroupMembershipRole, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory GroupMembershipState.fromMap(Map<String, dynamic> map) {
    return GroupMembershipState(
      createIgnoreAlreadyExists: map['createIgnoreAlreadyExists'] == null ? null : pulumi.Output.create<bool>(map['createIgnoreAlreadyExists'] as bool),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      group: map['group'] == null ? null : pulumi.Output.create<String>(map['group'] as String),
      memberKey: map['memberKey'] == null ? null : pulumi.Output.create<GroupMembershipMemberKey>(GroupMembershipMemberKey.fromMap((map['memberKey'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      preferredMemberKey: map['preferredMemberKey'] == null ? null : pulumi.Output.create<GroupMembershipPreferredMemberKey>(GroupMembershipPreferredMemberKey.fromMap((map['preferredMemberKey'] as Map).cast<String, dynamic>())),
      roles: map['roles'] == null ? null : pulumi.Output.create<List<GroupMembershipRole>>(pulumi.Input.decodeList<GroupMembershipRole>(map['roles'], (value) => GroupMembershipRole.fromMap((value as Map).cast<String, dynamic>()))),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

