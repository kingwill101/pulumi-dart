// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_role_management_policy_notification_rule_active_assignment_admin_notification.dart';
import 'get_role_management_policy_notification_rule_active_assignment_approver_notification.dart';
import 'get_role_management_policy_notification_rule_active_assignment_assignee_notification.dart';

class GetRoleManagementPolicyNotificationRuleActiveAssignment {
  /// A `notification_settings` block as defined above.
  final pulumi.Input<List<GetRoleManagementPolicyNotificationRuleActiveAssignmentAdminNotification>> adminNotifications;
  /// A `notification_settings` block as defined above.
  final pulumi.Input<List<GetRoleManagementPolicyNotificationRuleActiveAssignmentApproverNotification>> approverNotifications;
  /// A `notification_settings` block as defined above.
  final pulumi.Input<List<GetRoleManagementPolicyNotificationRuleActiveAssignmentAssigneeNotification>> assigneeNotifications;

  /// Creates a new [GetRoleManagementPolicyNotificationRuleActiveAssignment].
  /// [adminNotifications] A `notification_settings` block as defined above.
  /// [approverNotifications] A `notification_settings` block as defined above.
  /// [assigneeNotifications] A `notification_settings` block as defined above.
  GetRoleManagementPolicyNotificationRuleActiveAssignment({
    required this.adminNotifications,
    required this.approverNotifications,
    required this.assigneeNotifications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminNotifications': pulumi.Input.mapInputValue<List<GetRoleManagementPolicyNotificationRuleActiveAssignmentAdminNotification>, List<Map<String, dynamic>>>(adminNotifications, (value) => pulumi.Input.encodeList<GetRoleManagementPolicyNotificationRuleActiveAssignmentAdminNotification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'approverNotifications': pulumi.Input.mapInputValue<List<GetRoleManagementPolicyNotificationRuleActiveAssignmentApproverNotification>, List<Map<String, dynamic>>>(approverNotifications, (value) => pulumi.Input.encodeList<GetRoleManagementPolicyNotificationRuleActiveAssignmentApproverNotification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'assigneeNotifications': pulumi.Input.mapInputValue<List<GetRoleManagementPolicyNotificationRuleActiveAssignmentAssigneeNotification>, List<Map<String, dynamic>>>(assigneeNotifications, (value) => pulumi.Input.encodeList<GetRoleManagementPolicyNotificationRuleActiveAssignmentAssigneeNotification, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRoleManagementPolicyNotificationRuleActiveAssignment.fromMap(Map<String, dynamic> map) {
    return GetRoleManagementPolicyNotificationRuleActiveAssignment(
      adminNotifications: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRoleManagementPolicyNotificationRuleActiveAssignmentAdminNotification>(map['adminNotifications']!, (value) => GetRoleManagementPolicyNotificationRuleActiveAssignmentAdminNotification.fromMap((value as Map).cast<String, dynamic>()))),
      approverNotifications: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRoleManagementPolicyNotificationRuleActiveAssignmentApproverNotification>(map['approverNotifications']!, (value) => GetRoleManagementPolicyNotificationRuleActiveAssignmentApproverNotification.fromMap((value as Map).cast<String, dynamic>()))),
      assigneeNotifications: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRoleManagementPolicyNotificationRuleActiveAssignmentAssigneeNotification>(map['assigneeNotifications']!, (value) => GetRoleManagementPolicyNotificationRuleActiveAssignmentAssigneeNotification.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

