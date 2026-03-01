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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? gcpProject,
    pulumi.Output<String>? hostProjectRegistrationId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      gcpProject = pulumi.Input.asOptionalInput<String>(gcpProject),
      hostProjectRegistrationId = pulumi.Input.asOptionalInput<String>(hostProjectRegistrationId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      gcpProject: map['gcpProject'] == null ? null : pulumi.Output.create<String>(map['gcpProject'] as String),
      hostProjectRegistrationId: map['hostProjectRegistrationId'] == null ? null : pulumi.Output.create<String>(map['hostProjectRegistrationId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

