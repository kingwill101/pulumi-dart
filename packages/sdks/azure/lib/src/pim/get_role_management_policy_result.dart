// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_role_management_policy_activation_rule.dart';
import 'get_role_management_policy_active_assignment_rule.dart';
import 'get_role_management_policy_eligible_assignment_rule.dart';
import 'get_role_management_policy_notification_rule.dart';

/// Result data returned by getRoleManagementPolicy.
class GetRoleManagementPolicyResult {
  /// An `activationRules` block as defined below.
  final List<GetRoleManagementPolicyActivationRule>? activationRules;
  /// An `activeAssignmentRules` block as defined below.
  final List<GetRoleManagementPolicyActiveAssignmentRule>? activeAssignmentRules;
  /// (String) The description of this policy.
  final String? description;
  /// An `eligibleAssignmentRules` block as defined below.
  final List<GetRoleManagementPolicyEligibleAssignmentRule>? eligibleAssignmentRules;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// (String) The name of this policy, which is typically a UUID and may change over time.
  final String? name;
  /// A `notificationRules` block as defined below.
  final List<GetRoleManagementPolicyNotificationRule>? notificationRules;
  final String? roleDefinitionId;
  final String? scope;

  /// Creates a new [GetRoleManagementPolicyResult].
  /// [activationRules] An `activationRules` block as defined below.
  /// [activeAssignmentRules] An `activeAssignmentRules` block as defined below.
  /// [description] (String) The description of this policy.
  /// [eligibleAssignmentRules] An `eligibleAssignmentRules` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] (String) The name of this policy, which is typically a UUID and may change over time.
  /// [notificationRules] A `notificationRules` block as defined below.
  /// [roleDefinitionId] Optional.
  /// [scope] Optional.
  const GetRoleManagementPolicyResult({
    this.activationRules,
    this.activeAssignmentRules,
    this.description,
    this.eligibleAssignmentRules,
    this.id,
    this.name,
    this.notificationRules,
    this.roleDefinitionId,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationRules': ?(() { final guardedValue = activationRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRoleManagementPolicyActivationRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'activeAssignmentRules': ?(() { final guardedValue = activeAssignmentRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRoleManagementPolicyActiveAssignmentRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'description': ?description,
      'eligibleAssignmentRules': ?(() { final guardedValue = eligibleAssignmentRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRoleManagementPolicyEligibleAssignmentRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
      'notificationRules': ?(() { final guardedValue = notificationRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRoleManagementPolicyNotificationRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'roleDefinitionId': ?roleDefinitionId,
      'scope': ?scope,
    };
  }

  factory GetRoleManagementPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetRoleManagementPolicyResult(
      activationRules: (() { final guardedValue = map['activationRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRoleManagementPolicyActivationRule>(guardedValue, (value) => GetRoleManagementPolicyActivationRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      activeAssignmentRules: (() { final guardedValue = map['activeAssignmentRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRoleManagementPolicyActiveAssignmentRule>(guardedValue, (value) => GetRoleManagementPolicyActiveAssignmentRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eligibleAssignmentRules: (() { final guardedValue = map['eligibleAssignmentRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRoleManagementPolicyEligibleAssignmentRule>(guardedValue, (value) => GetRoleManagementPolicyEligibleAssignmentRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notificationRules: (() { final guardedValue = map['notificationRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRoleManagementPolicyNotificationRule>(guardedValue, (value) => GetRoleManagementPolicyNotificationRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      roleDefinitionId: (() { final guardedValue = map['roleDefinitionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
