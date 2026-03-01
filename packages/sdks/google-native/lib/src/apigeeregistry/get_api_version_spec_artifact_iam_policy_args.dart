// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigeeregistry_v1_get_api_version_spec_artifact_iam_policy_args_doc}
/// Arguments for getApiVersionSpecArtifactIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_apigeeregistry_v1_get_api_version_spec_artifact_iam_policy_args_doc}
class GetApiVersionSpecArtifactIamPolicyArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> artifactId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> specId;
  final pulumi.Input<String> versionId;

  /// Creates a new [GetApiVersionSpecArtifactIamPolicyArgs].
  /// [apiId] Required.
  /// [artifactId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [specId] Required.
  /// [versionId] Required.
  GetApiVersionSpecArtifactIamPolicyArgs({
    required pulumi.Output<String> apiId,
    required pulumi.Output<String> artifactId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> specId,
    required pulumi.Output<String> versionId,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      artifactId = pulumi.Input.asInput<String>(artifactId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      specId = pulumi.Input.asInput<String>(specId),
      versionId = pulumi.Input.asInput<String>(versionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'artifactId': artifactId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'specId': specId,
      'versionId': versionId,
    };
  }

  factory GetApiVersionSpecArtifactIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetApiVersionSpecArtifactIamPolicyArgs(
      apiId: pulumi.Output.create<String>(map['apiId'] as String),
      artifactId: pulumi.Output.create<String>(map['artifactId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      specId: pulumi.Output.create<String>(map['specId'] as String),
      versionId: pulumi.Output.create<String>(map['versionId'] as String),
    );
  }
}

