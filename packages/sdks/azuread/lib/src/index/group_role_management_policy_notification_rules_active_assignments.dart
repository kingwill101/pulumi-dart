// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_role_management_policy_notification_rules_active_assignments_admin_notifications.dart';
import 'group_role_management_policy_notification_rules_active_assignments_approver_notifications.dart';
import 'group_role_management_policy_notification_rules_active_assignments_assignee_notifications.dart';

class GroupRoleManagementPolicyNotificationRulesActiveAssignments {
  /// Admin notification settings
  final pulumi.Input<GroupRoleManagementPolicyNotificationRulesActiveAssignmentsAdminNotifications>? adminNotifications;
  /// Approver notification settings
  final pulumi.Input<GroupRoleManagementPolicyNotificationRulesActiveAssignmentsApproverNotifications>? approverNotifications;
  /// Assignee notification settings
  final pulumi.Input<GroupRoleManagementPolicyNotificationRulesActiveAssignmentsAssigneeNotifications>? assigneeNotifications;

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
      'adminNotifications': ?pulumi.Input.mapOptionalInputValue<GroupRoleManagementPolicyNotificationRulesActiveAssignmentsAdminNotifications, Map<String, dynamic>>(adminNotifications, (value) => value.toMap()),
      'approverNotifications': ?pulumi.Input.mapOptionalInputValue<GroupRoleManagementPolicyNotificationRulesActiveAssignmentsApproverNotifications, Map<String, dynamic>>(approverNotifications, (value) => value.toMap()),
      'assigneeNotifications': ?pulumi.Input.mapOptionalInputValue<GroupRoleManagementPolicyNotificationRulesActiveAssignmentsAssigneeNotifications, Map<String, dynamic>>(assigneeNotifications, (value) => value.toMap()),
    };
  }

  factory GroupRoleManagementPolicyNotificationRulesActiveAssignments.fromMap(Map<String, dynamic> map) {
    return GroupRoleManagementPolicyNotificationRulesActiveAssignments(
      adminNotifications: map['adminNotifications'] == null ? null : (GroupRoleManagementPolicyNotificationRulesActiveAssignmentsAdminNotifications.fromMap((map['adminNotifications'] as Map).cast<String, dynamic>())).input(),
      approverNotifications: map['approverNotifications'] == null ? null : (GroupRoleManagementPolicyNotificationRulesActiveAssignmentsApproverNotifications.fromMap((map['approverNotifications'] as Map).cast<String, dynamic>())).input(),
      assigneeNotifications: map['assigneeNotifications'] == null ? null : (GroupRoleManagementPolicyNotificationRulesActiveAssignmentsAssigneeNotifications.fromMap((map['assigneeNotifications'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

