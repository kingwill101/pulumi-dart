// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'active_role_assignment_schedule.dart';
import 'active_role_assignment_ticket.dart';

/// Input properties used for looking up and filtering ActiveRoleAssignment resources.
class ActiveRoleAssignmentState {
  /// The justification for the role assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? justification;
  /// Object ID of the principal for this role assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? principalId;
  /// Type of principal to which the role will be assigned.
  final pulumi.Input<String>? principalType;
  /// The role definition ID for this role assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? roleDefinitionId;
  /// A `schedule` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ActiveRoleAssignmentSchedule>? schedule;
  /// The scope for this role assignment, should be a valid resource ID. Changing this forces a new resource to be created.
  final pulumi.Input<String>? scope;
  /// A `ticket` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ActiveRoleAssignmentTicket>? ticket;

  /// Creates a new [ActiveRoleAssignmentState].
  /// [justification] The justification for the role assignment. Changing this forces a new resource to be created.
  /// [principalId] Object ID of the principal for this role assignment. Changing this forces a new resource to be created.
  /// [principalType] Type of principal to which the role will be assigned.
  /// [roleDefinitionId] The role definition ID for this role assignment. Changing this forces a new resource to be created.
  /// [schedule] A `schedule` block as defined below. Changing this forces a new resource to be created.
  /// [scope] The scope for this role assignment, should be a valid resource ID. Changing this forces a new resource to be created.
  /// [ticket] A `ticket` block as defined below. Changing this forces a new resource to be created.
  ActiveRoleAssignmentState({
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
      'justification': ?justification,
      'principalId': ?principalId,
      'principalType': ?principalType,
      'roleDefinitionId': ?roleDefinitionId,
      'schedule': ?pulumi.Input.mapOptionalInputValue<ActiveRoleAssignmentSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'scope': ?scope,
      'ticket': ?pulumi.Input.mapOptionalInputValue<ActiveRoleAssignmentTicket, Map<String, dynamic>>(ticket, (value) => value.toMap()),
    };
  }

  factory ActiveRoleAssignmentState.fromMap(Map<String, dynamic> map) {
    return ActiveRoleAssignmentState(
      justification: map['justification'] == null ? null : (map['justification']! as String).input(),
      principalId: map['principalId'] == null ? null : (map['principalId']! as String).input(),
      principalType: map['principalType'] == null ? null : (map['principalType']! as String).input(),
      roleDefinitionId: map['roleDefinitionId'] == null ? null : (map['roleDefinitionId']! as String).input(),
      schedule: map['schedule'] == null ? null : (ActiveRoleAssignmentSchedule.fromMap((map['schedule']! as Map).cast<String, dynamic>())).input(),
      scope: map['scope'] == null ? null : (map['scope']! as String).input(),
      ticket: map['ticket'] == null ? null : (ActiveRoleAssignmentTicket.fromMap((map['ticket']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

