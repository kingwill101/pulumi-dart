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
    this.createIgnoreAlreadyExists,
    this.createTime,
    this.group,
    this.memberKey,
    this.name,
    this.preferredMemberKey,
    this.roles,
    this.type,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createIgnoreAlreadyExists': ?createIgnoreAlreadyExists,
      'createTime': ?createTime,
      'group': ?group,
      'memberKey':
          ?pulumi.Input.mapOptionalInputValue<
            GroupMembershipMemberKey,
            Map<String, dynamic>
          >(memberKey, (value) => value.toMap()),
      'name': ?name,
      'preferredMemberKey':
          ?pulumi.Input.mapOptionalInputValue<
            GroupMembershipPreferredMemberKey,
            Map<String, dynamic>
          >(preferredMemberKey, (value) => value.toMap()),
      'roles':
          ?pulumi.Input.mapOptionalInputValue<
            List<GroupMembershipRole>,
            List<Map<String, dynamic>>
          >(
            roles,
            (value) =>
                pulumi.Input.encodeList<
                  GroupMembershipRole,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory GroupMembershipState.fromMap(Map<String, dynamic> map) {
    return GroupMembershipState(
      createIgnoreAlreadyExists: (() {
        final guardedValue = map['createIgnoreAlreadyExists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      group: (() {
        final guardedValue = map['group'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      memberKey: (() {
        final guardedValue = map['memberKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GroupMembershipMemberKey.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      preferredMemberKey: (() {
        final guardedValue = map['preferredMemberKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GroupMembershipPreferredMemberKey.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      roles: (() {
        final guardedValue = map['roles'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GroupMembershipRole>(
            guardedValue,
            (value) => GroupMembershipRole.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
