// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfunctions_v2alpha_get_function_iam_policy_cloudfunctions_v2alpha_args_doc}
/// Arguments for getFunctionIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudfunctions_v2alpha_get_function_iam_policy_cloudfunctions_v2alpha_args_doc}
class GetFunctionIamPolicyCloudfunctionsV2alphaArgs {
  final pulumi.Input<String> functionId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFunctionIamPolicyCloudfunctionsV2alphaArgs].
  /// [functionId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetFunctionIamPolicyCloudfunctionsV2alphaArgs({
    required pulumi.Output<String> functionId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      functionId = pulumi.Input.asInput<String>(functionId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionId': functionId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetFunctionIamPolicyCloudfunctionsV2alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetFunctionIamPolicyCloudfunctionsV2alphaArgs(
      functionId: pulumi.Output.create<String>(map['functionId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

