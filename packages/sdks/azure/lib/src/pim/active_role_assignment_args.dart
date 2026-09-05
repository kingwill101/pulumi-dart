// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'active_role_assignment_schedule.dart';
import 'active_role_assignment_ticket.dart';

/// {@template pulumi_pim_active_role_assignment_active_role_assignment_args_doc}
/// The set of arguments for ActiveRoleAssignment.
/// {@endtemplate}
/// {@macro pulumi_pim_active_role_assignment_active_role_assignment_args_doc}
class ActiveRoleAssignmentArgs {
  /// The justification for the role assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? justification;
  /// Object ID of the principal for this role assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String> principalId;
  /// The role definition ID for this role assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String> roleDefinitionId;
  /// A `schedule` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ActiveRoleAssignmentSchedule?>? schedule;
  /// The scope for this role assignment, should be a valid resource ID. Changing this forces a new resource to be created.
  final pulumi.Input<String> scope;
  /// A `ticket` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ActiveRoleAssignmentTicket?>? ticket;

  /// Creates a new [ActiveRoleAssignmentArgs].
  /// [justification] The justification for the role assignment. Changing this forces a new resource to be created.
  /// [principalId] Object ID of the principal for this role assignment. Changing this forces a new resource to be created.
  /// [roleDefinitionId] The role definition ID for this role assignment. Changing this forces a new resource to be created.
  /// [schedule] A `schedule` block as defined below. Changing this forces a new resource to be created.
  /// [scope] The scope for this role assignment, should be a valid resource ID. Changing this forces a new resource to be created.
  /// [ticket] A `ticket` block as defined below. Changing this forces a new resource to be created.
  const ActiveRoleAssignmentArgs({
    this.justification,
    required this.principalId,
    required this.roleDefinitionId,
    this.schedule,
    required this.scope,
    this.ticket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'justification': ?justification,
      'principalId': principalId,
      'roleDefinitionId': roleDefinitionId,
      'schedule': ?pulumi.Input.mapOptionalInputValue<ActiveRoleAssignmentSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'scope': scope,
      'ticket': ?pulumi.Input.mapOptionalInputValue<ActiveRoleAssignmentTicket, Map<String, dynamic>>(ticket, (value) => value.toMap()),
    };
  }

  factory ActiveRoleAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return ActiveRoleAssignmentArgs(
      justification: (() { final guardedValue = map['justification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      roleDefinitionId: pulumi.Input.fromValue(map['roleDefinitionId'] as String),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActiveRoleAssignmentSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      ticket: (() { final guardedValue = map['ticket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActiveRoleAssignmentTicket.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
