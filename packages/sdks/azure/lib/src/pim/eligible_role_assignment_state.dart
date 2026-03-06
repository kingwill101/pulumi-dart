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
  /// &gt; **Note:** `condition_version` is required when specifying `condition` and vice versa.
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
  const EligibleRoleAssignmentState({
    this.condition,
    this.conditionVersion,
    this.justification,
    this.principalId,
    this.principalType,
    this.roleDefinitionId,
    this.schedule,
    this.scope,
    this.ticket,
  });

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
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      conditionVersion: (() { final guardedValue = map['conditionVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      justification: (() { final guardedValue = map['justification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalType: (() { final guardedValue = map['principalType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleDefinitionId: (() { final guardedValue = map['roleDefinitionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EligibleRoleAssignmentSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ticket: (() { final guardedValue = map['ticket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EligibleRoleAssignmentTicket.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

