// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'eligible_role_assignment_schedule.dart';
import 'eligible_role_assignment_ticket.dart';

/// {@template pulumi_pim_eligible_role_assignment_eligible_role_assignment_args_doc}
/// The set of arguments for EligibleRoleAssignment.
/// {@endtemplate}
/// {@macro pulumi_pim_eligible_role_assignment_eligible_role_assignment_args_doc}
class EligibleRoleAssignmentArgs {
  /// The condition that limits the resources that the role can be assigned to. See the [official conditions documentation](https://learn.microsoft.com/en-us/azure/role-based-access-control/conditions-overview#what-are-role-assignment-conditions) for details. Changing this forces a new resource to be created.
  final pulumi.Input<String>? condition;
  /// The version of the condition. Supported values include `2.0`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `condition_version` is required when specifying `condition` and vice versa.
  final pulumi.Input<String>? conditionVersion;
  /// The justification of the role assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? justification;
  /// Object ID of the principal for this eligible role assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String> principalId;
  /// The role definition ID for this eligible role assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String> roleDefinitionId;
  /// A `schedule` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<EligibleRoleAssignmentSchedule>? schedule;
  /// The scope for this eligible role assignment, should be a valid resource ID. Changing this forces a new resource to be created.
  final pulumi.Input<String> scope;
  /// A `ticket` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<EligibleRoleAssignmentTicket>? ticket;

  /// Creates a new [EligibleRoleAssignmentArgs].
  /// [condition] The condition that limits the resources that the role can be assigned to. See the [official conditions documentation](https://learn.microsoft.com/en-us/azure/role-based-access-control/conditions-overview#what-are-role-assignment-conditions) for details. Changing this forces a new resource to be created.
  /// [conditionVersion] The version of the condition. Supported values include `2.0`. Changing this forces a new resource to be created.
  /// [justification] The justification of the role assignment. Changing this forces a new resource to be created.
  /// [principalId] Object ID of the principal for this eligible role assignment. Changing this forces a new resource to be created.
  /// [roleDefinitionId] The role definition ID for this eligible role assignment. Changing this forces a new resource to be created.
  /// [schedule] A `schedule` block as defined below. Changing this forces a new resource to be created.
  /// [scope] The scope for this eligible role assignment, should be a valid resource ID. Changing this forces a new resource to be created.
  /// [ticket] A `ticket` block as defined below. Changing this forces a new resource to be created.
  EligibleRoleAssignmentArgs({
    pulumi.Output<String>? condition,
    pulumi.Output<String>? conditionVersion,
    pulumi.Output<String>? justification,
    required pulumi.Output<String> principalId,
    required pulumi.Output<String> roleDefinitionId,
    pulumi.Output<EligibleRoleAssignmentSchedule>? schedule,
    required pulumi.Output<String> scope,
    pulumi.Output<EligibleRoleAssignmentTicket>? ticket,
  }) :
      condition = pulumi.Input.asOptionalInput<String>(condition),
      conditionVersion = pulumi.Input.asOptionalInput<String>(conditionVersion),
      justification = pulumi.Input.asOptionalInput<String>(justification),
      principalId = pulumi.Input.asInput<String>(principalId),
      roleDefinitionId = pulumi.Input.asInput<String>(roleDefinitionId),
      schedule = pulumi.Input.asOptionalInput<EligibleRoleAssignmentSchedule>(schedule),
      scope = pulumi.Input.asInput<String>(scope),
      ticket = pulumi.Input.asOptionalInput<EligibleRoleAssignmentTicket>(ticket);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'conditionVersion': ?conditionVersion,
      'justification': ?justification,
      'principalId': principalId,
      'roleDefinitionId': roleDefinitionId,
      'schedule': ?pulumi.Input.mapOptionalInputValue<EligibleRoleAssignmentSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'scope': scope,
      'ticket': ?pulumi.Input.mapOptionalInputValue<EligibleRoleAssignmentTicket, Map<String, dynamic>>(ticket, (value) => value.toMap()),
    };
  }

  factory EligibleRoleAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return EligibleRoleAssignmentArgs(
      condition: map['condition'] == null ? null : pulumi.Output.create<String>(map['condition'] as String),
      conditionVersion: map['conditionVersion'] == null ? null : pulumi.Output.create<String>(map['conditionVersion'] as String),
      justification: map['justification'] == null ? null : pulumi.Output.create<String>(map['justification'] as String),
      principalId: pulumi.Output.create<String>(map['principalId'] as String),
      roleDefinitionId: pulumi.Output.create<String>(map['roleDefinitionId'] as String),
      schedule: map['schedule'] == null ? null : pulumi.Output.create<EligibleRoleAssignmentSchedule>(EligibleRoleAssignmentSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>())),
      scope: pulumi.Output.create<String>(map['scope'] as String),
      ticket: map['ticket'] == null ? null : pulumi.Output.create<EligibleRoleAssignmentTicket>(EligibleRoleAssignmentTicket.fromMap((map['ticket'] as Map).cast<String, dynamic>())),
    );
  }
}

