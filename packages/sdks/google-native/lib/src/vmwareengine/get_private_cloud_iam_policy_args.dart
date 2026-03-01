// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_v1_get_private_cloud_iam_policy_args_doc}
/// Arguments for getPrivateCloudIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_v1_get_private_cloud_iam_policy_args_doc}
class GetPrivateCloudIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String> privateCloudId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPrivateCloudIamPolicyArgs].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [privateCloudId] Required.
  /// [project] Optional.
  GetPrivateCloudIamPolicyArgs({
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    required pulumi.Output<String> privateCloudId,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      privateCloudId = pulumi.Input.asInput<String>(privateCloudId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'privateCloudId': privateCloudId,
      'project': ?project,
    };
  }

  factory GetPrivateCloudIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateCloudIamPolicyArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      privateCloudId: pulumi.Output.create<String>(map['privateCloudId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

