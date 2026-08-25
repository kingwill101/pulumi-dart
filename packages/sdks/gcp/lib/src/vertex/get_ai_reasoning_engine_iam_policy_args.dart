// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vertex_get_ai_reasoning_engine_iam_policy_get_ai_reasoning_engine_iam_policy_args_doc}
/// Arguments for getAiReasoningEngineIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_vertex_get_ai_reasoning_engine_iam_policy_get_ai_reasoning_engine_iam_policy_args_doc}
class GetAiReasoningEngineIamPolicyArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> reasoningEngine;
  /// The region of the reasoning engine. eg us-central1 Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetAiReasoningEngineIamPolicyArgs].
  /// [project] The ID of the project in which the resource belongs.
  /// [reasoningEngine] Used to find the parent resource to bind the IAM policy to
  /// [region] The region of the reasoning engine. eg us-central1 Used to find the parent resource to bind the IAM policy to. If not specified,
  const GetAiReasoningEngineIamPolicyArgs({
    this.project,
    required this.reasoningEngine,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'reasoningEngine': reasoningEngine,
      'region': ?region,
    };
  }

  factory GetAiReasoningEngineIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAiReasoningEngineIamPolicyArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reasoningEngine: pulumi.Input.fromValue(map['reasoningEngine'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
