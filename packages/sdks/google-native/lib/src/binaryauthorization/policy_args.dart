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
    this.description,
    this.gkePolicy,
    required this.platformId,
    required this.policyId,
    this.project,
  });

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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gkePolicy: (() { final guardedValue = map['gkePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GkePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      platformId: pulumi.Input.fromValue(map['platformId'] as String),
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

