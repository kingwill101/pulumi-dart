// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_privileged_access_group_eligibility_schedule_privileged_access_group_eligibility_schedule_args_doc}
/// The set of arguments for PrivilegedAccessGroupEligibilitySchedule.
/// {@endtemplate}
/// {@macro pulumi_index_privileged_access_group_eligibility_schedule_privileged_access_group_eligibility_schedule_args_doc}
class PrivilegedAccessGroupEligibilityScheduleArgs {
  /// The type of assignment to the group. Can be either `member` or `owner`.
  final pulumi.Input<String> assignmentType;
  /// The duration that this assignment is valid for, formatted as an ISO8601 duration (e.g. P30D for 30 days, PT3H for three hours).
  final pulumi.Input<String>? duration;
  /// The date that this assignment expires, formatted as an RFC3339 date string (e.g. 2018-01-01T01:02:03Z).
  final pulumi.Input<String>? expirationDate;
  /// The Object ID of the Azure AD group to which the principal will be assigned.
  final pulumi.Input<String> groupId;
  /// The justification for this assignment. May be required by the role policy.
  final pulumi.Input<String>? justification;
  /// Is this assigment permanently valid.
  ///
  /// At least one of `expiration_date`, `duration`, or `permanent_assignment` must be supplied. The role policy may limit the maximum duration which can be supplied.
  final pulumi.Input<bool>? permanentAssignment;
  /// The Object ID of the principal to be assigned to the above group. Can be either a user or a group.
  final pulumi.Input<String> principalId;
  /// The date from which this assignment is valid, formatted as an RFC3339 date string (e.g. 2018-01-01T01:02:03Z). If not provided, the assignment is immediately valid.
  final pulumi.Input<String>? startDate;
  /// The ticket number in the ticket system approving this assignment. May be required by the role policy.
  final pulumi.Input<String>? ticketNumber;
  /// The ticket system containing the ticket number approving this assignment. May be required by the role policy.
  final pulumi.Input<String>? ticketSystem;

  /// Creates a new [PrivilegedAccessGroupEligibilityScheduleArgs].
  /// [assignmentType] The type of assignment to the group. Can be either `member` or `owner`.
  /// [duration] The duration that this assignment is valid for, formatted as an ISO8601 duration (e.g. P30D for 30 days, PT3H for three hours).
  /// [expirationDate] The date that this assignment expires, formatted as an RFC3339 date string (e.g. 2018-01-01T01:02:03Z).
  /// [groupId] The Object ID of the Azure AD group to which the principal will be assigned.
  /// [justification] The justification for this assignment. May be required by the role policy.
  /// [permanentAssignment] Is this assigment permanently valid.
  /// [principalId] The Object ID of the principal to be assigned to the above group. Can be either a user or a group.
  /// [startDate] The date from which this assignment is valid, formatted as an RFC3339 date string (e.g. 2018-01-01T01:02:03Z). If not provided, the assignment is immediately valid.
  /// [ticketNumber] The ticket number in the ticket system approving this assignment. May be required by the role policy.
  /// [ticketSystem] The ticket system containing the ticket number approving this assignment. May be required by the role policy.
  const PrivilegedAccessGroupEligibilityScheduleArgs({
    required this.assignmentType,
    this.duration,
    this.expirationDate,
    required this.groupId,
    this.justification,
    this.permanentAssignment,
    required this.principalId,
    this.startDate,
    this.ticketNumber,
    this.ticketSystem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignmentType': assignmentType,
      'duration': ?duration,
      'expirationDate': ?expirationDate,
      'groupId': groupId,
      'justification': ?justification,
      'permanentAssignment': ?permanentAssignment,
      'principalId': principalId,
      'startDate': ?startDate,
      'ticketNumber': ?ticketNumber,
      'ticketSystem': ?ticketSystem,
    };
  }

  factory PrivilegedAccessGroupEligibilityScheduleArgs.fromMap(Map<String, dynamic> map) {
    return PrivilegedAccessGroupEligibilityScheduleArgs(
      assignmentType: pulumi.Input.fromValue(map['assignmentType'] as String),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expirationDate: (() { final guardedValue = map['expirationDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      justification: (() { final guardedValue = map['justification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permanentAssignment: (() { final guardedValue = map['permanentAssignment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      startDate: (() { final guardedValue = map['startDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ticketNumber: (() { final guardedValue = map['ticketNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ticketSystem: (() { final guardedValue = map['ticketSystem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

