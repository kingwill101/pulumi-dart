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
      'schedule':
          ?pulumi.Input.mapOptionalInputValue<
            ActiveRoleAssignmentSchedule,
            Map<String, dynamic>
          >(schedule, (value) => value.toMap()),
      'scope': ?scope,
      'ticket':
          ?pulumi.Input.mapOptionalInputValue<
            ActiveRoleAssignmentTicket,
            Map<String, dynamic>
          >(ticket, (value) => value.toMap()),
    };
  }

  factory ActiveRoleAssignmentState.fromMap(Map<String, dynamic> map) {
    return ActiveRoleAssignmentState(
      justification: (() {
        final guardedValue = map['justification'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      principalId: (() {
        final guardedValue = map['principalId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      principalType: (() {
        final guardedValue = map['principalType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      roleDefinitionId: (() {
        final guardedValue = map['roleDefinitionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      schedule: (() {
        final guardedValue = map['schedule'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ActiveRoleAssignmentSchedule.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      scope: (() {
        final guardedValue = map['scope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ticket: (() {
        final guardedValue = map['ticket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ActiveRoleAssignmentTicket.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
