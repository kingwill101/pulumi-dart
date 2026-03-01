// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_notebooks_v1_get_runtime_iam_policy_args_doc}
/// Arguments for getRuntimeIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_notebooks_v1_get_runtime_iam_policy_args_doc}
class GetRuntimeIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> runtimeId;

  /// Creates a new [GetRuntimeIamPolicyArgs].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [runtimeId] Required.
  GetRuntimeIamPolicyArgs({
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> runtimeId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      runtimeId = pulumi.Input.asInput<String>(runtimeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'runtimeId': runtimeId,
    };
  }

  factory GetRuntimeIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRuntimeIamPolicyArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      runtimeId: pulumi.Output.create<String>(map['runtimeId'] as String),
    );
  }
}

