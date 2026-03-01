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
  GroupRoleManagementPolicyState({
    pulumi.Output<GroupRoleManagementPolicyActivationRules>? activationRules,
    pulumi.Output<GroupRoleManagementPolicyActiveAssignmentRules>? activeAssignmentRules,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<GroupRoleManagementPolicyEligibleAssignmentRules>? eligibleAssignmentRules,
    pulumi.Output<String>? groupId,
    pulumi.Output<GroupRoleManagementPolicyNotificationRules>? notificationRules,
    pulumi.Output<String>? roleId,
  }) :
      activationRules = pulumi.Input.asOptionalInput<GroupRoleManagementPolicyActivationRules>(activationRules),
      activeAssignmentRules = pulumi.Input.asOptionalInput<GroupRoleManagementPolicyActiveAssignmentRules>(activeAssignmentRules),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      eligibleAssignmentRules = pulumi.Input.asOptionalInput<GroupRoleManagementPolicyEligibleAssignmentRules>(eligibleAssignmentRules),
      groupId = pulumi.Input.asOptionalInput<String>(groupId),
      notificationRules = pulumi.Input.asOptionalInput<GroupRoleManagementPolicyNotificationRules>(notificationRules),
      roleId = pulumi.Input.asOptionalInput<String>(roleId);

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
      activationRules: map['activationRules'] == null ? null : pulumi.Output.create<GroupRoleManagementPolicyActivationRules>(GroupRoleManagementPolicyActivationRules.fromMap((map['activationRules'] as Map).cast<String, dynamic>())),
      activeAssignmentRules: map['activeAssignmentRules'] == null ? null : pulumi.Output.create<GroupRoleManagementPolicyActiveAssignmentRules>(GroupRoleManagementPolicyActiveAssignmentRules.fromMap((map['activeAssignmentRules'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      eligibleAssignmentRules: map['eligibleAssignmentRules'] == null ? null : pulumi.Output.create<GroupRoleManagementPolicyEligibleAssignmentRules>(GroupRoleManagementPolicyEligibleAssignmentRules.fromMap((map['eligibleAssignmentRules'] as Map).cast<String, dynamic>())),
      groupId: map['groupId'] == null ? null : pulumi.Output.create<String>(map['groupId'] as String),
      notificationRules: map['notificationRules'] == null ? null : pulumi.Output.create<GroupRoleManagementPolicyNotificationRules>(GroupRoleManagementPolicyNotificationRules.fromMap((map['notificationRules'] as Map).cast<String, dynamic>())),
      roleId: map['roleId'] == null ? null : pulumi.Output.create<String>(map['roleId'] as String),
    );
  }
}

