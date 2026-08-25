// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_docker_images_docker_image.dart';

/// Result data returned by getDockerImages.
class GetDockerImagesResult {
  /// A list of all retrieved Artifact Registry Docker images. Structure is defined below.
  final List<GetDockerImagesDockerImage>? dockerImages;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? project;
  final String? repositoryId;

  /// Creates a new [GetDockerImagesResult].
  /// [dockerImages] A list of all retrieved Artifact Registry Docker images. Structure is defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [project] Optional.
  /// [repositoryId] Optional.
  const GetDockerImagesResult({
    this.dockerImages,
    this.id,
    this.location,
    this.project,
    this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dockerImages': ?(() { final guardedValue = dockerImages; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDockerImagesDockerImage, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'project': ?project,
      'repositoryId': ?repositoryId,
    };
  }

  factory GetDockerImagesResult.fromMap(Map<String, dynamic> map) {
    return GetDockerImagesResult(
      dockerImages: (() { final guardedValue = map['dockerImages']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDockerImagesDockerImage>(guardedValue, (value) => GetDockerImagesDockerImage.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositoryId: (() { final guardedValue = map['repositoryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
