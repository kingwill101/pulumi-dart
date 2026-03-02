// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigeeregistry_v1_get_artifact_args_doc}
/// Arguments for getArtifact.
/// {@endtemplate}
/// {@macro pulumi_apigeeregistry_v1_get_artifact_args_doc}
class GetArtifactArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> artifactId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> specId;
  final pulumi.Input<String> versionId;

  /// Creates a new [GetArtifactArgs].
  /// [apiId] Required.
  /// [artifactId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [specId] Required.
  /// [versionId] Required.
  GetArtifactArgs({
    required this.apiId,
    required this.artifactId,
    required this.location,
    this.project,
    required this.specId,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'artifactId': artifactId,
      'location': location,
      'project': ?project,
      'specId': specId,
      'versionId': versionId,
    };
  }

  factory GetArtifactArgs.fromMap(Map<String, dynamic> map) {
    return GetArtifactArgs(
      apiId: (map['apiId'] as String).input(),
      artifactId: (map['artifactId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      specId: (map['specId'] as String).input(),
      versionId: (map['versionId'] as String).input(),
    );
  }
}

