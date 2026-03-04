// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigquery_reservation_assignment_reservation_assignment_args_doc}
/// The set of arguments for ReservationAssignment.
/// {@endtemplate}
/// {@macro pulumi_bigquery_reservation_assignment_reservation_assignment_args_doc}
class ReservationAssignmentArgs {
  /// The resource which will use the reservation. E.g. projects/myproject, folders/123, organizations/456.
  final pulumi.Input<String> assignee;

  /// Types of job, which could be specified when using the reservation. Possible values: JOB_TYPE_UNSPECIFIED, PIPELINE, QUERY, CONTINUOUS
  final pulumi.Input<String> jobType;

  /// The location for the resource
  final pulumi.Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The reservation for the resource
  final pulumi.Input<String> reservation;

  /// Creates a new [ReservationAssignmentArgs].
  /// [assignee] The resource which will use the reservation. E.g. projects/myproject, folders/123, organizations/456.
  /// [jobType] Types of job, which could be specified when using the reservation. Possible values: JOB_TYPE_UNSPECIFIED, PIPELINE, QUERY, CONTINUOUS
  /// [location] The location for the resource
  /// [project] The ID of the project in which the resource belongs.
  /// [reservation] The reservation for the resource
  ReservationAssignmentArgs({
    required this.assignee,
    required this.jobType,
    this.location,
    this.project,
    required this.reservation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignee': assignee,
      'jobType': jobType,
      'location': ?location,
      'project': ?project,
      'reservation': reservation,
    };
  }

  factory ReservationAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return ReservationAssignmentArgs(
      assignee: pulumi.Input.fromValue(map['assignee'] as String),
      jobType: pulumi.Input.fromValue(map['jobType'] as String),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      reservation: pulumi.Input.fromValue(map['reservation'] as String),
    );
  }
}
