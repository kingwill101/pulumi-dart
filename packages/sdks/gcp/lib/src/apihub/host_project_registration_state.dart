// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HostProjectRegistration resources.
class HostProjectRegistrationState {
  /// Output only. The time at which the host project registration was created.
  final pulumi.Input<String>? createTime;
  /// Required. Immutable. Google cloud project name in the format: "projects/abc" or "projects/123".
  /// As input, project name with either project id or number are accepted.
  /// As output, this field will contain project number.
  final pulumi.Input<String>? gcpProject;
  /// Required. The ID to use for the Host Project Registration, which will become the
  /// final component of the host project registration's resource name. The ID
  /// must be the same as the Google cloud project specified in the
  /// host_project_registration.gcp_project field.
  final pulumi.Input<String>? hostProjectRegistrationId;
  /// Part of `parent`. See documentation of `projectsId`.
  final pulumi.Input<String>? location;
  /// Identifier. The name of the host project registration.
  /// Format:
  /// "projects/{project}/locations/{location}/hostProjectRegistrations/{host_project_registration}".
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [HostProjectRegistrationState].
  /// [createTime] Output only. The time at which the host project registration was created.
  /// [gcpProject] Required. Immutable. Google cloud project name in the format: "projects/abc" or "projects/123".
  /// [hostProjectRegistrationId] Required. The ID to use for the Host Project Registration, which will become the
  /// [location] Part of `parent`. See documentation of `projectsId`.
  /// [name] Identifier. The name of the host project registration.
  /// [project] The ID of the project in which the resource belongs.
  HostProjectRegistrationState({
    this.createTime,
    this.gcpProject,
    this.hostProjectRegistrationId,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'gcpProject': ?gcpProject,
      'hostProjectRegistrationId': ?hostProjectRegistrationId,
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory HostProjectRegistrationState.fromMap(Map<String, dynamic> map) {
    return HostProjectRegistrationState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      gcpProject: map['gcpProject'] == null ? null : (map['gcpProject'] as String).input(),
      hostProjectRegistrationId: map['hostProjectRegistrationId'] == null ? null : (map['hostProjectRegistrationId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

