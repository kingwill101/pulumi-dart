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
  /// The project in which the instance belongs. If it
  /// is not provided, Terraform will use the provider default.
  final pulumi.Input<String>? project;

  /// Creates a new [InstanceIamPolicyArgs].
  /// [instance] The name or relative resource id of the instance to manage IAM policies for.
  /// [policyData] Required.
  /// [project] The project in which the instance belongs. If it
  const InstanceIamPolicyArgs({
    required this.instance,
    required this.policyData,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instance': instance,
      'policyData': policyData,
      'project': ?project,
    };
  }

  factory InstanceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return InstanceIamPolicyArgs(
      instance: pulumi.Input.fromValue(map['instance'] as String),
      policyData: pulumi.Input.fromValue(map['policyData'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
