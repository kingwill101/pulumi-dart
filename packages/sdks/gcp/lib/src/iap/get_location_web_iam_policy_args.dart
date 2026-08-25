// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iap_get_location_web_iam_policy_get_location_web_iam_policy_args_doc}
/// Arguments for getLocationWebIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_iap_get_location_web_iam_policy_get_location_web_iam_policy_args_doc}
class GetLocationWebIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetLocationWebIamPolicyArgs].
  /// [location] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  const GetLocationWebIamPolicyArgs({
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
    };
  }

  factory GetLocationWebIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetLocationWebIamPolicyArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
