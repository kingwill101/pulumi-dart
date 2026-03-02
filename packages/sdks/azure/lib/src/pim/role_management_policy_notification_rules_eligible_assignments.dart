// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_management_policy_notification_rules_eligible_assignments_admin_notifications.dart';
import 'role_management_policy_notification_rules_eligible_assignments_approver_notifications.dart';
import 'role_management_policy_notification_rules_eligible_assignments_assignee_notifications.dart';

class RoleManagementPolicyNotificationRulesEligibleAssignments {
  /// Admin notification settings
  final pulumi.Input<RoleManagementPolicyNotificationRulesEligibleAssignmentsAdminNotifications>? adminNotifications;
  /// Approver notification settings
  final pulumi.Input<RoleManagementPolicyNotificationRulesEligibleAssignmentsApproverNotifications>? approverNotifications;
  /// Assignee notification settings
  final pulumi.Input<RoleManagementPolicyNotificationRulesEligibleAssignmentsAssigneeNotifications>? assigneeNotifications;

  /// Creates a new [RoleManagementPolicyNotificationRulesEligibleAssignments].
  /// [adminNotifications] Admin notification settings
  /// [approverNotifications] Approver notification settings
  /// [assigneeNotifications] Assignee notification settings
  RoleManagementPolicyNotificationRulesEligibleAssignments({
    this.adminNotifications,
    this.approverNotifications,
    this.assigneeNotifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminNotifications': ?pulumi.Input.mapOptionalInputValue<RoleManagementPolicyNotificationRulesEligibleAssignmentsAdminNotifications, Map<String, dynamic>>(adminNotifications, (value) => value.toMap()),
      'approverNotifications': ?pulumi.Input.mapOptionalInputValue<RoleManagementPolicyNotificationRulesEligibleAssignmentsApproverNotifications, Map<String, dynamic>>(approverNotifications, (value) => value.toMap()),
      'assigneeNotifications': ?pulumi.Input.mapOptionalInputValue<RoleManagementPolicyNotificationRulesEligibleAssignmentsAssigneeNotifications, Map<String, dynamic>>(assigneeNotifications, (value) => value.toMap()),
    };
  }

  factory RoleManagementPolicyNotificationRulesEligibleAssignments.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyNotificationRulesEligibleAssignments(
      adminNotifications: map['adminNotifications'] == null ? null : (RoleManagementPolicyNotificationRulesEligibleAssignmentsAdminNotifications.fromMap((map['adminNotifications'] as Map).cast<String, dynamic>())).input(),
      approverNotifications: map['approverNotifications'] == null ? null : (RoleManagementPolicyNotificationRulesEligibleAssignmentsApproverNotifications.fromMap((map['approverNotifications'] as Map).cast<String, dynamic>())).input(),
      assigneeNotifications: map['assigneeNotifications'] == null ? null : (RoleManagementPolicyNotificationRulesEligibleAssignmentsAssigneeNotifications.fromMap((map['assigneeNotifications'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

