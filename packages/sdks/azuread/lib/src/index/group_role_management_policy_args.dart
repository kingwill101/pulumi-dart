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
  final pulumi.Input<GroupRoleManagementPolicyActiveAssignmentRules>? activeAssignmentRules;
  /// An `eligible_assignment_rules` block as defined below.
  final pulumi.Input<GroupRoleManagementPolicyEligibleAssignmentRules>? eligibleAssignmentRules;
  /// The ID of the Azure AD group for which the policy applies.
  final pulumi.Input<String> groupId;
  /// A `notification_rules` block as defined below.
  final pulumi.Input<GroupRoleManagementPolicyNotificationRules>? notificationRules;
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
    pulumi.Output<GroupRoleManagementPolicyActivationRules>? activationRules,
    pulumi.Output<GroupRoleManagementPolicyActiveAssignmentRules>? activeAssignmentRules,
    pulumi.Output<GroupRoleManagementPolicyEligibleAssignmentRules>? eligibleAssignmentRules,
    required pulumi.Output<String> groupId,
    pulumi.Output<GroupRoleManagementPolicyNotificationRules>? notificationRules,
    required pulumi.Output<String> roleId,
  }) :
      activationRules = pulumi.Input.asOptionalInput<GroupRoleManagementPolicyActivationRules>(activationRules),
      activeAssignmentRules = pulumi.Input.asOptionalInput<GroupRoleManagementPolicyActiveAssignmentRules>(activeAssignmentRules),
      eligibleAssignmentRules = pulumi.Input.asOptionalInput<GroupRoleManagementPolicyEligibleAssignmentRules>(eligibleAssignmentRules),
      groupId = pulumi.Input.asInput<String>(groupId),
      notificationRules = pulumi.Input.asOptionalInput<GroupRoleManagementPolicyNotificationRules>(notificationRules),
      roleId = pulumi.Input.asInput<String>(roleId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationRules': ?pulumi.Input.mapOptionalInputValue<GroupRoleManagementPolicyActivationRules, Map<String, dynamic>>(activationRules, (value) => value.toMap()),
      'activeAssignmentRules': ?pulumi.Input.mapOptionalInputValue<GroupRoleManagementPolicyActiveAssignmentRules, Map<String, dynamic>>(activeAssignmentRules, (value) => value.toMap()),
      'eligibleAssignmentRules': ?pulumi.Input.mapOptionalInputValue<GroupRoleManagementPolicyEligibleAssignmentRules, Map<String, dynamic>>(eligibleAssignmentRules, (value) => value.toMap()),
      'groupId': groupId,
      'notificationRules': ?pulumi.Input.mapOptionalInputValue<GroupRoleManagementPolicyNotificationRules, Map<String, dynamic>>(notificationRules, (value) => value.toMap()),
      'roleId': roleId,
    };
  }

  factory GroupRoleManagementPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GroupRoleManagementPolicyArgs(
      activationRules: map['activationRules'] == null ? null : pulumi.Output.create<GroupRoleManagementPolicyActivationRules>(GroupRoleManagementPolicyActivationRules.fromMap((map['activationRules'] as Map).cast<String, dynamic>())),
      activeAssignmentRules: map['activeAssignmentRules'] == null ? null : pulumi.Output.create<GroupRoleManagementPolicyActiveAssignmentRules>(GroupRoleManagementPolicyActiveAssignmentRules.fromMap((map['activeAssignmentRules'] as Map).cast<String, dynamic>())),
      eligibleAssignmentRules: map['eligibleAssignmentRules'] == null ? null : pulumi.Output.create<GroupRoleManagementPolicyEligibleAssignmentRules>(GroupRoleManagementPolicyEligibleAssignmentRules.fromMap((map['eligibleAssignmentRules'] as Map).cast<String, dynamic>())),
      groupId: pulumi.Output.create<String>(map['groupId'] as String),
      notificationRules: map['notificationRules'] == null ? null : pulumi.Output.create<GroupRoleManagementPolicyNotificationRules>(GroupRoleManagementPolicyNotificationRules.fromMap((map['notificationRules'] as Map).cast<String, dynamic>())),
      roleId: pulumi.Output.create<String>(map['roleId'] as String),
    );
  }
}

