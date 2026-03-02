// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ReservationAssignment resources.
class ReservationAssignmentState {
  /// The resource which will use the reservation. E.g. projects/myproject, folders/123, organizations/456.
  final pulumi.Input<String>? assignee;
  /// Types of job, which could be specified when using the reservation. Possible values: JOB_TYPE_UNSPECIFIED, PIPELINE, QUERY, CONTINUOUS
  final pulumi.Input<String>? jobType;
  /// The location for the resource
  final pulumi.Input<String>? location;
  /// Output only. The resource name of the assignment.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The reservation for the resource
  final pulumi.Input<String>? reservation;
  /// Assignment will remain in PENDING state if no active capacity commitment is present. It will become ACTIVE when some capacity commitment becomes active.
  /// Possible values: STATE_UNSPECIFIED, PENDING, ACTIVE
  final pulumi.Input<String>? state;

  /// Creates a new [ReservationAssignmentState].
  /// [assignee] The resource which will use the reservation. E.g. projects/myproject, folders/123, organizations/456.
  /// [jobType] Types of job, which could be specified when using the reservation. Possible values: JOB_TYPE_UNSPECIFIED, PIPELINE, QUERY, CONTINUOUS
  /// [location] The location for the resource
  /// [name] Output only. The resource name of the assignment.
  /// [project] The ID of the project in which the resource belongs.
  /// [reservation] The reservation for the resource
  /// [state] Assignment will remain in PENDING state if no active capacity commitment is present. It will become ACTIVE when some capacity commitment becomes active.
  ReservationAssignmentState({
    this.assignee,
    this.jobType,
    this.location,
    this.name,
    this.project,
    this.reservation,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignee': ?assignee,
      'jobType': ?jobType,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'reservation': ?reservation,
      'state': ?state,
    };
  }

  factory ReservationAssignmentState.fromMap(Map<String, dynamic> map) {
    return ReservationAssignmentState(
      assignee: map['assignee'] == null ? null : (map['assignee']! as String).input(),
      jobType: map['jobType'] == null ? null : (map['jobType']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      reservation: map['reservation'] == null ? null : (map['reservation']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}

