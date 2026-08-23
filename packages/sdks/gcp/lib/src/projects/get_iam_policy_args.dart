// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_projects_get_iam_policy_get_iam_policy_args_doc}
/// Arguments for getIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_projects_get_iam_policy_get_iam_policy_args_doc}
class GetIamPolicyArgs {
  /// The project id of the target project. This is not
  /// inferred from the provider.
  final pulumi.Input<String> project;

  /// Creates a new [GetIamPolicyArgs].
  /// [project] The project id of the target project. This is not
  const GetIamPolicyArgs({
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': project,
    };
  }

  factory GetIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetIamPolicyArgs(
      project: pulumi.Input.fromValue(map['project'] as String),
    );
  }
}
