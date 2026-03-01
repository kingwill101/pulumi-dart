// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'eligible_role_assignment_schedule.dart';
import 'eligible_role_assignment_ticket.dart';

/// Input properties used for looking up and filtering EligibleRoleAssignment resources.
class EligibleRoleAssignmentState {
  /// The condition that limits the resources that the role can be assigned to. See the [official conditions documentation](https://learn.microsoft.com/en-us/azure/role-based-access-control/conditions-overview#what-are-role-assignment-conditions) for details. Changing this forces a new resource to be created.
  final pulumi.Input<String>? condition;
  /// The version of the condition. Supported values include `2.0`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `condition_version` is required when specifying `condition` and vice versa.
  final pulumi.Input<String>? conditionVersion;
  /// The justification of the role assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? justification;
  /// Object ID of the principal for this eligible role assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? principalId;
  /// Type of principal to which the role will be assigned.
  final pulumi.Input<String>? principalType;
  /// The role definition ID for this eligible role assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? roleDefinitionId;
  /// A `schedule` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<EligibleRoleAssignmentSchedule>? schedule;
  /// The scope for this eligible role assignment, should be a valid resource ID. Changing this forces a new resource to be created.
  final pulumi.Input<String>? scope;
  /// A `ticket` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<EligibleRoleAssignmentTicket>? ticket;

  /// Creates a new [EligibleRoleAssignmentState].
  /// [condition] The condition that limits the resources that the role can be assigned to. See the [official conditions documentation](https://learn.microsoft.com/en-us/azure/role-based-access-control/conditions-overview#what-are-role-assignment-conditions) for details. Changing this forces a new resource to be created.
  /// [conditionVersion] The version of the condition. Supported values include `2.0`. Changing this forces a new resource to be created.
  /// [justification] The justification of the role assignment. Changing this forces a new resource to be created.
  /// [principalId] Object ID of the principal for this eligible role assignment. Changing this forces a new resource to be created.
  /// [principalType] Type of principal to which the role will be assigned.
  /// [roleDefinitionId] The role definition ID for this eligible role assignment. Changing this forces a new resource to be created.
  /// [schedule] A `schedule` block as defined below. Changing this forces a new resource to be created.
  /// [scope] The scope for this eligible role assignment, should be a valid resource ID. Changing this forces a new resource to be created.
  /// [ticket] A `ticket` block as defined below. Changing this forces a new resource to be created.
  EligibleRoleAssignmentState({
    pulumi.Output<String>? condition,
    pulumi.Output<String>? conditionVersion,
    pulumi.Output<String>? justification,
    pulumi.Output<String>? principalId,
    pulumi.Output<String>? principalType,
    pulumi.Output<String>? roleDefinitionId,
    pulumi.Output<EligibleRoleAssignmentSchedule>? schedule,
    pulumi.Output<String>? scope,
    pulumi.Output<EligibleRoleAssignmentTicket>? ticket,
  }) :
      condition = pulumi.Input.asOptionalInput<String>(condition),
      conditionVersion = pulumi.Input.asOptionalInput<String>(conditionVersion),
      justification = pulumi.Input.asOptionalInput<String>(justification),
      principalId = pulumi.Input.asOptionalInput<String>(principalId),
      principalType = pulumi.Input.asOptionalInput<String>(principalType),
      roleDefinitionId = pulumi.Input.asOptionalInput<String>(roleDefinitionId),
      schedule = pulumi.Input.asOptionalInput<EligibleRoleAssignmentSchedule>(schedule),
      scope = pulumi.Input.asOptionalInput<String>(scope),
      ticket = pulumi.Input.asOptionalInput<EligibleRoleAssignmentTicket>(ticket);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'conditionVersion': ?conditionVersion,
      'justification': ?justification,
      'principalId': ?principalId,
      'principalType': ?principalType,
      'roleDefinitionId': ?roleDefinitionId,
      'schedule': ?pulumi.Input.mapOptionalInputValue<EligibleRoleAssignmentSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'scope': ?scope,
      'ticket': ?pulumi.Input.mapOptionalInputValue<EligibleRoleAssignmentTicket, Map<String, dynamic>>(ticket, (value) => value.toMap()),
    };
  }

  factory EligibleRoleAssignmentState.fromMap(Map<String, dynamic> map) {
    return EligibleRoleAssignmentState(
      condition: map['condition'] == null ? null : pulumi.Output.create<String>(map['condition'] as String),
      conditionVersion: map['conditionVersion'] == null ? null : pulumi.Output.create<String>(map['conditionVersion'] as String),
      justification: map['justification'] == null ? null : pulumi.Output.create<String>(map['justification'] as String),
      principalId: map['principalId'] == null ? null : pulumi.Output.create<String>(map['principalId'] as String),
      principalType: map['principalType'] == null ? null : pulumi.Output.create<String>(map['principalType'] as String),
      roleDefinitionId: map['roleDefinitionId'] == null ? null : pulumi.Output.create<String>(map['roleDefinitionId'] as String),
      schedule: map['schedule'] == null ? null : pulumi.Output.create<EligibleRoleAssignmentSchedule>(EligibleRoleAssignmentSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>())),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
      ticket: map['ticket'] == null ? null : pulumi.Output.create<EligibleRoleAssignmentTicket>(EligibleRoleAssignmentTicket.fromMap((map['ticket'] as Map).cast<String, dynamic>())),
    );
  }
}

