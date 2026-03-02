// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_role_management_policy_notification_rules_eligible_assignments_admin_notifications.dart';
import 'group_role_management_policy_notification_rules_eligible_assignments_approver_notifications.dart';
import 'group_role_management_policy_notification_rules_eligible_assignments_assignee_notifications.dart';

class GroupRoleManagementPolicyNotificationRulesEligibleAssignments {
  /// Admin notification settings
  final pulumi.Input<GroupRoleManagementPolicyNotificationRulesEligibleAssignmentsAdminNotifications>? adminNotifications;
  /// Approver notification settings
  final pulumi.Input<GroupRoleManagementPolicyNotificationRulesEligibleAssignmentsApproverNotifications>? approverNotifications;
  /// Assignee notification settings
  final pulumi.Input<GroupRoleManagementPolicyNotificationRulesEligibleAssignmentsAssigneeNotifications>? assigneeNotifications;

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
      'adminNotifications': ?pulumi.Input.mapOptionalInputValue<GroupRoleManagementPolicyNotificationRulesEligibleAssignmentsAdminNotifications, Map<String, dynamic>>(adminNotifications, (value) => value.toMap()),
      'approverNotifications': ?pulumi.Input.mapOptionalInputValue<GroupRoleManagementPolicyNotificationRulesEligibleAssignmentsApproverNotifications, Map<String, dynamic>>(approverNotifications, (value) => value.toMap()),
      'assigneeNotifications': ?pulumi.Input.mapOptionalInputValue<GroupRoleManagementPolicyNotificationRulesEligibleAssignmentsAssigneeNotifications, Map<String, dynamic>>(assigneeNotifications, (value) => value.toMap()),
    };
  }

  factory GroupRoleManagementPolicyNotificationRulesEligibleAssignments.fromMap(Map<String, dynamic> map) {
    return GroupRoleManagementPolicyNotificationRulesEligibleAssignments(
      adminNotifications: map['adminNotifications'] == null ? null : (GroupRoleManagementPolicyNotificationRulesEligibleAssignmentsAdminNotifications.fromMap((map['adminNotifications'] as Map).cast<String, dynamic>())).input(),
      approverNotifications: map['approverNotifications'] == null ? null : (GroupRoleManagementPolicyNotificationRulesEligibleAssignmentsApproverNotifications.fromMap((map['approverNotifications'] as Map).cast<String, dynamic>())).input(),
      assigneeNotifications: map['assigneeNotifications'] == null ? null : (GroupRoleManagementPolicyNotificationRulesEligibleAssignmentsAssigneeNotifications.fromMap((map['assigneeNotifications'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

