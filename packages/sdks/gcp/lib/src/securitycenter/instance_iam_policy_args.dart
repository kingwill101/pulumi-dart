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
    this.name,
    required this.policyData,
    this.project,
    this.region,
  });

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
      name: map['name'] == null ? null : (map['name']! as String).input(),
      policyData: (map['policyData'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
    );
  }
}

