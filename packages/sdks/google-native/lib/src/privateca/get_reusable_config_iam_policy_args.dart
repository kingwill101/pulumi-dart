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
      location: pulumi.Input.fromValue(map['location'] as String),
      optionsRequestedPolicyVersion: (() { final guardedValue = map['optionsRequestedPolicyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reusableConfigId: pulumi.Input.fromValue(map['reusableConfigId'] as String),
    );
  }
}

