// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_osconfig_v1_get_os_policy_assignment_args_doc}
/// Arguments for getOsPolicyAssignment.
/// {@endtemplate}
/// {@macro pulumi_osconfig_v1_get_os_policy_assignment_args_doc}
class GetOsPolicyAssignmentArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> osPolicyAssignmentId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetOsPolicyAssignmentArgs].
  /// [location] Required.
  /// [osPolicyAssignmentId] Required.
  /// [project] Optional.
  GetOsPolicyAssignmentArgs({
    required pulumi.Output<String> location,
    required pulumi.Output<String> osPolicyAssignmentId,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      osPolicyAssignmentId = pulumi.Input.asInput<String>(osPolicyAssignmentId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'osPolicyAssignmentId': osPolicyAssignmentId,
      'project': ?project,
    };
  }

  factory GetOsPolicyAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetOsPolicyAssignmentArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      osPolicyAssignmentId: pulumi.Output.create<String>(map['osPolicyAssignmentId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

