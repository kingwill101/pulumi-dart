// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privateca_v1beta1_get_reusable_config_iam_policy_args_doc}
/// Arguments for getReusableConfigIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_privateca_v1beta1_get_reusable_config_iam_policy_args_doc}
class GetReusableConfigIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> reusableConfigId;

  /// Creates a new [GetReusableConfigIamPolicyArgs].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [reusableConfigId] Required.
  GetReusableConfigIamPolicyArgs({
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> reusableConfigId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      reusableConfigId = pulumi.Input.asInput<String>(reusableConfigId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'reusableConfigId': reusableConfigId,
    };
  }

  factory GetReusableConfigIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetReusableConfigIamPolicyArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      reusableConfigId: pulumi.Output.create<String>(map['reusableConfigId'] as String),
    );
  }
}

