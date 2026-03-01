// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_v1_get_policy_args_doc}
/// Arguments for getPolicy.
/// {@endtemplate}
/// {@macro pulumi_dns_v1_get_policy_args_doc}
class GetPolicyArgs {
  final pulumi.Input<String>? clientOperationId;
  final pulumi.Input<String> policy;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPolicyArgs].
  /// [clientOperationId] Optional.
  /// [policy] Required.
  /// [project] Optional.
  GetPolicyArgs({
    pulumi.Output<String>? clientOperationId,
    required pulumi.Output<String> policy,
    pulumi.Output<String>? project,
  }) :
      clientOperationId = pulumi.Input.asOptionalInput<String>(clientOperationId),
      policy = pulumi.Input.asInput<String>(policy),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientOperationId': ?clientOperationId,
      'policy': policy,
      'project': ?project,
    };
  }

  factory GetPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyArgs(
      clientOperationId: map['clientOperationId'] == null ? null : pulumi.Output.create<String>(map['clientOperationId'] as String),
      policy: pulumi.Output.create<String>(map['policy'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

