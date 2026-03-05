// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_management_policy_notification_rules_eligible_activations_admin_notifications.dart';
import 'role_management_policy_notification_rules_eligible_activations_approver_notifications.dart';
import 'role_management_policy_notification_rules_eligible_activations_assignee_notifications.dart';

class RoleManagementPolicyNotificationRulesEligibleActivations {
  /// Admin notification settings
  final pulumi.Input<RoleManagementPolicyNotificationRulesEligibleActivationsAdminNotifications>? adminNotifications;
  /// Approver notification settings
  final pulumi.Input<RoleManagementPolicyNotificationRulesEligibleActivationsApproverNotifications>? approverNotifications;
  /// Assignee notification settings
  final pulumi.Input<RoleManagementPolicyNotificationRulesEligibleActivationsAssigneeNotifications>? assigneeNotifications;

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
      'adminNotifications': ?pulumi.Input.mapOptionalInputValue<RoleManagementPolicyNotificationRulesEligibleActivationsAdminNotifications, Map<String, dynamic>>(adminNotifications, (value) => value.toMap()),
      'approverNotifications': ?pulumi.Input.mapOptionalInputValue<RoleManagementPolicyNotificationRulesEligibleActivationsApproverNotifications, Map<String, dynamic>>(approverNotifications, (value) => value.toMap()),
      'assigneeNotifications': ?pulumi.Input.mapOptionalInputValue<RoleManagementPolicyNotificationRulesEligibleActivationsAssigneeNotifications, Map<String, dynamic>>(assigneeNotifications, (value) => value.toMap()),
    };
  }

  factory RoleManagementPolicyNotificationRulesEligibleActivations.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyNotificationRulesEligibleActivations(
      adminNotifications: (() { final guardedValue = map['adminNotifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoleManagementPolicyNotificationRulesEligibleActivationsAdminNotifications.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      approverNotifications: (() { final guardedValue = map['approverNotifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoleManagementPolicyNotificationRulesEligibleActivationsApproverNotifications.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      assigneeNotifications: (() { final guardedValue = map['assigneeNotifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoleManagementPolicyNotificationRulesEligibleActivationsAssigneeNotifications.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

