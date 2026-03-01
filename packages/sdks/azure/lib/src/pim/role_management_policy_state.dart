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
  final pulumi.Input<RoleManagementPolicyActiveAssignmentRules>? activeAssignmentRules;
  /// (String) The description of this policy.
  final pulumi.Input<String>? description;
  /// An `eligible_assignment_rules` block as defined below.
  final pulumi.Input<RoleManagementPolicyEligibleAssignmentRules>? eligibleAssignmentRules;
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
    pulumi.Output<RoleManagementPolicyActivationRules>? activationRules,
    pulumi.Output<RoleManagementPolicyActiveAssignmentRules>? activeAssignmentRules,
    pulumi.Output<String>? description,
    pulumi.Output<RoleManagementPolicyEligibleAssignmentRules>? eligibleAssignmentRules,
    pulumi.Output<String>? name,
    pulumi.Output<RoleManagementPolicyNotificationRules>? notificationRules,
    pulumi.Output<String>? roleDefinitionId,
    pulumi.Output<String>? scope,
  }) :
      activationRules = pulumi.Input.asOptionalInput<RoleManagementPolicyActivationRules>(activationRules),
      activeAssignmentRules = pulumi.Input.asOptionalInput<RoleManagementPolicyActiveAssignmentRules>(activeAssignmentRules),
      description = pulumi.Input.asOptionalInput<String>(description),
      eligibleAssignmentRules = pulumi.Input.asOptionalInput<RoleManagementPolicyEligibleAssignmentRules>(eligibleAssignmentRules),
      name = pulumi.Input.asOptionalInput<String>(name),
      notificationRules = pulumi.Input.asOptionalInput<RoleManagementPolicyNotificationRules>(notificationRules),
      roleDefinitionId = pulumi.Input.asOptionalInput<String>(roleDefinitionId),
      scope = pulumi.Input.asOptionalInput<String>(scope);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationRules': ?pulumi.Input.mapOptionalInputValue<RoleManagementPolicyActivationRules, Map<String, dynamic>>(activationRules, (value) => value.toMap()),
      'activeAssignmentRules': ?pulumi.Input.mapOptionalInputValue<RoleManagementPolicyActiveAssignmentRules, Map<String, dynamic>>(activeAssignmentRules, (value) => value.toMap()),
      'description': ?description,
      'eligibleAssignmentRules': ?pulumi.Input.mapOptionalInputValue<RoleManagementPolicyEligibleAssignmentRules, Map<String, dynamic>>(eligibleAssignmentRules, (value) => value.toMap()),
      'name': ?name,
      'notificationRules': ?pulumi.Input.mapOptionalInputValue<RoleManagementPolicyNotificationRules, Map<String, dynamic>>(notificationRules, (value) => value.toMap()),
      'roleDefinitionId': ?roleDefinitionId,
      'scope': ?scope,
    };
  }

  factory RoleManagementPolicyState.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyState(
      activationRules: map['activationRules'] == null ? null : pulumi.Output.create<RoleManagementPolicyActivationRules>(RoleManagementPolicyActivationRules.fromMap((map['activationRules'] as Map).cast<String, dynamic>())),
      activeAssignmentRules: map['activeAssignmentRules'] == null ? null : pulumi.Output.create<RoleManagementPolicyActiveAssignmentRules>(RoleManagementPolicyActiveAssignmentRules.fromMap((map['activeAssignmentRules'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      eligibleAssignmentRules: map['eligibleAssignmentRules'] == null ? null : pulumi.Output.create<RoleManagementPolicyEligibleAssignmentRules>(RoleManagementPolicyEligibleAssignmentRules.fromMap((map['eligibleAssignmentRules'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notificationRules: map['notificationRules'] == null ? null : pulumi.Output.create<RoleManagementPolicyNotificationRules>(RoleManagementPolicyNotificationRules.fromMap((map['notificationRules'] as Map).cast<String, dynamic>())),
      roleDefinitionId: map['roleDefinitionId'] == null ? null : pulumi.Output.create<String>(map['roleDefinitionId'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
    );
  }
}

