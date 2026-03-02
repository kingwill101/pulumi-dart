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
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.reusableConfigId,
  });

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
      location: (map['location'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      reusableConfigId: (map['reusableConfigId'] as String).input(),
    );
  }
}

