// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PrivilegedAccessGroupEligibilitySchedule resources.
class PrivilegedAccessGroupEligibilityScheduleState {
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

  /// Creates a new [PrivilegedAccessGroupEligibilityScheduleState].
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
  PrivilegedAccessGroupEligibilityScheduleState({
    this.assignmentType,
    this.duration,
    this.expirationDate,
    this.groupId,
    this.justification,
    this.permanentAssignment,
    this.principalId,
    this.startDate,
    this.status,
    this.ticketNumber,
    this.ticketSystem,
  });

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

  factory PrivilegedAccessGroupEligibilityScheduleState.fromMap(Map<String, dynamic> map) {
    return PrivilegedAccessGroupEligibilityScheduleState(
      assignmentType: map['assignmentType'] == null ? null : (map['assignmentType']! as String).input(),
      duration: map['duration'] == null ? null : (map['duration']! as String).input(),
      expirationDate: map['expirationDate'] == null ? null : (map['expirationDate']! as String).input(),
      groupId: map['groupId'] == null ? null : (map['groupId']! as String).input(),
      justification: map['justification'] == null ? null : (map['justification']! as String).input(),
      permanentAssignment: map['permanentAssignment'] == null ? null : (map['permanentAssignment']! as bool).input(),
      principalId: map['principalId'] == null ? null : (map['principalId']! as String).input(),
      startDate: map['startDate'] == null ? null : (map['startDate']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      ticketNumber: map['ticketNumber'] == null ? null : (map['ticketNumber']! as String).input(),
      ticketSystem: map['ticketSystem'] == null ? null : (map['ticketSystem']! as String).input(),
    );
  }
}

