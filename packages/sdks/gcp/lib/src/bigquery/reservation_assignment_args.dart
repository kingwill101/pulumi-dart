// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigquery_reservation_assignment_reservation_assignment_args_doc}
/// The set of arguments for ReservationAssignment.
/// {@endtemplate}
/// {@macro pulumi_bigquery_reservation_assignment_reservation_assignment_args_doc}
class ReservationAssignmentArgs {
  /// The resource which will use the reservation. E.g. projects/myproject, folders/123, organizations/456.
  final pulumi.Input<String> assignee;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Types of job, which could be specified when using the reservation. Possible values: JOB_TYPE_UNSPECIFIED, PIPELINE, QUERY, CONTINUOUS
  final pulumi.Input<String> jobType;
  /// The location for the resource
  final pulumi.Input<String?>? location;
  /// Optional. Represents the principal for this assignment. If not empty, jobs run by this principal will utilize the associated reservation. Otherwise, jobs will fall back to using the reservation assigned to the project, folder, or organization (in that order). If no reservation is assigned at any of these levels, on-demand capacity will be used. The supported formats are:
  /// * `principal://goog/subject/USER_EMAIL_ADDRESS` for users,
  /// * `principal://iam.googleapis.com/projects/-/serviceAccounts/SA_EMAIL_ADDRESS` for service accounts,
  /// * `principal://iam.googleapis.com/projects/PROJECT_NUMBER/locations/global/workloadIdentityPools/POOL_ID/subject/SUBJECT_ID` for workload identity pool identities.
  /// * The special value `unknownOrDeletedUser` represents principals which cannot be read from the user info service, for example deleted users.
  final pulumi.Input<String?>? principal;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The reservation for the resource
  final pulumi.Input<String> reservation;

  /// Creates a new [ReservationAssignmentArgs].
  /// [assignee] The resource which will use the reservation. E.g. projects/myproject, folders/123, organizations/456.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [jobType] Types of job, which could be specified when using the reservation. Possible values: JOB_TYPE_UNSPECIFIED, PIPELINE, QUERY, CONTINUOUS
  /// [location] The location for the resource
  /// [principal] Optional. Represents the principal for this assignment. If not empty, jobs run by this principal will utilize the associated reservation. Otherwise, jobs will fall back to using the reservation assigned to the project, folder, or organization (in that order). If no reservation is assigned at any of these levels, on-demand capacity will be used. The supported formats are:
  /// [project] The ID of the project in which the resource belongs.
  /// [reservation] The reservation for the resource
  const ReservationAssignmentArgs({
    required this.assignee,
    this.deletionPolicy,
    required this.jobType,
    this.location,
    this.principal,
    this.project,
    required this.reservation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignee': assignee,
      'deletionPolicy': ?deletionPolicy,
      'jobType': jobType,
      'location': ?location,
      'principal': ?principal,
      'project': ?project,
      'reservation': reservation,
    };
  }

  factory ReservationAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return ReservationAssignmentArgs(
      assignee: pulumi.Input.fromValue(map['assignee'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobType: pulumi.Input.fromValue(map['jobType'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principal: (() { final guardedValue = map['principal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservation: pulumi.Input.fromValue(map['reservation'] as String),
    );
  }
}
