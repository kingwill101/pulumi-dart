// ignore_for_file: unused_element, unnecessary_cast

import 'group_role_management_policy_notification_rules_active_assignments_admin_notifications.dart';
import 'group_role_management_policy_notification_rules_active_assignments_approver_notifications.dart';
import 'group_role_management_policy_notification_rules_active_assignments_assignee_notifications.dart';

class GroupRoleManagementPolicyNotificationRulesActiveAssignments {
  /// Admin notification settings
  final GroupRoleManagementPolicyNotificationRulesActiveAssignmentsAdminNotifications? adminNotifications;
  /// Approver notification settings
  final GroupRoleManagementPolicyNotificationRulesActiveAssignmentsApproverNotifications? approverNotifications;
  /// Assignee notification settings
  final GroupRoleManagementPolicyNotificationRulesActiveAssignmentsAssigneeNotifications? assigneeNotifications;

  /// Creates a new [GroupRoleManagementPolicyNotificationRulesActiveAssignments].
  /// [adminNotifications] Admin notification settings
  /// [approverNotifications] Approver notification settings
  /// [assigneeNotifications] Assignee notification settings
  GroupRoleManagementPolicyNotificationRulesActiveAssignments({
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

  factory GroupRoleManagementPolicyNotificationRulesActiveAssignments.fromMap(Map<String, dynamic> map) {
    return GroupRoleManagementPolicyNotificationRulesActiveAssignments(
      adminNotifications: map['adminNotifications'] == null ? null : GroupRoleManagementPolicyNotificationRulesActiveAssignmentsAdminNotifications.fromMap((map['adminNotifications'] as Map).cast<String, dynamic>()),
      approverNotifications: map['approverNotifications'] == null ? null : GroupRoleManagementPolicyNotificationRulesActiveAssignmentsApproverNotifications.fromMap((map['approverNotifications'] as Map).cast<String, dynamic>()),
      assigneeNotifications: map['assigneeNotifications'] == null ? null : GroupRoleManagementPolicyNotificationRulesActiveAssignmentsAssigneeNotifications.fromMap((map['assigneeNotifications'] as Map).cast<String, dynamic>()),
    );
  }
}

