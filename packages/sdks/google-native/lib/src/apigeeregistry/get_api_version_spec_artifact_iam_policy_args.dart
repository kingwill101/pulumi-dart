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
    required this.apiId,
    required this.artifactId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.specId,
    required this.versionId,
  });

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
      apiId: (map['apiId'] as String).input(),
      artifactId: (map['artifactId'] as String).input(),
      location: (map['location'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      specId: (map['specId'] as String).input(),
      versionId: (map['versionId'] as String).input(),
    );
  }
}

