// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_snapshot_iam_policy_get_snapshot_iam_policy_args_doc}
/// Arguments for getSnapshotIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_get_snapshot_iam_policy_get_snapshot_iam_policy_args_doc}
class GetSnapshotIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetSnapshotIamPolicyArgs].
  /// [name] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  GetSnapshotIamPolicyArgs({
    required pulumi.Output<String> name,
    pulumi.Output<String>? project,
  }) :
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
    };
  }

  factory GetSnapshotIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSnapshotIamPolicyArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

