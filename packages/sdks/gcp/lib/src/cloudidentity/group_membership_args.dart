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
  final pulumi.Input<bool?>? createIgnoreAlreadyExists;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The name of the Group to create this membership in.
  final pulumi.Input<String> group;
  /// (Optional, Beta)
  /// EntityKey of the member.
  /// Structure is documented below.
  final pulumi.Input<GroupMembershipMemberKey?>? memberKey;
  /// EntityKey of the member.
  /// Structure is documented below.
  final pulumi.Input<GroupMembershipPreferredMemberKey?>? preferredMemberKey;
  /// The MembershipRoles that apply to the Membership.
  /// Must not contain duplicate MembershipRoles with the same name.
  /// Structure is documented below.
  final pulumi.Input<List<GroupMembershipRole>> roles;

  /// Creates a new [GroupMembershipArgs].
  /// [createIgnoreAlreadyExists] If set to true, skip group member creation if a membership with the same name already exists. Defaults to false.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [group] The name of the Group to create this membership in.
  /// [memberKey] (Optional, Beta)
  /// [preferredMemberKey] EntityKey of the member.
  /// [roles] The MembershipRoles that apply to the Membership.
  const GroupMembershipArgs({
    this.createIgnoreAlreadyExists,
    this.deletionPolicy,
    required this.group,
    this.memberKey,
    this.preferredMemberKey,
    required this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createIgnoreAlreadyExists': ?createIgnoreAlreadyExists,
      'deletionPolicy': ?deletionPolicy,
      'group': group,
      'memberKey': ?pulumi.Input.mapOptionalInputValue<GroupMembershipMemberKey, Map<String, dynamic>>(memberKey, (value) => value.toMap()),
      'preferredMemberKey': ?pulumi.Input.mapOptionalInputValue<GroupMembershipPreferredMemberKey, Map<String, dynamic>>(preferredMemberKey, (value) => value.toMap()),
      'roles': pulumi.Input.mapInputValue<List<GroupMembershipRole>, List<Map<String, dynamic>>>(roles, (value) => pulumi.Input.encodeList<GroupMembershipRole, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GroupMembershipArgs.fromMap(Map<String, dynamic> map) {
    return GroupMembershipArgs(
      createIgnoreAlreadyExists: (() { final guardedValue = map['createIgnoreAlreadyExists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      group: pulumi.Input.fromValue(map['group'] as String),
      memberKey: (() { final guardedValue = map['memberKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupMembershipMemberKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preferredMemberKey: (() { final guardedValue = map['preferredMemberKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupMembershipPreferredMemberKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      roles: pulumi.Input.fromValue(pulumi.Input.decodeList<GroupMembershipRole>(map['roles']!, (value) => GroupMembershipRole.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
