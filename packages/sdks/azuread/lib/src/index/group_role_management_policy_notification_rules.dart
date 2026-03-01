// ignore_for_file: unused_element, unnecessary_cast

import 'group_role_management_policy_notification_rules_active_assignments.dart';
import 'group_role_management_policy_notification_rules_eligible_activations.dart';
import 'group_role_management_policy_notification_rules_eligible_assignments.dart';

class GroupRoleManagementPolicyNotificationRules {
  /// A `notification_target` block as defined below to configure notfications on active role assignments.
  final GroupRoleManagementPolicyNotificationRulesActiveAssignments? activeAssignments;
  /// A `notification_target` block as defined below for configuring notifications on activation of eligible role.
  final GroupRoleManagementPolicyNotificationRulesEligibleActivations? eligibleActivations;
  /// A `notification_target` block as defined below to configure notification on eligible role assignments.
  ///
  /// At least one `notification_target` block must be provided.
  final GroupRoleManagementPolicyNotificationRulesEligibleAssignments? eligibleAssignments;

  /// Creates a new [GroupRoleManagementPolicyNotificationRules].
  /// [activeAssignments] A `notification_target` block as defined below to configure notfications on active role assignments.
  /// [eligibleActivations] A `notification_target` block as defined below for configuring notifications on activation of eligible role.
  /// [eligibleAssignments] A `notification_target` block as defined below to configure notification on eligible role assignments.
  GroupRoleManagementPolicyNotificationRules({
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

  factory GroupRoleManagementPolicyNotificationRules.fromMap(Map<String, dynamic> map) {
    return GroupRoleManagementPolicyNotificationRules(
      activeAssignments: map['activeAssignments'] == null ? null : GroupRoleManagementPolicyNotificationRulesActiveAssignments.fromMap((map['activeAssignments'] as Map).cast<String, dynamic>()),
      eligibleActivations: map['eligibleActivations'] == null ? null : GroupRoleManagementPolicyNotificationRulesEligibleActivations.fromMap((map['eligibleActivations'] as Map).cast<String, dynamic>()),
      eligibleAssignments: map['eligibleAssignments'] == null ? null : GroupRoleManagementPolicyNotificationRulesEligibleAssignments.fromMap((map['eligibleAssignments'] as Map).cast<String, dynamic>()),
    );
  }
}

