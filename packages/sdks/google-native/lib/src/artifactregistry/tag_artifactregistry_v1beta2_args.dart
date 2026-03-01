// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_artifactregistry_v1beta2_tag_artifactregistry_v1beta2_args_doc}
/// The set of arguments for Tag.
/// {@endtemplate}
/// {@macro pulumi_artifactregistry_v1beta2_tag_artifactregistry_v1beta2_args_doc}
class TagArtifactregistryV1beta2Args {
  final pulumi.Input<String>? location;
  /// The name of the tag, for example: "projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/tags/tag1". If the package part contains slashes, the slashes are escaped. The tag part can only have characters in [a-zA-Z0-9\-._~:@], anything else must be URL encoded.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> packageId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> repositoryId;
  /// The tag id to use for this repository.
  final pulumi.Input<String>? tagId;
  /// The name of the version the tag refers to, for example: "projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/sha256:5243811" If the package or version ID parts contain slashes, the slashes are escaped.
  final pulumi.Input<String>? version;

  /// Creates a new [TagArtifactregistryV1beta2Args].
  /// [location] Optional.
  /// [name] The name of the tag, for example: "projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/tags/tag1". If the package part contains slashes, the slashes are escaped. The tag part can only have characters in [a-zA-Z0-9\-._~:@], anything else must be URL encoded.
  /// [packageId] Required.
  /// [project] Optional.
  /// [repositoryId] Required.
  /// [tagId] The tag id to use for this repository.
  /// [version] The name of the version the tag refers to, for example: "projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/sha256:5243811" If the package or version ID parts contain slashes, the slashes are escaped.
  TagArtifactregistryV1beta2Args({
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> packageId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> repositoryId,
    pulumi.Output<String>? tagId,
    pulumi.Output<String>? version,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      packageId = pulumi.Input.asInput<String>(packageId),
      project = pulumi.Input.asOptionalInput<String>(project),
      repositoryId = pulumi.Input.asInput<String>(repositoryId),
      tagId = pulumi.Input.asOptionalInput<String>(tagId),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'packageId': packageId,
      'project': ?project,
      'repositoryId': repositoryId,
      'tagId': ?tagId,
      'version': ?version,
    };
  }

  factory TagArtifactregistryV1beta2Args.fromMap(Map<String, dynamic> map) {
    return TagArtifactregistryV1beta2Args(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      packageId: pulumi.Output.create<String>(map['packageId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      repositoryId: pulumi.Output.create<String>(map['repositoryId'] as String),
      tagId: map['tagId'] == null ? null : pulumi.Output.create<String>(map['tagId'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

