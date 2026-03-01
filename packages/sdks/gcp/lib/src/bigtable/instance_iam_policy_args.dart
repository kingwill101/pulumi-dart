// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigtable_instance_iam_policy_instance_iam_policy_args_doc}
/// The set of arguments for InstanceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_bigtable_instance_iam_policy_instance_iam_policy_args_doc}
class InstanceIamPolicyArgs {
  /// The name or relative resource id of the instance to manage IAM policies for.
  ///
  /// For `gcp.bigtable.InstanceIamMember` or `gcp.bigtable.InstanceIamBinding`:
  final pulumi.Input<String> instance;
  final pulumi.Input<String> policyData;
  final pulumi.Input<String>? project;

  /// Creates a new [InstanceIamPolicyArgs].
  /// [instance] The name or relative resource id of the instance to manage IAM policies for.
  /// [policyData] Required.
  /// [project] Optional.
  InstanceIamPolicyArgs({
    required pulumi.Output<String> instance,
    required pulumi.Output<String> policyData,
    pulumi.Output<String>? project,
  }) :
      instance = pulumi.Input.asInput<String>(instance),
      policyData = pulumi.Input.asInput<String>(policyData),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instance': instance,
      'policyData': policyData,
      'project': ?project,
    };
  }

  factory InstanceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return InstanceIamPolicyArgs(
      instance: pulumi.Output.create<String>(map['instance'] as String),
      policyData: pulumi.Output.create<String>(map['policyData'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

