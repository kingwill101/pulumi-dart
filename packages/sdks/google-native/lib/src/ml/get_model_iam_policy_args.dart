// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ml_v1_get_model_iam_policy_args_doc}
/// Arguments for getModelIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_ml_v1_get_model_iam_policy_args_doc}
class GetModelIamPolicyArgs {
  final pulumi.Input<String> modelId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetModelIamPolicyArgs].
  /// [modelId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetModelIamPolicyArgs({
    required pulumi.Output<String> modelId,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      modelId = pulumi.Input.asInput<String>(modelId),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelId': modelId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetModelIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetModelIamPolicyArgs(
      modelId: pulumi.Output.create<String>(map['modelId'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

