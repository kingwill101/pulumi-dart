// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_v1_get_private_cloud_hcx_activation_key_iam_policy_args_doc}
/// Arguments for getPrivateCloudHcxActivationKeyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_v1_get_private_cloud_hcx_activation_key_iam_policy_args_doc}
class GetPrivateCloudHcxActivationKeyIamPolicyArgs {
  final pulumi.Input<String> hcxActivationKeyId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String> privateCloudId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPrivateCloudHcxActivationKeyIamPolicyArgs].
  /// [hcxActivationKeyId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [privateCloudId] Required.
  /// [project] Optional.
  GetPrivateCloudHcxActivationKeyIamPolicyArgs({
    required this.hcxActivationKeyId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    required this.privateCloudId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hcxActivationKeyId': hcxActivationKeyId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'privateCloudId': privateCloudId,
      'project': ?project,
    };
  }

  factory GetPrivateCloudHcxActivationKeyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateCloudHcxActivationKeyIamPolicyArgs(
      hcxActivationKeyId: (map['hcxActivationKeyId'] as String).input(),
      location: (map['location'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      privateCloudId: (map['privateCloudId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

