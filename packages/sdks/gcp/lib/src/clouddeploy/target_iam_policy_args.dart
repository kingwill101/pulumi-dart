// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_clouddeploy_target_iam_policy_target_iam_policy_args_doc}
/// The set of arguments for TargetIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_target_iam_policy_target_iam_policy_args_doc}
class TargetIamPolicyArgs {
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? name;
  final pulumi.Input<String> policyData;
  final pulumi.Input<String>? project;

  /// Creates a new [TargetIamPolicyArgs].
  /// [location] Optional.
  /// [name] Optional.
  /// [policyData] Required.
  /// [project] Optional.
  TargetIamPolicyArgs({
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> policyData,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      policyData = pulumi.Input.asInput<String>(policyData),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'policyData': policyData,
      'project': ?project,
    };
  }

  factory TargetIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return TargetIamPolicyArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policyData: pulumi.Output.create<String>(map['policyData'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

