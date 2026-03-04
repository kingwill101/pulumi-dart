// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_role_management_policy_activation_rules.dart';
import 'group_role_management_policy_active_assignment_rules.dart';
import 'group_role_management_policy_eligible_assignment_rules.dart';
import 'group_role_management_policy_notification_rules.dart';

/// {@template pulumi_index_group_role_management_policy_group_role_management_policy_args_doc}
/// The set of arguments for GroupRoleManagementPolicy.
/// {@endtemplate}
/// {@macro pulumi_index_group_role_management_policy_group_role_management_policy_args_doc}
class GroupRoleManagementPolicyArgs {
  /// An `activation_rules` block as defined below.
  final pulumi.Input<GroupRoleManagementPolicyActivationRules>? activationRules;

  /// An `active_assignment_rules` block as defined below.
  final pulumi.Input<GroupRoleManagementPolicyActiveAssignmentRules>?
  activeAssignmentRules;

  /// An `eligible_assignment_rules` block as defined below.
  final pulumi.Input<GroupRoleManagementPolicyEligibleAssignmentRules>?
  eligibleAssignmentRules;

  /// The ID of the Azure AD group for which the policy applies.
  final pulumi.Input<String> groupId;

  /// A `notification_rules` block as defined below.
  final pulumi.Input<GroupRoleManagementPolicyNotificationRules>?
  notificationRules;

  /// The type of assignment this policy coveres. Can be either `member` or `owner`.
  final pulumi.Input<String> roleId;

  /// Creates a new [GroupRoleManagementPolicyArgs].
  /// [activationRules] An `activation_rules` block as defined below.
  /// [activeAssignmentRules] An `active_assignment_rules` block as defined below.
  /// [eligibleAssignmentRules] An `eligible_assignment_rules` block as defined below.
  /// [groupId] The ID of the Azure AD group for which the policy applies.
  /// [notificationRules] A `notification_rules` block as defined below.
  /// [roleId] The type of assignment this policy coveres. Can be either `member` or `owner`.
  GroupRoleManagementPolicyArgs({
    this.activationRules,
    this.activeAssignmentRules,
    this.eligibleAssignmentRules,
    required this.groupId,
    this.notificationRules,
    required this.roleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationRules':
          ?pulumi.Input.mapOptionalInputValue<
            GroupRoleManagementPolicyActivationRules,
            Map<String, dynamic>
          >(activationRules, (value) => value.toMap()),
      'activeAssignmentRules':
          ?pulumi.Input.mapOptionalInputValue<
            GroupRoleManagementPolicyActiveAssignmentRules,
            Map<String, dynamic>
          >(activeAssignmentRules, (value) => value.toMap()),
      'eligibleAssignmentRules':
          ?pulumi.Input.mapOptionalInputValue<
            GroupRoleManagementPolicyEligibleAssignmentRules,
            Map<String, dynamic>
          >(eligibleAssignmentRules, (value) => value.toMap()),
      'groupId': groupId,
      'notificationRules':
          ?pulumi.Input.mapOptionalInputValue<
            GroupRoleManagementPolicyNotificationRules,
            Map<String, dynamic>
          >(notificationRules, (value) => value.toMap()),
      'roleId': roleId,
    };
  }

  factory GroupRoleManagementPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GroupRoleManagementPolicyArgs(
      activationRules: (() {
        final guardedValue = map['activationRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GroupRoleManagementPolicyActivationRules.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      activeAssignmentRules: (() {
        final guardedValue = map['activeAssignmentRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GroupRoleManagementPolicyActiveAssignmentRules.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      eligibleAssignmentRules: (() {
        final guardedValue = map['eligibleAssignmentRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GroupRoleManagementPolicyEligibleAssignmentRules.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      notificationRules: (() {
        final guardedValue = map['notificationRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GroupRoleManagementPolicyNotificationRules.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      roleId: pulumi.Input.fromValue(map['roleId'] as String),
    );
  }
}
