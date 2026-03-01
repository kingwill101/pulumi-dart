// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafusion_get_instance_iam_policy_get_instance_iam_policy_args_doc}
/// Arguments for getInstanceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_datafusion_get_instance_iam_policy_get_instance_iam_policy_args_doc}
class GetInstanceIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of the Data Fusion instance.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetInstanceIamPolicyArgs].
  /// [name] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the Data Fusion instance.
  GetInstanceIamPolicyArgs({
    required pulumi.Output<String> name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
  }) :
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetInstanceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceIamPolicyArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

