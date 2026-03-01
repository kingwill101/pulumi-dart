// ignore_for_file: unused_element, unnecessary_cast

import 'group_role_management_policy_notification_rules_eligible_assignments_admin_notifications.dart';
import 'group_role_management_policy_notification_rules_eligible_assignments_approver_notifications.dart';
import 'group_role_management_policy_notification_rules_eligible_assignments_assignee_notifications.dart';

class GroupRoleManagementPolicyNotificationRulesEligibleAssignments {
  /// Admin notification settings
  final GroupRoleManagementPolicyNotificationRulesEligibleAssignmentsAdminNotifications? adminNotifications;
  /// Approver notification settings
  final GroupRoleManagementPolicyNotificationRulesEligibleAssignmentsApproverNotifications? approverNotifications;
  /// Assignee notification settings
  final GroupRoleManagementPolicyNotificationRulesEligibleAssignmentsAssigneeNotifications? assigneeNotifications;

  /// Creates a new [GroupRoleManagementPolicyNotificationRulesEligibleAssignments].
  /// [adminNotifications] Admin notification settings
  /// [approverNotifications] Approver notification settings
  /// [assigneeNotifications] Assignee notification settings
  GroupRoleManagementPolicyNotificationRulesEligibleAssignments({
    this.adminNotifications,
    this.approverNotifications,
    this.assigneeNotifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminNotifications': ?adminNotifications == null ? null : adminNotifications!.toMap(),
      'approverNotifications': ?approverNotifications == null ? null : approverNotifications!.toMap(),
      'assigneeNotifications': ?assigneeNotifications == null ? null : assigneeNotifications!.toMap(),
    };
  }

  factory GroupRoleManagementPolicyNotificationRulesEligibleAssignments.fromMap(Map<String, dynamic> map) {
    return GroupRoleManagementPolicyNotificationRulesEligibleAssignments(
      adminNotifications: map['adminNotifications'] == null ? null : GroupRoleManagementPolicyNotificationRulesEligibleAssignmentsAdminNotifications.fromMap((map['adminNotifications'] as Map).cast<String, dynamic>()),
      approverNotifications: map['approverNotifications'] == null ? null : GroupRoleManagementPolicyNotificationRulesEligibleAssignmentsApproverNotifications.fromMap((map['approverNotifications'] as Map).cast<String, dynamic>()),
      assigneeNotifications: map['assigneeNotifications'] == null ? null : GroupRoleManagementPolicyNotificationRulesEligibleAssignmentsAssigneeNotifications.fromMap((map['assigneeNotifications'] as Map).cast<String, dynamic>()),
    );
  }
}

