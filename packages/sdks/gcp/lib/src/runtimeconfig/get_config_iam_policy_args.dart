// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_runtimeconfig_get_config_iam_policy_get_config_iam_policy_args_doc}
/// Arguments for getConfigIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_runtimeconfig_get_config_iam_policy_get_config_iam_policy_args_doc}
class GetConfigIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> config;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetConfigIamPolicyArgs].
  /// [config] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  GetConfigIamPolicyArgs({
    required this.config,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': config,
      'project': ?project,
    };
  }

  factory GetConfigIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigIamPolicyArgs(
      config: (map['config'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

