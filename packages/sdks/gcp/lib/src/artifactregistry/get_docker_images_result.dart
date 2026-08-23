// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_docker_images_docker_image.dart';

/// Result data returned by getDockerImages.
class GetDockerImagesResult {
  /// A list of all retrieved Artifact Registry Docker images. Structure is defined below.
  final List<GetDockerImagesDockerImage> dockerImages;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String? project;
  final String repositoryId;

  /// Creates a new [GetDockerImagesResult].
  /// [dockerImages] A list of all retrieved Artifact Registry Docker images. Structure is defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [project] Optional.
  /// [repositoryId] Required.
  const GetDockerImagesResult({
    required this.dockerImages,
    required this.id,
    required this.location,
    this.project,
    required this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dockerImages': pulumi.Input.encodeList<GetDockerImagesDockerImage, Map<String, dynamic>>(dockerImages, (value) => value.toMap()),
      'id': id,
      'location': location,
      'project': ?project,
      'repositoryId': repositoryId,
    };
  }

  factory GetDockerImagesResult.fromMap(Map<String, dynamic> map) {
    return GetDockerImagesResult(
      dockerImages: pulumi.Input.decodeList<GetDockerImagesDockerImage>(map['dockerImages']!, (value) => GetDockerImagesDockerImage.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: map['location'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositoryId: map['repositoryId'] as String,
    );
  }
}
