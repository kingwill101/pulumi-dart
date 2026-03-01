// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_instance_iam_policy_instance_iam_policy_args_doc}
/// The set of arguments for InstanceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_instance_iam_policy_instance_iam_policy_args_doc}
class InstanceIamPolicyArgs {
  /// The ID of the instance or a fully qualified identifier for the instance.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> policyData;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of the Data Fusion instance.
  final pulumi.Input<String>? region;

  /// Creates a new [InstanceIamPolicyArgs].
  /// [name] The ID of the instance or a fully qualified identifier for the instance.
  /// [policyData] Required.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the Data Fusion instance.
  InstanceIamPolicyArgs({
    pulumi.Output<String>? name,
    required pulumi.Output<String> policyData,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      policyData = pulumi.Input.asInput<String>(policyData),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'policyData': policyData,
      'project': ?project,
      'region': ?region,
    };
  }

  factory InstanceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return InstanceIamPolicyArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policyData: pulumi.Output.create<String>(map['policyData'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

