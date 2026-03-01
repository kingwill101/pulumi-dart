// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PrivilegedAccessGroupAssignmentSchedule resources.
class PrivilegedAccessGroupAssignmentScheduleState {
  /// The type of assignment to the group. Can be either `member` or `owner`.
  final pulumi.Input<String>? assignmentType;
  /// The duration that this assignment is valid for, formatted as an ISO8601 duration (e.g. P30D for 30 days, PT3H for three hours).
  final pulumi.Input<String>? duration;
  /// The date that this assignment expires, formatted as an RFC3339 date string (e.g. 2018-01-01T01:02:03Z).
  final pulumi.Input<String>? expirationDate;
  /// The Object ID of the Azure AD group to which the principal will be assigned.
  final pulumi.Input<String>? groupId;
  /// The justification for this assignment. May be required by the role policy.
  final pulumi.Input<String>? justification;
  /// Is this assigment permanently valid.
  ///
  /// At least one of `expiration_date`, `duration`, or `permanent_assignment` must be supplied. The role policy may limit the maximum duration which can be supplied.
  final pulumi.Input<bool>? permanentAssignment;
  /// The Object ID of the principal to be assigned to the above group. Can be either a user or a group.
  final pulumi.Input<String>? principalId;
  /// The date from which this assignment is valid, formatted as an RFC3339 date string (e.g. 2018-01-01T01:02:03Z). If not provided, the assignment is immediately valid.
  final pulumi.Input<String>? startDate;
  /// (String) The provisioning status of this request.
  final pulumi.Input<String>? status;
  /// The ticket number in the ticket system approving this assignment. May be required by the role policy.
  final pulumi.Input<String>? ticketNumber;
  /// The ticket system containing the ticket number approving this assignment. May be required by the role policy.
  final pulumi.Input<String>? ticketSystem;

  /// Creates a new [PrivilegedAccessGroupAssignmentScheduleState].
  /// [assignmentType] The type of assignment to the group. Can be either `member` or `owner`.
  /// [duration] The duration that this assignment is valid for, formatted as an ISO8601 duration (e.g. P30D for 30 days, PT3H for three hours).
  /// [expirationDate] The date that this assignment expires, formatted as an RFC3339 date string (e.g. 2018-01-01T01:02:03Z).
  /// [groupId] The Object ID of the Azure AD group to which the principal will be assigned.
  /// [justification] The justification for this assignment. May be required by the role policy.
  /// [permanentAssignment] Is this assigment permanently valid.
  /// [principalId] The Object ID of the principal to be assigned to the above group. Can be either a user or a group.
  /// [startDate] The date from which this assignment is valid, formatted as an RFC3339 date string (e.g. 2018-01-01T01:02:03Z). If not provided, the assignment is immediately valid.
  /// [status] (String) The provisioning status of this request.
  /// [ticketNumber] The ticket number in the ticket system approving this assignment. May be required by the role policy.
  /// [ticketSystem] The ticket system containing the ticket number approving this assignment. May be required by the role policy.
  PrivilegedAccessGroupAssignmentScheduleState({
    pulumi.Output<String>? assignmentType,
    pulumi.Output<String>? duration,
    pulumi.Output<String>? expirationDate,
    pulumi.Output<String>? groupId,
    pulumi.Output<String>? justification,
    pulumi.Output<bool>? permanentAssignment,
    pulumi.Output<String>? principalId,
    pulumi.Output<String>? startDate,
    pulumi.Output<String>? status,
    pulumi.Output<String>? ticketNumber,
    pulumi.Output<String>? ticketSystem,
  }) :
      assignmentType = pulumi.Input.asOptionalInput<String>(assignmentType),
      duration = pulumi.Input.asOptionalInput<String>(duration),
      expirationDate = pulumi.Input.asOptionalInput<String>(expirationDate),
      groupId = pulumi.Input.asOptionalInput<String>(groupId),
      justification = pulumi.Input.asOptionalInput<String>(justification),
      permanentAssignment = pulumi.Input.asOptionalInput<bool>(permanentAssignment),
      principalId = pulumi.Input.asOptionalInput<String>(principalId),
      startDate = pulumi.Input.asOptionalInput<String>(startDate),
      status = pulumi.Input.asOptionalInput<String>(status),
      ticketNumber = pulumi.Input.asOptionalInput<String>(ticketNumber),
      ticketSystem = pulumi.Input.asOptionalInput<String>(ticketSystem);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignmentType': ?assignmentType,
      'duration': ?duration,
      'expirationDate': ?expirationDate,
      'groupId': ?groupId,
      'justification': ?justification,
      'permanentAssignment': ?permanentAssignment,
      'principalId': ?principalId,
      'startDate': ?startDate,
      'status': ?status,
      'ticketNumber': ?ticketNumber,
      'ticketSystem': ?ticketSystem,
    };
  }

  factory PrivilegedAccessGroupAssignmentScheduleState.fromMap(Map<String, dynamic> map) {
    return PrivilegedAccessGroupAssignmentScheduleState(
      assignmentType: map['assignmentType'] == null ? null : pulumi.Output.create<String>(map['assignmentType'] as String),
      duration: map['duration'] == null ? null : pulumi.Output.create<String>(map['duration'] as String),
      expirationDate: map['expirationDate'] == null ? null : pulumi.Output.create<String>(map['expirationDate'] as String),
      groupId: map['groupId'] == null ? null : pulumi.Output.create<String>(map['groupId'] as String),
      justification: map['justification'] == null ? null : pulumi.Output.create<String>(map['justification'] as String),
      permanentAssignment: map['permanentAssignment'] == null ? null : pulumi.Output.create<bool>(map['permanentAssignment'] as bool),
      principalId: map['principalId'] == null ? null : pulumi.Output.create<String>(map['principalId'] as String),
      startDate: map['startDate'] == null ? null : pulumi.Output.create<String>(map['startDate'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      ticketNumber: map['ticketNumber'] == null ? null : pulumi.Output.create<String>(map['ticketNumber'] as String),
      ticketSystem: map['ticketSystem'] == null ? null : pulumi.Output.create<String>(map['ticketSystem'] as String),
    );
  }
}

