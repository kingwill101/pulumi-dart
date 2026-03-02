// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_management_policy_activation_rules.dart';
import 'role_management_policy_active_assignment_rules.dart';
import 'role_management_policy_eligible_assignment_rules.dart';
import 'role_management_policy_notification_rules.dart';

/// {@template pulumi_pim_role_management_policy_role_management_policy_args_doc}
/// The set of arguments for RoleManagementPolicy.
/// {@endtemplate}
/// {@macro pulumi_pim_role_management_policy_role_management_policy_args_doc}
class RoleManagementPolicyArgs {
  /// An `activation_rules` block as defined below.
  final pulumi.Input<RoleManagementPolicyActivationRules>? activationRules;
  /// An `active_assignment_rules` block as defined below.
  final pulumi.Input<RoleManagementPolicyActiveAssignmentRules>? activeAssignmentRules;
  /// An `eligible_assignment_rules` block as defined below.
  final pulumi.Input<RoleManagementPolicyEligibleAssignmentRules>? eligibleAssignmentRules;
  /// A `notification_rules` block as defined below.
  final pulumi.Input<RoleManagementPolicyNotificationRules>? notificationRules;
  /// The scoped Role Definition ID of the role for which this policy will apply. Changing this forces a new resource to be created.
  final pulumi.Input<String> roleDefinitionId;
  /// The scope to which this Role Management Policy will apply. Can refer to a management group, a subscription, a resource group or a resource. Changing this forces a new resource to be created.
  final pulumi.Input<String> scope;

  /// Creates a new [RoleManagementPolicyArgs].
  /// [activationRules] An `activation_rules` block as defined below.
  /// [activeAssignmentRules] An `active_assignment_rules` block as defined below.
  /// [eligibleAssignmentRules] An `eligible_assignment_rules` block as defined below.
  /// [notificationRules] A `notification_rules` block as defined below.
  /// [roleDefinitionId] The scoped Role Definition ID of the role for which this policy will apply. Changing this forces a new resource to be created.
  /// [scope] The scope to which this Role Management Policy will apply. Can refer to a management group, a subscription, a resource group or a resource. Changing this forces a new resource to be created.
  RoleManagementPolicyArgs({
    this.activationRules,
    this.activeAssignmentRules,
    this.eligibleAssignmentRules,
    this.notificationRules,
    required this.roleDefinitionId,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationRules': ?pulumi.Input.mapOptionalInputValue<RoleManagementPolicyActivationRules, Map<String, dynamic>>(activationRules, (value) => value.toMap()),
      'activeAssignmentRules': ?pulumi.Input.mapOptionalInputValue<RoleManagementPolicyActiveAssignmentRules, Map<String, dynamic>>(activeAssignmentRules, (value) => value.toMap()),
      'eligibleAssignmentRules': ?pulumi.Input.mapOptionalInputValue<RoleManagementPolicyEligibleAssignmentRules, Map<String, dynamic>>(eligibleAssignmentRules, (value) => value.toMap()),
      'notificationRules': ?pulumi.Input.mapOptionalInputValue<RoleManagementPolicyNotificationRules, Map<String, dynamic>>(notificationRules, (value) => value.toMap()),
      'roleDefinitionId': roleDefinitionId,
      'scope': scope,
    };
  }

  factory RoleManagementPolicyArgs.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyArgs(
      activationRules: map['activationRules'] == null ? null : (RoleManagementPolicyActivationRules.fromMap((map['activationRules'] as Map).cast<String, dynamic>())).input(),
      activeAssignmentRules: map['activeAssignmentRules'] == null ? null : (RoleManagementPolicyActiveAssignmentRules.fromMap((map['activeAssignmentRules'] as Map).cast<String, dynamic>())).input(),
      eligibleAssignmentRules: map['eligibleAssignmentRules'] == null ? null : (RoleManagementPolicyEligibleAssignmentRules.fromMap((map['eligibleAssignmentRules'] as Map).cast<String, dynamic>())).input(),
      notificationRules: map['notificationRules'] == null ? null : (RoleManagementPolicyNotificationRules.fromMap((map['notificationRules'] as Map).cast<String, dynamic>())).input(),
      roleDefinitionId: (map['roleDefinitionId'] as String).input(),
      scope: (map['scope'] as String).input(),
    );
  }
}

