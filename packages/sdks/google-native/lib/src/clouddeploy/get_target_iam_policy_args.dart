// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_clouddeploy_v1_get_target_iam_policy_args_doc}
/// Arguments for getTargetIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_v1_get_target_iam_policy_args_doc}
class GetTargetIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetId;

  /// Creates a new [GetTargetIamPolicyArgs].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [targetId] Required.
  GetTargetIamPolicyArgs({
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> targetId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      targetId = pulumi.Input.asInput<String>(targetId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'targetId': targetId,
    };
  }

  factory GetTargetIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetIamPolicyArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      targetId: pulumi.Output.create<String>(map['targetId'] as String),
    );
  }
}

