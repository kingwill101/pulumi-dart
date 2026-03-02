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
  GroupRoleManagementPolicyNotificationRulesEligibleActivations({
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
      adminNotifications: map['adminNotifications'] == null ? null : (GroupRoleManagementPolicyNotificationRulesEligibleActivationsAdminNotifications.fromMap((map['adminNotifications'] as Map).cast<String, dynamic>())).input(),
      approverNotifications: map['approverNotifications'] == null ? null : (GroupRoleManagementPolicyNotificationRulesEligibleActivationsApproverNotifications.fromMap((map['approverNotifications'] as Map).cast<String, dynamic>())).input(),
      assigneeNotifications: map['assigneeNotifications'] == null ? null : (GroupRoleManagementPolicyNotificationRulesEligibleActivationsAssigneeNotifications.fromMap((map['assigneeNotifications'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

