// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_role_management_policy_notification_rules_eligible_activations_admin_notifications.dart';
import 'group_role_management_policy_notification_rules_eligible_activations_approver_notifications.dart';
import 'group_role_management_policy_notification_rules_eligible_activations_assignee_notifications.dart';

class GroupRoleManagementPolicyNotificationRulesEligibleActivations {
  /// Admin notification settings
  final pulumi.Input<GroupRoleManagementPolicyNotificationRulesEligibleActivationsAdminNotifications>? adminNotifications;
  /// Approver notification settings
  final pulumi.Input<GroupRoleManagementPolicyNotificationRulesEligibleActivationsApproverNotifications>? approverNotifications;
  /// Assignee notification settings
  final pulumi.Input<GroupRoleManagementPolicyNotificationRulesEligibleActivationsAssigneeNotifications>? assigneeNotifications;

  /// Creates a new [GroupRoleManagementPolicyNotificationRulesEligibleActivations].
  /// [adminNotifications] Admin notification settings
  /// [approverNotifications] Approver notification settings
  /// [assigneeNotifications] Assignee notification settings
  const GroupRoleManagementPolicyNotificationRulesEligibleActivations({
    this.adminNotifications,
    this.approverNotifications,
    this.assigneeNotifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminNotifications': ?pulumi.Input.mapOptionalInputValue<GroupRoleManagementPolicyNotificationRulesEligibleActivationsAdminNotifications, Map<String, dynamic>>(adminNotifications, (value) => value.toMap()),
      'approverNotifications': ?pulumi.Input.mapOptionalInputValue<GroupRoleManagementPolicyNotificationRulesEligibleActivationsApproverNotifications, Map<String, dynamic>>(approverNotifications, (value) => value.toMap()),
      'assigneeNotifications': ?pulumi.Input.mapOptionalInputValue<GroupRoleManagementPolicyNotificationRulesEligibleActivationsAssigneeNotifications, Map<String, dynamic>>(assigneeNotifications, (value) => value.toMap()),
    };
  }

  factory GroupRoleManagementPolicyNotificationRulesEligibleActivations.fromMap(Map<String, dynamic> map) {
    return GroupRoleManagementPolicyNotificationRulesEligibleActivations(
      adminNotifications: (() { final guardedValue = map['adminNotifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupRoleManagementPolicyNotificationRulesEligibleActivationsAdminNotifications.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      approverNotifications: (() { final guardedValue = map['approverNotifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupRoleManagementPolicyNotificationRulesEligibleActivationsApproverNotifications.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      assigneeNotifications: (() { final guardedValue = map['assigneeNotifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupRoleManagementPolicyNotificationRulesEligibleActivationsAssigneeNotifications.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
