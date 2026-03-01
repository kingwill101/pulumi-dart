// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_canary_evaluation_args_doc}
/// Arguments for getCanaryEvaluation.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_canary_evaluation_args_doc}
class GetCanaryEvaluationArgs {
  final pulumi.Input<String> canaryevaluationId;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetCanaryEvaluationArgs].
  /// [canaryevaluationId] Required.
  /// [instanceId] Required.
  /// [organizationId] Required.
  GetCanaryEvaluationArgs({
    required pulumi.Output<String> canaryevaluationId,
    required pulumi.Output<String> instanceId,
    required pulumi.Output<String> organizationId,
  }) :
      canaryevaluationId = pulumi.Input.asInput<String>(canaryevaluationId),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canaryevaluationId': canaryevaluationId,
      'instanceId': instanceId,
      'organizationId': organizationId,
    };
  }

  factory GetCanaryEvaluationArgs.fromMap(Map<String, dynamic> map) {
    return GetCanaryEvaluationArgs(
      canaryevaluationId: pulumi.Output.create<String>(map['canaryevaluationId'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
    );
  }
}

