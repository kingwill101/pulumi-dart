// ignore_for_file: unused_element, unnecessary_cast

import 'role_management_policy_notification_rules_eligible_activations_admin_notifications.dart';
import 'role_management_policy_notification_rules_eligible_activations_approver_notifications.dart';
import 'role_management_policy_notification_rules_eligible_activations_assignee_notifications.dart';

class RoleManagementPolicyNotificationRulesEligibleActivations {
  /// Admin notification settings
  final RoleManagementPolicyNotificationRulesEligibleActivationsAdminNotifications? adminNotifications;
  /// Approver notification settings
  final RoleManagementPolicyNotificationRulesEligibleActivationsApproverNotifications? approverNotifications;
  /// Assignee notification settings
  final RoleManagementPolicyNotificationRulesEligibleActivationsAssigneeNotifications? assigneeNotifications;

  /// Creates a new [RoleManagementPolicyNotificationRulesEligibleActivations].
  /// [adminNotifications] Admin notification settings
  /// [approverNotifications] Approver notification settings
  /// [assigneeNotifications] Assignee notification settings
  RoleManagementPolicyNotificationRulesEligibleActivations({
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

  factory RoleManagementPolicyNotificationRulesEligibleActivations.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyNotificationRulesEligibleActivations(
      adminNotifications: map['adminNotifications'] == null ? null : RoleManagementPolicyNotificationRulesEligibleActivationsAdminNotifications.fromMap((map['adminNotifications'] as Map).cast<String, dynamic>()),
      approverNotifications: map['approverNotifications'] == null ? null : RoleManagementPolicyNotificationRulesEligibleActivationsApproverNotifications.fromMap((map['approverNotifications'] as Map).cast<String, dynamic>()),
      assigneeNotifications: map['assigneeNotifications'] == null ? null : RoleManagementPolicyNotificationRulesEligibleActivationsAssigneeNotifications.fromMap((map['assigneeNotifications'] as Map).cast<String, dynamic>()),
    );
  }
}

