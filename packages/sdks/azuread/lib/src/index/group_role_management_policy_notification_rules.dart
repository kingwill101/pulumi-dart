// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_role_management_policy_notification_rules_active_assignments.dart';
import 'group_role_management_policy_notification_rules_eligible_activations.dart';
import 'group_role_management_policy_notification_rules_eligible_assignments.dart';

class GroupRoleManagementPolicyNotificationRules {
  /// A `notificationTarget` block as defined below to configure notfications on active role assignments.
  final pulumi.Input<GroupRoleManagementPolicyNotificationRulesActiveAssignments>? activeAssignments;
  /// A `notificationTarget` block as defined below for configuring notifications on activation of eligible role.
  final pulumi.Input<GroupRoleManagementPolicyNotificationRulesEligibleActivations>? eligibleActivations;
  /// A `notificationTarget` block as defined below to configure notification on eligible role assignments.
  ///
  /// At least one `notificationTarget` block must be provided.
  final pulumi.Input<GroupRoleManagementPolicyNotificationRulesEligibleAssignments>? eligibleAssignments;

  /// Creates a new [GroupRoleManagementPolicyNotificationRules].
  /// [activeAssignments] A `notificationTarget` block as defined below to configure notfications on active role assignments.
  /// [eligibleActivations] A `notificationTarget` block as defined below for configuring notifications on activation of eligible role.
  /// [eligibleAssignments] A `notificationTarget` block as defined below to configure notification on eligible role assignments.
  const GroupRoleManagementPolicyNotificationRules({
    this.activeAssignments,
    this.eligibleActivations,
    this.eligibleAssignments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeAssignments': ?pulumi.Input.mapOptionalInputValue<GroupRoleManagementPolicyNotificationRulesActiveAssignments, Map<String, dynamic>>(activeAssignments, (value) => value.toMap()),
      'eligibleActivations': ?pulumi.Input.mapOptionalInputValue<GroupRoleManagementPolicyNotificationRulesEligibleActivations, Map<String, dynamic>>(eligibleActivations, (value) => value.toMap()),
      'eligibleAssignments': ?pulumi.Input.mapOptionalInputValue<GroupRoleManagementPolicyNotificationRulesEligibleAssignments, Map<String, dynamic>>(eligibleAssignments, (value) => value.toMap()),
    };
  }

  factory GroupRoleManagementPolicyNotificationRules.fromMap(Map<String, dynamic> map) {
    return GroupRoleManagementPolicyNotificationRules(
      activeAssignments: (() { final guardedValue = map['activeAssignments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupRoleManagementPolicyNotificationRulesActiveAssignments.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      eligibleActivations: (() { final guardedValue = map['eligibleActivations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupRoleManagementPolicyNotificationRulesEligibleActivations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      eligibleAssignments: (() { final guardedValue = map['eligibleAssignments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupRoleManagementPolicyNotificationRulesEligibleAssignments.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
