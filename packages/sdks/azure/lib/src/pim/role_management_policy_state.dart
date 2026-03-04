// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_management_policy_activation_rules.dart';
import 'role_management_policy_active_assignment_rules.dart';
import 'role_management_policy_eligible_assignment_rules.dart';
import 'role_management_policy_notification_rules.dart';

/// Input properties used for looking up and filtering RoleManagementPolicy resources.
class RoleManagementPolicyState {
  /// An `activation_rules` block as defined below.
  final pulumi.Input<RoleManagementPolicyActivationRules>? activationRules;

  /// An `active_assignment_rules` block as defined below.
  final pulumi.Input<RoleManagementPolicyActiveAssignmentRules>?
  activeAssignmentRules;

  /// (String) The description of this policy.
  final pulumi.Input<String>? description;

  /// An `eligible_assignment_rules` block as defined below.
  final pulumi.Input<RoleManagementPolicyEligibleAssignmentRules>?
  eligibleAssignmentRules;

  /// (String) The name of this policy, which is typically a UUID and may change over time.
  final pulumi.Input<String>? name;

  /// A `notification_rules` block as defined below.
  final pulumi.Input<RoleManagementPolicyNotificationRules>? notificationRules;

  /// The scoped Role Definition ID of the role for which this policy will apply. Changing this forces a new resource to be created.
  final pulumi.Input<String>? roleDefinitionId;

  /// The scope to which this Role Management Policy will apply. Can refer to a management group, a subscription, a resource group or a resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? scope;

  /// Creates a new [RoleManagementPolicyState].
  /// [activationRules] An `activation_rules` block as defined below.
  /// [activeAssignmentRules] An `active_assignment_rules` block as defined below.
  /// [description] (String) The description of this policy.
  /// [eligibleAssignmentRules] An `eligible_assignment_rules` block as defined below.
  /// [name] (String) The name of this policy, which is typically a UUID and may change over time.
  /// [notificationRules] A `notification_rules` block as defined below.
  /// [roleDefinitionId] The scoped Role Definition ID of the role for which this policy will apply. Changing this forces a new resource to be created.
  /// [scope] The scope to which this Role Management Policy will apply. Can refer to a management group, a subscription, a resource group or a resource. Changing this forces a new resource to be created.
  RoleManagementPolicyState({
    this.activationRules,
    this.activeAssignmentRules,
    this.description,
    this.eligibleAssignmentRules,
    this.name,
    this.notificationRules,
    this.roleDefinitionId,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationRules':
          ?pulumi.Input.mapOptionalInputValue<
            RoleManagementPolicyActivationRules,
            Map<String, dynamic>
          >(activationRules, (value) => value.toMap()),
      'activeAssignmentRules':
          ?pulumi.Input.mapOptionalInputValue<
            RoleManagementPolicyActiveAssignmentRules,
            Map<String, dynamic>
          >(activeAssignmentRules, (value) => value.toMap()),
      'description': ?description,
      'eligibleAssignmentRules':
          ?pulumi.Input.mapOptionalInputValue<
            RoleManagementPolicyEligibleAssignmentRules,
            Map<String, dynamic>
          >(eligibleAssignmentRules, (value) => value.toMap()),
      'name': ?name,
      'notificationRules':
          ?pulumi.Input.mapOptionalInputValue<
            RoleManagementPolicyNotificationRules,
            Map<String, dynamic>
          >(notificationRules, (value) => value.toMap()),
      'roleDefinitionId': ?roleDefinitionId,
      'scope': ?scope,
    };
  }

  factory RoleManagementPolicyState.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyState(
      activationRules: (() {
        final guardedValue = map['activationRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RoleManagementPolicyActivationRules.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      activeAssignmentRules: (() {
        final guardedValue = map['activeAssignmentRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RoleManagementPolicyActiveAssignmentRules.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eligibleAssignmentRules: (() {
        final guardedValue = map['eligibleAssignmentRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RoleManagementPolicyEligibleAssignmentRules.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      notificationRules: (() {
        final guardedValue = map['notificationRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RoleManagementPolicyNotificationRules.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      roleDefinitionId: (() {
        final guardedValue = map['roleDefinitionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scope: (() {
        final guardedValue = map['scope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
