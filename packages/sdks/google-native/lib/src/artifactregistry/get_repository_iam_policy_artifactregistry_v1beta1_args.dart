// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_artifactregistry_v1beta1_get_repository_iam_policy_artifactregistry_v1beta1_args_doc}
/// Arguments for getRepositoryIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_artifactregistry_v1beta1_get_repository_iam_policy_artifactregistry_v1beta1_args_doc}
class GetRepositoryIamPolicyArtifactregistryV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> repositoryId;

  /// Creates a new [GetRepositoryIamPolicyArtifactregistryV1beta1Args].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [repositoryId] Required.
  GetRepositoryIamPolicyArtifactregistryV1beta1Args({
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'repositoryId': repositoryId,
    };
  }

  factory GetRepositoryIamPolicyArtifactregistryV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetRepositoryIamPolicyArtifactregistryV1beta1Args(
      location: (map['location'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      repositoryId: (map['repositoryId'] as String).input(),
    );
  }
}

