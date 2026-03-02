// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigeeregistry_v1_get_version_artifact_args_doc}
/// Arguments for getVersionArtifact.
/// {@endtemplate}
/// {@macro pulumi_apigeeregistry_v1_get_version_artifact_args_doc}
class GetVersionArtifactArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> artifactId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> versionId;

  /// Creates a new [GetVersionArtifactArgs].
  /// [apiId] Required.
  /// [artifactId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [versionId] Required.
  GetVersionArtifactArgs({
    required this.apiId,
    required this.artifactId,
    required this.location,
    this.project,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'artifactId': artifactId,
      'location': location,
      'project': ?project,
      'versionId': versionId,
    };
  }

  factory GetVersionArtifactArgs.fromMap(Map<String, dynamic> map) {
    return GetVersionArtifactArgs(
      apiId: (map['apiId'] as String).input(),
      artifactId: (map['artifactId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      versionId: (map['versionId'] as String).input(),
    );
  }
}

