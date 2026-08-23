// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_role_management_policy_notification_rule_active_assignment.dart';
import 'get_role_management_policy_notification_rule_eligible_activation.dart';
import 'get_role_management_policy_notification_rule_eligible_assignment.dart';

class GetRoleManagementPolicyNotificationRule {
  /// A `notificationTarget` block as defined below with the details of notfications on active role assignments.
  final pulumi.Input<List<GetRoleManagementPolicyNotificationRuleActiveAssignment>> activeAssignments;
  /// A `notificationTarget` block as defined below with the details of notifications on activation of eligible role.
  final pulumi.Input<List<GetRoleManagementPolicyNotificationRuleEligibleActivation>> eligibleActivations;
  /// A `notificationTarget` block as defined below with the details of notifications on eligible role assignments.
  final pulumi.Input<List<GetRoleManagementPolicyNotificationRuleEligibleAssignment>> eligibleAssignments;

  /// Creates a new [GetRoleManagementPolicyNotificationRule].
  /// [activeAssignments] A `notificationTarget` block as defined below with the details of notfications on active role assignments.
  /// [eligibleActivations] A `notificationTarget` block as defined below with the details of notifications on activation of eligible role.
  /// [eligibleAssignments] A `notificationTarget` block as defined below with the details of notifications on eligible role assignments.
  const GetRoleManagementPolicyNotificationRule({
    required this.activeAssignments,
    required this.eligibleActivations,
    required this.eligibleAssignments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeAssignments': pulumi.Input.mapInputValue<List<GetRoleManagementPolicyNotificationRuleActiveAssignment>, List<Map<String, dynamic>>>(activeAssignments, (value) => pulumi.Input.encodeList<GetRoleManagementPolicyNotificationRuleActiveAssignment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'eligibleActivations': pulumi.Input.mapInputValue<List<GetRoleManagementPolicyNotificationRuleEligibleActivation>, List<Map<String, dynamic>>>(eligibleActivations, (value) => pulumi.Input.encodeList<GetRoleManagementPolicyNotificationRuleEligibleActivation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'eligibleAssignments': pulumi.Input.mapInputValue<List<GetRoleManagementPolicyNotificationRuleEligibleAssignment>, List<Map<String, dynamic>>>(eligibleAssignments, (value) => pulumi.Input.encodeList<GetRoleManagementPolicyNotificationRuleEligibleAssignment, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRoleManagementPolicyNotificationRule.fromMap(Map<String, dynamic> map) {
    return GetRoleManagementPolicyNotificationRule(
      activeAssignments: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRoleManagementPolicyNotificationRuleActiveAssignment>(map['activeAssignments']!, (value) => GetRoleManagementPolicyNotificationRuleActiveAssignment.fromMap((value as Map).cast<String, dynamic>()))),
      eligibleActivations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRoleManagementPolicyNotificationRuleEligibleActivation>(map['eligibleActivations']!, (value) => GetRoleManagementPolicyNotificationRuleEligibleActivation.fromMap((value as Map).cast<String, dynamic>()))),
      eligibleAssignments: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRoleManagementPolicyNotificationRuleEligibleAssignment>(map['eligibleAssignments']!, (value) => GetRoleManagementPolicyNotificationRuleEligibleAssignment.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
