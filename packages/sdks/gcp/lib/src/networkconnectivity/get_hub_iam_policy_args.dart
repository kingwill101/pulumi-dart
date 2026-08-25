// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkconnectivity_get_hub_iam_policy_get_hub_iam_policy_args_doc}
/// Arguments for getHubIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_get_hub_iam_policy_get_hub_iam_policy_args_doc}
class GetHubIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> hub;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetHubIamPolicyArgs].
  /// [hub] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  const GetHubIamPolicyArgs({
    required this.hub,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hub': hub,
      'project': ?project,
    };
  }

  factory GetHubIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetHubIamPolicyArgs(
      hub: pulumi.Input.fromValue(map['hub'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
