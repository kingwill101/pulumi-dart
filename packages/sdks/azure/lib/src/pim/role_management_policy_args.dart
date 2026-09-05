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
  /// An `activationRules` block as defined below.
  final pulumi.Input<RoleManagementPolicyActivationRules?>? activationRules;
  /// An `activeAssignmentRules` block as defined below.
  final pulumi.Input<RoleManagementPolicyActiveAssignmentRules?>? activeAssignmentRules;
  /// An `eligibleAssignmentRules` block as defined below.
  final pulumi.Input<RoleManagementPolicyEligibleAssignmentRules?>? eligibleAssignmentRules;
  /// A `notificationRules` block as defined below.
  final pulumi.Input<RoleManagementPolicyNotificationRules?>? notificationRules;
  /// The scoped Role Definition ID of the role for which this policy will apply. Changing this forces a new resource to be created.
  final pulumi.Input<String> roleDefinitionId;
  /// The scope to which this Role Management Policy will apply. Can refer to a management group, a subscription, a resource group or a resource. Changing this forces a new resource to be created.
  final pulumi.Input<String> scope;

  /// Creates a new [RoleManagementPolicyArgs].
  /// [activationRules] An `activationRules` block as defined below.
  /// [activeAssignmentRules] An `activeAssignmentRules` block as defined below.
  /// [eligibleAssignmentRules] An `eligibleAssignmentRules` block as defined below.
  /// [notificationRules] A `notificationRules` block as defined below.
  /// [roleDefinitionId] The scoped Role Definition ID of the role for which this policy will apply. Changing this forces a new resource to be created.
  /// [scope] The scope to which this Role Management Policy will apply. Can refer to a management group, a subscription, a resource group or a resource. Changing this forces a new resource to be created.
  const RoleManagementPolicyArgs({
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
      activationRules: (() { final guardedValue = map['activationRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoleManagementPolicyActivationRules.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      activeAssignmentRules: (() { final guardedValue = map['activeAssignmentRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoleManagementPolicyActiveAssignmentRules.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      eligibleAssignmentRules: (() { final guardedValue = map['eligibleAssignmentRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoleManagementPolicyEligibleAssignmentRules.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      notificationRules: (() { final guardedValue = map['notificationRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoleManagementPolicyNotificationRules.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      roleDefinitionId: pulumi.Input.fromValue(map['roleDefinitionId'] as String),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}
