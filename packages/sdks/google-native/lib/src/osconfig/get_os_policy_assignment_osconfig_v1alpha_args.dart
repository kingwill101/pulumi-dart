// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_osconfig_v1alpha_get_os_policy_assignment_osconfig_v1alpha_args_doc}
/// Arguments for getOsPolicyAssignment.
/// {@endtemplate}
/// {@macro pulumi_osconfig_v1alpha_get_os_policy_assignment_osconfig_v1alpha_args_doc}
class GetOsPolicyAssignmentOsconfigV1alphaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> osPolicyAssignmentId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetOsPolicyAssignmentOsconfigV1alphaArgs].
  /// [location] Required.
  /// [osPolicyAssignmentId] Required.
  /// [project] Optional.
  const GetOsPolicyAssignmentOsconfigV1alphaArgs({
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

  factory GetOsPolicyAssignmentOsconfigV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetOsPolicyAssignmentOsconfigV1alphaArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      osPolicyAssignmentId: pulumi.Input.fromValue(map['osPolicyAssignmentId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
