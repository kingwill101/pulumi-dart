// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apihub_host_project_registration_host_project_registration_args_doc}
/// The set of arguments for HostProjectRegistration.
/// {@endtemplate}
/// {@macro pulumi_apihub_host_project_registration_host_project_registration_args_doc}
class HostProjectRegistrationArgs {
  /// Required. Immutable. Google cloud project name in the format: "projects/abc" or "projects/123".
  /// As input, project name with either project id or number are accepted.
  /// As output, this field will contain project number.
  final pulumi.Input<String> gcpProject;
  /// Required. The ID to use for the Host Project Registration, which will become the
  /// final component of the host project registration's resource name. The ID
  /// must be the same as the Google cloud project specified in the
  /// host_project_registration.gcp_project field.
  final pulumi.Input<String> hostProjectRegistrationId;
  /// Part of `parent`. See documentation of `projectsId`.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [HostProjectRegistrationArgs].
  /// [gcpProject] Required. Immutable. Google cloud project name in the format: "projects/abc" or "projects/123".
  /// [hostProjectRegistrationId] Required. The ID to use for the Host Project Registration, which will become the
  /// [location] Part of `parent`. See documentation of `projectsId`.
  /// [project] The ID of the project in which the resource belongs.
  HostProjectRegistrationArgs({
    required this.gcpProject,
    required this.hostProjectRegistrationId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpProject': gcpProject,
      'hostProjectRegistrationId': hostProjectRegistrationId,
      'location': location,
      'project': ?project,
    };
  }

  factory HostProjectRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return HostProjectRegistrationArgs(
      gcpProject: (map['gcpProject'] as String).input(),
      hostProjectRegistrationId: (map['hostProjectRegistrationId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

