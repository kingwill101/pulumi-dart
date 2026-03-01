// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_binaryauthorization_v1_get_policy_args_doc}
/// Arguments for getPolicy.
/// {@endtemplate}
/// {@macro pulumi_binaryauthorization_v1_get_policy_args_doc}
class GetPolicyArgs {
  final pulumi.Input<String> platformId;
  final pulumi.Input<String> policyId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPolicyArgs].
  /// [platformId] Required.
  /// [policyId] Required.
  /// [project] Optional.
  GetPolicyArgs({
    required pulumi.Output<String> platformId,
    required pulumi.Output<String> policyId,
    pulumi.Output<String>? project,
  }) :
      platformId = pulumi.Input.asInput<String>(platformId),
      policyId = pulumi.Input.asInput<String>(policyId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'platformId': platformId,
      'policyId': policyId,
      'project': ?project,
    };
  }

  factory GetPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyArgs(
      platformId: pulumi.Output.create<String>(map['platformId'] as String),
      policyId: pulumi.Output.create<String>(map['policyId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

