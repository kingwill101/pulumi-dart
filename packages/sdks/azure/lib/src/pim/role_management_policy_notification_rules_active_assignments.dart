// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_management_policy_notification_rules_active_assignments_admin_notifications.dart';
import 'role_management_policy_notification_rules_active_assignments_approver_notifications.dart';
import 'role_management_policy_notification_rules_active_assignments_assignee_notifications.dart';

class RoleManagementPolicyNotificationRulesActiveAssignments {
  /// Admin notification settings
  final pulumi.Input<RoleManagementPolicyNotificationRulesActiveAssignmentsAdminNotifications?>? adminNotifications;
  /// Approver notification settings
  final pulumi.Input<RoleManagementPolicyNotificationRulesActiveAssignmentsApproverNotifications?>? approverNotifications;
  /// Assignee notification settings
  final pulumi.Input<RoleManagementPolicyNotificationRulesActiveAssignmentsAssigneeNotifications?>? assigneeNotifications;

  /// Creates a new [RoleManagementPolicyNotificationRulesActiveAssignments].
  /// [adminNotifications] Admin notification settings
  /// [approverNotifications] Approver notification settings
  /// [assigneeNotifications] Assignee notification settings
  const RoleManagementPolicyNotificationRulesActiveAssignments({
    this.adminNotifications,
    this.approverNotifications,
    this.assigneeNotifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminNotifications': ?pulumi.Input.mapOptionalInputValue<RoleManagementPolicyNotificationRulesActiveAssignmentsAdminNotifications, Map<String, dynamic>>(adminNotifications, (value) => value.toMap()),
      'approverNotifications': ?pulumi.Input.mapOptionalInputValue<RoleManagementPolicyNotificationRulesActiveAssignmentsApproverNotifications, Map<String, dynamic>>(approverNotifications, (value) => value.toMap()),
      'assigneeNotifications': ?pulumi.Input.mapOptionalInputValue<RoleManagementPolicyNotificationRulesActiveAssignmentsAssigneeNotifications, Map<String, dynamic>>(assigneeNotifications, (value) => value.toMap()),
    };
  }

  factory RoleManagementPolicyNotificationRulesActiveAssignments.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyNotificationRulesActiveAssignments(
      adminNotifications: (() { final guardedValue = map['adminNotifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoleManagementPolicyNotificationRulesActiveAssignmentsAdminNotifications.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      approverNotifications: (() { final guardedValue = map['approverNotifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoleManagementPolicyNotificationRulesActiveAssignmentsApproverNotifications.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      assigneeNotifications: (() { final guardedValue = map['assigneeNotifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoleManagementPolicyNotificationRulesActiveAssignmentsAssigneeNotifications.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
