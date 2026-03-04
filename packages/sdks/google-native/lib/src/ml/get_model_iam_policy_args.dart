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
    required this.modelId,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelId': modelId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetModelIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetModelIamPolicyArgs(
      modelId: pulumi.Input.fromValue(map['modelId'] as String),
      optionsRequestedPolicyVersion: (() {
        final guardedValue = map['optionsRequestedPolicyVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
