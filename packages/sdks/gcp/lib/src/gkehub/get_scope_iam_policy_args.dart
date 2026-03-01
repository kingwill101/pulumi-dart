// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_get_scope_iam_policy_get_scope_iam_policy_args_doc}
/// Arguments for getScopeIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_gkehub_get_scope_iam_policy_get_scope_iam_policy_args_doc}
class GetScopeIamPolicyArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> scopeId;

  /// Creates a new [GetScopeIamPolicyArgs].
  /// [project] The ID of the project in which the resource belongs.
  /// [scopeId] Used to find the parent resource to bind the IAM policy to
  GetScopeIamPolicyArgs({
    pulumi.Output<String>? project,
    required pulumi.Output<String> scopeId,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      scopeId = pulumi.Input.asInput<String>(scopeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'scopeId': scopeId,
    };
  }

  factory GetScopeIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetScopeIamPolicyArgs(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      scopeId: pulumi.Output.create<String>(map['scopeId'] as String),
    );
  }
}

