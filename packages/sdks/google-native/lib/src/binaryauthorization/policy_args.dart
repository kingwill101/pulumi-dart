// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gke_policy.dart';

/// {@template pulumi_binaryauthorization_v1_policy_args_doc}
/// The set of arguments for Policy.
/// {@endtemplate}
/// {@macro pulumi_binaryauthorization_v1_policy_args_doc}
class PolicyArgs {
  /// Optional. A description comment about the policy.
  final pulumi.Input<String>? description;
  /// Optional. GKE platform-specific policy.
  final pulumi.Input<GkePolicy>? gkePolicy;
  final pulumi.Input<String> platformId;
  /// Required. The platform policy ID.
  final pulumi.Input<String> policyId;
  final pulumi.Input<String>? project;

  /// Creates a new [PolicyArgs].
  /// [description] Optional. A description comment about the policy.
  /// [gkePolicy] Optional. GKE platform-specific policy.
  /// [platformId] Required.
  /// [policyId] Required. The platform policy ID.
  /// [project] Optional.
  PolicyArgs({
    pulumi.Output<String>? description,
    pulumi.Output<GkePolicy>? gkePolicy,
    required pulumi.Output<String> platformId,
    required pulumi.Output<String> policyId,
    pulumi.Output<String>? project,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      gkePolicy = pulumi.Input.asOptionalInput<GkePolicy>(gkePolicy),
      platformId = pulumi.Input.asInput<String>(platformId),
      policyId = pulumi.Input.asInput<String>(policyId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'gkePolicy': ?pulumi.Input.mapOptionalInputValue<GkePolicy, Map<String, dynamic>>(gkePolicy, (value) => value.toMap()),
      'platformId': platformId,
      'policyId': policyId,
      'project': ?project,
    };
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      gkePolicy: map['gkePolicy'] == null ? null : pulumi.Output.create<GkePolicy>(GkePolicy.fromMap((map['gkePolicy'] as Map).cast<String, dynamic>())),
      platformId: pulumi.Output.create<String>(map['platformId'] as String),
      policyId: pulumi.Output.create<String>(map['policyId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

