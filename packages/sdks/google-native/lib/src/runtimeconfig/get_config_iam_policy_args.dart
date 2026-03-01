// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_runtimeconfig_v1beta1_get_config_iam_policy_args_doc}
/// Arguments for getConfigIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_runtimeconfig_v1beta1_get_config_iam_policy_args_doc}
class GetConfigIamPolicyArgs {
  final pulumi.Input<String> configId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConfigIamPolicyArgs].
  /// [configId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetConfigIamPolicyArgs({
    required pulumi.Output<String> configId,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      configId = pulumi.Input.asInput<String>(configId),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': configId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetConfigIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigIamPolicyArgs(
      configId: pulumi.Output.create<String>(map['configId'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

