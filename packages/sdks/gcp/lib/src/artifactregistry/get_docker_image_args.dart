// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_artifactregistry_get_docker_image_get_docker_image_args_doc}
/// Arguments for getDockerImage.
/// {@endtemplate}
/// {@macro pulumi_artifactregistry_get_docker_image_get_docker_image_args_doc}
class GetDockerImageArgs {
  /// The image name to fetch. If no digest or tag is provided, then the latest modified image will be used.
  final pulumi.Input<String> imageName;
  /// The location of the artifact registry.
  final pulumi.Input<String> location;
  /// The project ID in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The last part of the repository name to fetch from.
  final pulumi.Input<String> repositoryId;

  /// Creates a new [GetDockerImageArgs].
  /// [imageName] The image name to fetch. If no digest or tag is provided, then the latest modified image will be used.
  /// [location] The location of the artifact registry.
  /// [project] The project ID in which the resource belongs. If it is not provided, the provider project is used.
  /// [repositoryId] The last part of the repository name to fetch from.
  const GetDockerImageArgs({
    required this.imageName,
    required this.location,
    this.project,
    required this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageName': imageName,
      'location': location,
      'project': ?project,
      'repositoryId': repositoryId,
    };
  }

  factory GetDockerImageArgs.fromMap(Map<String, dynamic> map) {
    return GetDockerImageArgs(
      imageName: pulumi.Input.fromValue(map['imageName'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryId: pulumi.Input.fromValue(map['repositoryId'] as String),
    );
  }
}
