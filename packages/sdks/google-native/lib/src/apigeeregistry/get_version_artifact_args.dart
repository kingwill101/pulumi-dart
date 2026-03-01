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
    required pulumi.Output<String> apiId,
    required pulumi.Output<String> artifactId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> versionId,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      artifactId = pulumi.Input.asInput<String>(artifactId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      versionId = pulumi.Input.asInput<String>(versionId);

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
      apiId: pulumi.Output.create<String>(map['apiId'] as String),
      artifactId: pulumi.Output.create<String>(map['artifactId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      versionId: pulumi.Output.create<String>(map['versionId'] as String),
    );
  }
}

