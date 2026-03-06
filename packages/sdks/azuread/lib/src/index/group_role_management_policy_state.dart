// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_role_management_policy_activation_rules.dart';
import 'group_role_management_policy_active_assignment_rules.dart';
import 'group_role_management_policy_eligible_assignment_rules.dart';
import 'group_role_management_policy_notification_rules.dart';

/// Input properties used for looking up and filtering GroupRoleManagementPolicy resources.
class GroupRoleManagementPolicyState {
  /// An `activation_rules` block as defined below.
  final pulumi.Input<GroupRoleManagementPolicyActivationRules>? activationRules;
  /// An `active_assignment_rules` block as defined below.
  final pulumi.Input<GroupRoleManagementPolicyActiveAssignmentRules>? activeAssignmentRules;
  /// (String) The description of this policy.
  final pulumi.Input<String>? description;
  /// (String) The display name of this policy.
  final pulumi.Input<String>? displayName;
  /// An `eligible_assignment_rules` block as defined below.
  final pulumi.Input<GroupRoleManagementPolicyEligibleAssignmentRules>? eligibleAssignmentRules;
  /// The ID of the Azure AD group for which the policy applies.
  final pulumi.Input<String>? groupId;
  /// A `notification_rules` block as defined below.
  final pulumi.Input<GroupRoleManagementPolicyNotificationRules>? notificationRules;
  /// The type of assignment this policy coveres. Can be either `member` or `owner`.
  final pulumi.Input<String>? roleId;

  /// Creates a new [GroupRoleManagementPolicyState].
  /// [activationRules] An `activation_rules` block as defined below.
  /// [activeAssignmentRules] An `active_assignment_rules` block as defined below.
  /// [description] (String) The description of this policy.
  /// [displayName] (String) The display name of this policy.
  /// [eligibleAssignmentRules] An `eligible_assignment_rules` block as defined below.
  /// [groupId] The ID of the Azure AD group for which the policy applies.
  /// [notificationRules] A `notification_rules` block as defined below.
  /// [roleId] The type of assignment this policy coveres. Can be either `member` or `owner`.
  const GroupRoleManagementPolicyState({
    this.activationRules,
    this.activeAssignmentRules,
    this.description,
    this.displayName,
    this.eligibleAssignmentRules,
    this.groupId,
    this.notificationRules,
    this.roleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationRules': ?pulumi.Input.mapOptionalInputValue<GroupRoleManagementPolicyActivationRules, Map<String, dynamic>>(activationRules, (value) => value.toMap()),
      'activeAssignmentRules': ?pulumi.Input.mapOptionalInputValue<GroupRoleManagementPolicyActiveAssignmentRules, Map<String, dynamic>>(activeAssignmentRules, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'eligibleAssignmentRules': ?pulumi.Input.mapOptionalInputValue<GroupRoleManagementPolicyEligibleAssignmentRules, Map<String, dynamic>>(eligibleAssignmentRules, (value) => value.toMap()),
      'groupId': ?groupId,
      'notificationRules': ?pulumi.Input.mapOptionalInputValue<GroupRoleManagementPolicyNotificationRules, Map<String, dynamic>>(notificationRules, (value) => value.toMap()),
      'roleId': ?roleId,
    };
  }

  factory GroupRoleManagementPolicyState.fromMap(Map<String, dynamic> map) {
    return GroupRoleManagementPolicyState(
      activationRules: (() { final guardedValue = map['activationRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupRoleManagementPolicyActivationRules.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      activeAssignmentRules: (() { final guardedValue = map['activeAssignmentRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupRoleManagementPolicyActiveAssignmentRules.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eligibleAssignmentRules: (() { final guardedValue = map['eligibleAssignmentRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupRoleManagementPolicyEligibleAssignmentRules.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationRules: (() { final guardedValue = map['notificationRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupRoleManagementPolicyNotificationRules.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      roleId: (() { final guardedValue = map['roleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

