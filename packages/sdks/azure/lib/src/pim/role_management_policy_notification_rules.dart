// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_management_policy_notification_rules_active_assignments.dart';
import 'role_management_policy_notification_rules_eligible_activations.dart';
import 'role_management_policy_notification_rules_eligible_assignments.dart';

class RoleManagementPolicyNotificationRules {
  /// A `notificationTarget` block as defined below to configure notfications on active role assignments.
  final pulumi.Input<RoleManagementPolicyNotificationRulesActiveAssignments?>? activeAssignments;
  /// A `notificationTarget` block as defined below for configuring notifications on activation of eligible role.
  final pulumi.Input<RoleManagementPolicyNotificationRulesEligibleActivations?>? eligibleActivations;
  /// A `notificationTarget` block as defined below to configure notification on eligible role assignments.
  final pulumi.Input<RoleManagementPolicyNotificationRulesEligibleAssignments?>? eligibleAssignments;

  /// Creates a new [RoleManagementPolicyNotificationRules].
  /// [activeAssignments] A `notificationTarget` block as defined below to configure notfications on active role assignments.
  /// [eligibleActivations] A `notificationTarget` block as defined below for configuring notifications on activation of eligible role.
  /// [eligibleAssignments] A `notificationTarget` block as defined below to configure notification on eligible role assignments.
  const RoleManagementPolicyNotificationRules({
    this.activeAssignments,
    this.eligibleActivations,
    this.eligibleAssignments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeAssignments': ?pulumi.Input.mapOptionalInputValue<RoleManagementPolicyNotificationRulesActiveAssignments, Map<String, dynamic>>(activeAssignments, (value) => value.toMap()),
      'eligibleActivations': ?pulumi.Input.mapOptionalInputValue<RoleManagementPolicyNotificationRulesEligibleActivations, Map<String, dynamic>>(eligibleActivations, (value) => value.toMap()),
      'eligibleAssignments': ?pulumi.Input.mapOptionalInputValue<RoleManagementPolicyNotificationRulesEligibleAssignments, Map<String, dynamic>>(eligibleAssignments, (value) => value.toMap()),
    };
  }

  factory RoleManagementPolicyNotificationRules.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyNotificationRules(
      activeAssignments: (() { final guardedValue = map['activeAssignments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoleManagementPolicyNotificationRulesActiveAssignments.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      eligibleActivations: (() { final guardedValue = map['eligibleActivations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoleManagementPolicyNotificationRulesEligibleActivations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      eligibleAssignments: (() { final guardedValue = map['eligibleAssignments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoleManagementPolicyNotificationRulesEligibleAssignments.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
