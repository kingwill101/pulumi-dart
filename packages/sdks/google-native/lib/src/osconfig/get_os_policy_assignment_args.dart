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
    required this.location,
    required this.osPolicyAssignmentId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'osPolicyAssignmentId': osPolicyAssignmentId,
      'project': ?project,
    };
  }

  factory GetOsPolicyAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetOsPolicyAssignmentArgs(
      location: (map['location'] as String).input(),
      osPolicyAssignmentId: (map['osPolicyAssignmentId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

