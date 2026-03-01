// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_role_management_policy_notification_rule_active_assignment.dart';
import 'get_role_management_policy_notification_rule_eligible_activation.dart';
import 'get_role_management_policy_notification_rule_eligible_assignment.dart';

class GetRoleManagementPolicyNotificationRule {
  /// A `notification_target` block as defined below with the details of notfications on active role assignments.
  final List<GetRoleManagementPolicyNotificationRuleActiveAssignment> activeAssignments;
  /// A `notification_target` block as defined below with the details of notifications on activation of eligible role.
  final List<GetRoleManagementPolicyNotificationRuleEligibleActivation> eligibleActivations;
  /// A `notification_target` block as defined below with the details of notifications on eligible role assignments.
  final List<GetRoleManagementPolicyNotificationRuleEligibleAssignment> eligibleAssignments;

  /// Creates a new [GetRoleManagementPolicyNotificationRule].
  /// [activeAssignments] A `notification_target` block as defined below with the details of notfications on active role assignments.
  /// [eligibleActivations] A `notification_target` block as defined below with the details of notifications on activation of eligible role.
  /// [eligibleAssignments] A `notification_target` block as defined below with the details of notifications on eligible role assignments.
  GetRoleManagementPolicyNotificationRule({
    required this.activeAssignments,
    required this.eligibleActivations,
    required this.eligibleAssignments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeAssignments': pulumi.Input.encodeList<GetRoleManagementPolicyNotificationRuleActiveAssignment, Map<String, dynamic>>(activeAssignments, (value) => value.toMap()),
      'eligibleActivations': pulumi.Input.encodeList<GetRoleManagementPolicyNotificationRuleEligibleActivation, Map<String, dynamic>>(eligibleActivations, (value) => value.toMap()),
      'eligibleAssignments': pulumi.Input.encodeList<GetRoleManagementPolicyNotificationRuleEligibleAssignment, Map<String, dynamic>>(eligibleAssignments, (value) => value.toMap()),
    };
  }

  factory GetRoleManagementPolicyNotificationRule.fromMap(Map<String, dynamic> map) {
    return GetRoleManagementPolicyNotificationRule(
      activeAssignments: pulumi.Input.decodeList<GetRoleManagementPolicyNotificationRuleActiveAssignment>(map['activeAssignments'], (value) => GetRoleManagementPolicyNotificationRuleActiveAssignment.fromMap((value as Map).cast<String, dynamic>())),
      eligibleActivations: pulumi.Input.decodeList<GetRoleManagementPolicyNotificationRuleEligibleActivation>(map['eligibleActivations'], (value) => GetRoleManagementPolicyNotificationRuleEligibleActivation.fromMap((value as Map).cast<String, dynamic>())),
      eligibleAssignments: pulumi.Input.decodeList<GetRoleManagementPolicyNotificationRuleEligibleAssignment>(map['eligibleAssignments'], (value) => GetRoleManagementPolicyNotificationRuleEligibleAssignment.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

