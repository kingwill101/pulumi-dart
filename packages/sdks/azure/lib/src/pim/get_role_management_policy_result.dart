// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_role_management_policy_activation_rule.dart';
import 'get_role_management_policy_active_assignment_rule.dart';
import 'get_role_management_policy_eligible_assignment_rule.dart';
import 'get_role_management_policy_notification_rule.dart';

/// Result data returned by getRoleManagementPolicy.
class GetRoleManagementPolicyResult {
  /// An `activation_rules` block as defined below.
  final List<GetRoleManagementPolicyActivationRule> activationRules;
  /// An `active_assignment_rules` block as defined below.
  final List<GetRoleManagementPolicyActiveAssignmentRule> activeAssignmentRules;
  /// (String) The description of this policy.
  final String description;
  /// An `eligible_assignment_rules` block as defined below.
  final List<GetRoleManagementPolicyEligibleAssignmentRule> eligibleAssignmentRules;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// (String) The name of this policy, which is typically a UUID and may change over time.
  final String name;
  /// A `notification_rules` block as defined below.
  final List<GetRoleManagementPolicyNotificationRule> notificationRules;
  final String roleDefinitionId;
  final String scope;

  /// Creates a new [GetRoleManagementPolicyResult].
  /// [activationRules] An `activation_rules` block as defined below.
  /// [activeAssignmentRules] An `active_assignment_rules` block as defined below.
  /// [description] (String) The description of this policy.
  /// [eligibleAssignmentRules] An `eligible_assignment_rules` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] (String) The name of this policy, which is typically a UUID and may change over time.
  /// [notificationRules] A `notification_rules` block as defined below.
  /// [roleDefinitionId] Required.
  /// [scope] Required.
  GetRoleManagementPolicyResult({
    required this.activationRules,
    required this.activeAssignmentRules,
    required this.description,
    required this.eligibleAssignmentRules,
    required this.id,
    required this.name,
    required this.notificationRules,
    required this.roleDefinitionId,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationRules': pulumi.Input.encodeList<GetRoleManagementPolicyActivationRule, Map<String, dynamic>>(activationRules, (value) => value.toMap()),
      'activeAssignmentRules': pulumi.Input.encodeList<GetRoleManagementPolicyActiveAssignmentRule, Map<String, dynamic>>(activeAssignmentRules, (value) => value.toMap()),
      'description': description,
      'eligibleAssignmentRules': pulumi.Input.encodeList<GetRoleManagementPolicyEligibleAssignmentRule, Map<String, dynamic>>(eligibleAssignmentRules, (value) => value.toMap()),
      'id': id,
      'name': name,
      'notificationRules': pulumi.Input.encodeList<GetRoleManagementPolicyNotificationRule, Map<String, dynamic>>(notificationRules, (value) => value.toMap()),
      'roleDefinitionId': roleDefinitionId,
      'scope': scope,
    };
  }

  factory GetRoleManagementPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetRoleManagementPolicyResult(
      activationRules: pulumi.Input.decodeList<GetRoleManagementPolicyActivationRule>(map['activationRules'], (value) => GetRoleManagementPolicyActivationRule.fromMap((value as Map).cast<String, dynamic>())),
      activeAssignmentRules: pulumi.Input.decodeList<GetRoleManagementPolicyActiveAssignmentRule>(map['activeAssignmentRules'], (value) => GetRoleManagementPolicyActiveAssignmentRule.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      eligibleAssignmentRules: pulumi.Input.decodeList<GetRoleManagementPolicyEligibleAssignmentRule>(map['eligibleAssignmentRules'], (value) => GetRoleManagementPolicyEligibleAssignmentRule.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
      notificationRules: pulumi.Input.decodeList<GetRoleManagementPolicyNotificationRule>(map['notificationRules'], (value) => GetRoleManagementPolicyNotificationRule.fromMap((value as Map).cast<String, dynamic>())),
      roleDefinitionId: map['roleDefinitionId'] as String,
      scope: map['scope'] as String,
    );
  }
}

