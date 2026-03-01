// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privateca_v1_get_ca_pool_iam_policy_args_doc}
/// Arguments for getCaPoolIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_privateca_v1_get_ca_pool_iam_policy_args_doc}
class GetCaPoolIamPolicyArgs {
  final pulumi.Input<String> caPoolId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCaPoolIamPolicyArgs].
  /// [caPoolId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetCaPoolIamPolicyArgs({
    required pulumi.Output<String> caPoolId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      caPoolId = pulumi.Input.asInput<String>(caPoolId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caPoolId': caPoolId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetCaPoolIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetCaPoolIamPolicyArgs(
      caPoolId: pulumi.Output.create<String>(map['caPoolId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

