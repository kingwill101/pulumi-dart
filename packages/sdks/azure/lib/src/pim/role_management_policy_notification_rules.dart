// ignore_for_file: unused_element, unnecessary_cast

import 'role_management_policy_notification_rules_active_assignments.dart';
import 'role_management_policy_notification_rules_eligible_activations.dart';
import 'role_management_policy_notification_rules_eligible_assignments.dart';

class RoleManagementPolicyNotificationRules {
  /// A `notification_target` block as defined below to configure notfications on active role assignments.
  final RoleManagementPolicyNotificationRulesActiveAssignments? activeAssignments;
  /// A `notification_target` block as defined below for configuring notifications on activation of eligible role.
  final RoleManagementPolicyNotificationRulesEligibleActivations? eligibleActivations;
  /// A `notification_target` block as defined below to configure notification on eligible role assignments.
  final RoleManagementPolicyNotificationRulesEligibleAssignments? eligibleAssignments;

  /// Creates a new [RoleManagementPolicyNotificationRules].
  /// [activeAssignments] A `notification_target` block as defined below to configure notfications on active role assignments.
  /// [eligibleActivations] A `notification_target` block as defined below for configuring notifications on activation of eligible role.
  /// [eligibleAssignments] A `notification_target` block as defined below to configure notification on eligible role assignments.
  RoleManagementPolicyNotificationRules({
    this.activeAssignments,
    this.eligibleActivations,
    this.eligibleAssignments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeAssignments': ?activeAssignments == null ? null : activeAssignments!.toMap(),
      'eligibleActivations': ?eligibleActivations == null ? null : eligibleActivations!.toMap(),
      'eligibleAssignments': ?eligibleAssignments == null ? null : eligibleAssignments!.toMap(),
    };
  }

  factory RoleManagementPolicyNotificationRules.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyNotificationRules(
      activeAssignments: map['activeAssignments'] == null ? null : RoleManagementPolicyNotificationRulesActiveAssignments.fromMap((map['activeAssignments'] as Map).cast<String, dynamic>()),
      eligibleActivations: map['eligibleActivations'] == null ? null : RoleManagementPolicyNotificationRulesEligibleActivations.fromMap((map['eligibleActivations'] as Map).cast<String, dynamic>()),
      eligibleAssignments: map['eligibleAssignments'] == null ? null : RoleManagementPolicyNotificationRulesEligibleAssignments.fromMap((map['eligibleAssignments'] as Map).cast<String, dynamic>()),
    );
  }
}

