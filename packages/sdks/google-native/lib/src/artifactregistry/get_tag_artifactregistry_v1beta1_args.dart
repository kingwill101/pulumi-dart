// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_artifactregistry_v1beta1_get_tag_artifactregistry_v1beta1_args_doc}
/// Arguments for getTag.
/// {@endtemplate}
/// {@macro pulumi_artifactregistry_v1beta1_get_tag_artifactregistry_v1beta1_args_doc}
class GetTagArtifactregistryV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> packageId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> repositoryId;
  final pulumi.Input<String> tagId;

  /// Creates a new [GetTagArtifactregistryV1beta1Args].
  /// [location] Required.
  /// [packageId] Required.
  /// [project] Optional.
  /// [repositoryId] Required.
  /// [tagId] Required.
  const GetTagArtifactregistryV1beta1Args({
    required this.location,
    required this.packageId,
    this.project,
    required this.repositoryId,
    required this.tagId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'packageId': packageId,
      'project': ?project,
      'repositoryId': repositoryId,
      'tagId': tagId,
    };
  }

  factory GetTagArtifactregistryV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetTagArtifactregistryV1beta1Args(
      location: pulumi.Input.fromValue(map['location'] as String),
      packageId: pulumi.Input.fromValue(map['packageId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryId: pulumi.Input.fromValue(map['repositoryId'] as String),
      tagId: pulumi.Input.fromValue(map['tagId'] as String),
    );
  }
}

